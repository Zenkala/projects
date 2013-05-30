//==================================================================================
// Project Logger by Tom Vocke, 02-05-2013
//==================================================================================

/*
This project is intented to provide logging capabilities on the internal dataflash
of the ArduPilot Mega. It provides functions for storing, and retreiving sensor logs
via a serial interface, and makes use of the standard ArduPilot libraries.
*/

//==================================================================================
// Includes
//==================================================================================

//fastserial libraries
#include <FastSerial.h>

#include <Arduino.h>
#include <limits.h>

//logger system and menu
#include "logSystem.h"
#include "logMenu.h"
#include "imuMenu.h"


//compass libraries
#include <AP_Compass_HMC5843.h>
#include <Compass.h>
#include <AP_Compass.h>
#include <AP_Compass_HIL.h>
#include <I2C.h>

//IMU libraries
#include <AP_InertialSensor_Oilpan.h>
#include <AP_InertialSensor_Stub.h>
#include <AP_InertialSensor.h>
#include <AP_InertialSensor_MPU6000.h>

//dataflash libraries
#include <DataFlash.h>

//AHRS libraries
#include <AP_GPS.h>
#include <AP_AHRS.h>
#include <AP_Math.h>
#include <AP_Airspeed.h>
#include <AP_AnalogSource.h>
#include <AP_Baro.h>
#include <Filter.h>
#include "parameters.h"

//====================================================================
// Definitions
//====================================================================
#define toInt16(x) ((x)>=0?(int16_t)((x)+0.5):(int16_t)((x)-0.5))
#define toIntDeg(x,y) (toInt16(y*ToDeg(x)))

//==================================================================================
// Function Prototypes
//==================================================================================
// Code to Write and Read packets from DataFlash log memory
// Code to interact with the user to dump or erase logs

// These are function definitions so the Menu can be constructed before the functions
// are defined below. Order matters to the compiler.
static bool     logPrintMenu(void){return true;};
//writes a number of logs to the dataflash, and reads them back
static int8_t   logTestCmd(uint8_t argc, const logMenu::arg *argv);
//erase the dataflash
static int8_t   logEraseCmd(uint8_t argc, const logMenu::arg *argv);
//dump contents of log Nr X, if X <= 0, dump all
static int8_t   logPrintCmd(uint8_t argc, const logMenu::arg *argv);
//print an overview of the available logs on the dataflash
static int8_t   logListCmd(uint8_t argc, const logMenu::arg *argv);
//provide a few commands to calibrate and test the IMU sensor
static int8_t   logImuCmd(uint8_t argc, const logMenu::arg *argv);
//display a compass reading over the serial connection
static int8_t   logCompassCmd(uint8_t argc, const logMenu::arg *argv);
//provide a test command for the AHRS system
static int8_t   logAhrsCmd(uint8_t argc, const logMenu::arg *argv);
//prints a report of important timing characteristics
static int8_t   logProfileCmd(uint8_t argc, const logMenu::arg *argv);

//Instantiate serial menu
// Creates a constant array of structs representing menu options
// and stores them in Flash memory, not RAM.
// User enters the string in the console to call the functions on the right.
// See class Menu in AP_Common for implementation details
const struct logMenu::command logMenuCommands[] PROGMEM = {
    {"erase", logEraseCmd},
    {"print", logPrintCmd},
    {"list", logListCmd},
    {"test", logTestCmd},
    {"imuCMD", logImuCmd},
    {"compass", logCompassCmd},
    {"ahrs", logAhrsCmd},
    {"profile", logProfileCmd},
};


//==================================================================================
// Menu and Dataflash Instance
//==================================================================================

// A Macro to create the Menu
LOG_MENU(logMenu, "Log", logMenuCommands, logPrintMenu);

//Instantiate dataflash object
DataFlash_APM2 _DataFlash;
imuMenu _imuMenu;
//Sensor/interface and AHRS pointers
AP_Compass_HMC5843 *_Compass;
AP_InertialSensor_MPU6000 *_IMU;
FastSerial *_Console;
AP_AHRS_DCM  *_Ahrs;
GPS *_GPS;
float _heading = 0.0;
static logEntry _entry;
int16_t _enableLog = LOGGING_DISABLED;
bool _runLastTime = false;

//profiling system
unsigned long _startTimes[LOG_NR_TIMESTAMPS];
unsigned long _stopTimes[LOG_NR_TIMESTAMPS];
unsigned long _avgTimes[LOG_NR_TIMESTAMPS];
unsigned long _minTimes[LOG_NR_TIMESTAMPS];
unsigned long _maxTimes[LOG_NR_TIMESTAMPS];
unsigned long _timeCnt[LOG_NR_TIMESTAMPS];

//===================================================================
//	Log Menu Function Implementations
//===================================================================

//attempt to write a few logs to the dataflash, and read them back
//show progress in terminal
static int8_t   logTestCmd(uint8_t argc, const logMenu::arg *argv){

	uint8_t i,j;
	logEntry entry;

	//=======================
	//build test packet
	//=======================
	entry.header = LOG_PACKET_HEADER;
    entry.time = 1;
	entry.roll   = 2;
	entry.pitch  = 3;
	entry.yaw    = 4;
	entry.driftX = 5;
	entry.driftY = 6;
	entry.driftZ = 7;
	//entry.magX = 8;
	//entry.magY = 9;
	//entry.magZ = 10;
	entry.heading = 11;
    entry.accX  = 12;
    entry.accY  = 13;
    entry.accZ  = 14;
    entry.gyroX = 15;
    entry.gyroY = 16;
    entry.gyroZ = 17;
    entry.rightWingPWM = 18;
    entry.leftWingPWM = 19;
    entry.tailPWM = 20;
    entry.curThrottle = 21;

	_Console->printf_P(PSTR("logTestCmd :: size of one packet = %d \n"),sizeof(logEntry));
	_Console->printf_P(PSTR("logTestCmd :: packet contents :: \n"));

	//perform test print of packet
	logPrintEntry(entry);

	_Console->print_P(PSTR("\nlogTestCmd :: writing logs."));
	//generate random logs and write them to the dataflash

	for (j = 0; j < 10; j++){

		//Start New Log, and store log number
		_DataFlash.start_new_log();
		//write 32 log entries
		for (i = 0; i < 32; i++){
			//write one entry
			logWriteEntry(&entry);
		}
		//indicate log written
		_Console->print_P(PSTR("."));
	}

	_Console->println();

	//print log overview
	logListCmd(0,(const logMenu::arg *)NULL);


	return 0;
}

//prints a report of important timing characteristics
static int8_t   logProfileCmd(uint8_t argc, const logMenu::arg *argv){

	//print timing profile of system
	_Console->printf("--------------------------------------------- \n");
	_Console->printf("Timer   | min... | max... | avg... | cnt... | \n");
	_Console->printf("--------------------------------------------- \n");
	_Console->printf("AHRS    | %6lu | %6lu | %6lu | %6lu | \n",
										_minTimes[AHRS_TIMER],
										_maxTimes[AHRS_TIMER],
										_avgTimes[AHRS_TIMER],
										_timeCnt[AHRS_TIMER]);
	_Console->printf("LOGGING | %6lu | %6lu | %6lu | %6lu | \n",
										_minTimes[LOG_TIMER],
										_maxTimes[LOG_TIMER],
										_avgTimes[LOG_TIMER],
										_timeCnt[LOG_TIMER]);
	_Console->printf("COMPASS | %6lu | %6lu | %6lu | %6lu | \n",
										_minTimes[COMPASS_TIMER],
										_maxTimes[COMPASS_TIMER],
										_avgTimes[COMPASS_TIMER],
										_timeCnt[COMPASS_TIMER]);
	_Console->printf("MENU    | %6lu | %6lu | %6lu | %6lu | \n",
										_minTimes[MENU_TIMER],
										_maxTimes[MENU_TIMER],
										_avgTimes[MENU_TIMER],
										_timeCnt[MENU_TIMER]);
	_Console->printf("LP-FREQ | %6lu | %6lu | %6lu | %6lu | \n",
										_minTimes[LOOP_TIMER],
										_maxTimes[LOOP_TIMER],
										_avgTimes[LOOP_TIMER],
										_timeCnt[LOOP_TIMER]);
	_Console->printf("LP-TIME | %6lu | %6lu | %6lu | %6lu | \n",
										_minTimes[LOOP2_TIMER],
										_maxTimes[LOOP2_TIMER],
										_avgTimes[LOOP2_TIMER],
										_timeCnt[LOOP2_TIMER]);
	_Console->printf("--------------------------------------------- \n");

	return 0;
}

static int8_t   logCompassCmd(uint8_t argc, const logMenu::arg *argv)
{
    static float min[3], max[3], offset[3];
    float heading;

    _Compass->read();

	if (!_Compass->healthy) {
		_Console->println("logCompassCmd :: Compass not healthy");
		return -1;
	}

	heading = _Compass->calculate_heading(0,0); // roll = 0, pitch = 0 for this example
	_Compass->null_offsets();

	// capture min
	if( _Compass->mag_x < min[0] ){	min[0] = _Compass->mag_x; }
	if( _Compass->mag_y < min[1] ){	min[1] = _Compass->mag_y; }
	if( _Compass->mag_z < min[2] ){	min[2] = _Compass->mag_z; }
	// capture max
	if( _Compass->mag_x > max[0] ){	max[0] = _Compass->mag_x; }
	if( _Compass->mag_y > max[1] ){	max[1] = _Compass->mag_y; }
	if( _Compass->mag_z > max[2] ){	max[2] = _Compass->mag_z; }
	// calculate offsets
	offset[0] = -(max[0]+min[0])/2;
	offset[1] = -(max[1]+min[1])/2;
	offset[2] = -(max[2]+min[2])/2;

	// display all to user
	_Console->printf("logCompassCmd :: heading: %.2f (%3d,%3d,%3d) ", ToDeg(heading),
				  _Compass->mag_x,
				  _Compass->mag_y,
				  _Compass->mag_z);

	// display offsets
	_Console->printf(" offsets : (%.2f, %.2f, %.2f)", (double)offset[0], (double)offset[1], (double)offset[2]);
	_Console->println();

	return 0;

}

static int8_t   logAhrsCmd(uint8_t argc, const logMenu::arg *argv){

	while (!_Console->available()){

		//print _Ahrs state
		Vector3f drift  = _Ahrs->get_gyro_drift();
		_Console->printf_P(PSTR("logAhrsCmd :: r:%4.1f  p:%4.1f y:%4.1f drift=(%5.1f %5.1f %5.1f) hdg=%.1f \n"),
						ToDeg(_Ahrs->roll),
						ToDeg(_Ahrs->pitch),
						ToDeg(_Ahrs->yaw),
						ToDeg(drift.x),
						ToDeg(drift.y),
						ToDeg(drift.z),
						_Compass->use_for_yaw() ? ToDeg(_heading) : 0.0);

		//get new readings
		_Compass->accumulate();
	    _Compass->read();
		_Ahrs->update();

		//delay TODO: non-blocking delay! (scheduler?)
		delay(200);

	}

	return 0;
}

static int8_t   logEraseCmd(uint8_t argc, const logMenu::arg *argv){

	//disable logging
	_enableLog = LOGGING_DISABLED;
	_Console->print_P(PSTR("logEraseCmd :: disabled logging / restart to re-enable \n"));
	//erase flash
	_Console->print_P(PSTR("logEraseCmd :: erasing flash... "));
	_DataFlash.EraseAll(&logUsDelay);
    _Console->print_P(PSTR("done \n"));

	return 0;
}

static int8_t   logPrintCmd(uint8_t argc, const logMenu::arg *argv){

	uint16_t dump_log;
    int16_t dump_log_start;
    int16_t dump_log_end;
    uint16_t last_log_num;

     // check that the requested log number can be read
    dump_log = argv[1].i;
    last_log_num = _DataFlash.find_last_log();

    if (dump_log <= 0) {
        _Console->print_P(PSTR("logPrintCmd :: dumping all (not yet implemented)\n"));
        //TODO: implement dump all function
        //Log_Read(0, 1, 0);
    } else if ((argc != 2) || (dump_log <= (last_log_num - _DataFlash.get_num_logs())) || (dump_log > last_log_num)) {
        _Console->print_P(PSTR("logPrintCmd :: bad log number\n"));
    } else { //dump log

    	_Console->printf_P(PSTR("logPrintCmd :: dumping log nr %d\n"), dump_log);
    	//get fisrt and last page of log
		_DataFlash.get_log_boundaries(dump_log, dump_log_start, dump_log_end);
		//dump log
		logDumpLogNr(dump_log_start,dump_log_end,dump_log);
		//indicate end
		_Console->printf_P(PSTR("\nlogPrintCmd :: done\n"));
    }

    //TODO : build actual return value
    return (0);

}

static int8_t logListCmd(uint8_t argc, const logMenu::arg *argv){

	int16_t log_start;
	int16_t log_end;
	uint16_t temp;
	uint16_t last_log_num = _DataFlash.find_last_log();
	int16_t last_log_start = log_start, last_log_end = log_end;
	uint16_t num_logs = _DataFlash.get_num_logs();

	_Console->printf("logListCmd :: printing log list... \n");

	if (num_logs == 0) {
		_Console->print_P(PSTR("\nNo logs\n\n"));
	}else{
		_Console->printf_P(PSTR("\n%u logs\n"), (unsigned)num_logs);

		for(int16_t i=num_logs; i>=1; i--) {
			//update state
			last_log_start = log_start, last_log_end = log_end;
			temp = last_log_num-i+1;
			//get log boundaries
			_DataFlash.get_log_boundaries(temp, log_start, log_end);
			//print log overview
			_Console->printf_P(PSTR("Log %04d [start %04d || end %04d] \n"), (int)temp, (int)log_start, (int)log_end);
			if (last_log_start == log_start && last_log_end == log_end) {
				// we are printing bogus logs
				break;
			}
		}
		_Console->println();
	}

	return 0;
}

//provide a few commands to calibrate and test the IMU sensor
static int8_t   logImuCmd(uint8_t argc, const logMenu::arg *argv){

	char cmd = argv[1].str[0]; //get first character of string argument
	_Console->printf("logImuCmd :: parsing %c.. \n",cmd);

	_imuMenu.parseInput((int16_t)cmd);

	return 0;
}



//===================================================================
//	Public LOG system function implementations
//===================================================================

//call periodically to keep serial console alive. Every call will produce a
//log on the dataflash
void logWriteLog(int16_t rightWingPWM,int16_t leftWingPWM,int16_t tailPWM,int16_t curThrottle){

    if(_enableLog == LOGGING_ENABLED){
    	//===================
		//gather data
		//===================
		_entry.header = LOG_PACKET_HEADER;
		_entry.time = micros(); //running time in useconds
		//AHRS values
		Vector3f drift  = _Ahrs->get_gyro_drift();
		_entry.roll   = toIntDeg(_Ahrs->roll,100);
		_entry.pitch  = toIntDeg(_Ahrs->pitch,100);
		_entry.yaw    = toIntDeg(_Ahrs->yaw,100);
		_entry.driftX = toIntDeg(drift.x,1000);
		_entry.driftY = toIntDeg(drift.y,1000);
		_entry.driftZ = toIntDeg(drift.z,1000);
		//Compass Heading Value
		_entry.heading = toInt16(100*ToDeg(_Compass->calculate_heading(_Ahrs->get_dcm_matrix())));
		//IMU raw values
		Vector3f accel = _IMU->get_accel();
		Vector3f gyro = _IMU->get_gyro();
		_entry.accX  = toInt16(100*accel.x);
		_entry.accY  = toInt16(100*accel.y);
		_entry.accZ  = toInt16(100*accel.z);
		_entry.gyroX = toIntDeg(gyro.x,100);
		_entry.gyroY = toIntDeg(gyro.y,100);
		_entry.gyroZ = toIntDeg(gyro.z,100);
		//servo / throttle outputs
		_entry.rightWingPWM = rightWingPWM;
		_entry.leftWingPWM = leftWingPWM;
		_entry.tailPWM = tailPWM;
		_entry.curThrottle = curThrottle;

		//write log
		logWriteEntry(&_entry);
    }//end active log check

}

//keep kalman filter up to date
void logFastPeriodic(){
	logWriteStartTime(AHRS_TIMER);
	_Ahrs->update();
	logWriteStopTime(AHRS_TIMER);
}

//keep kalman filter up to date
void logSlowPeriodic(int16_t rightWingPWM,int16_t leftWingPWM,int16_t tailPWM,int16_t curThrottle){

	//update loop frequency timer
	logWriteStopTime(LOOP_TIMER);
	logWriteStartTime(LOOP_TIMER);
	//update compass
	logWriteStartTime(COMPASS_TIMER);
	_Compass->accumulate();
	_Compass->read();
	logWriteStopTime(COMPASS_TIMER);
	//store log and keep menu alive
	if(!_runLastTime){
		//write log
		logWriteStartTime(LOG_TIMER);
		logWriteLog(rightWingPWM,leftWingPWM,tailPWM,curThrottle);
		logWriteStopTime(LOG_TIMER);
		//keep menu alive
		logWriteStartTime(MENU_TIMER);
		logMenu.runOnce();
		logWriteStopTime(MENU_TIMER);
		_runLastTime = true;
	} else {
		//Serial.printf("System :: skipped log\n");
		_runLastTime = false;
	}

}

void logWriteStartTime(uint8_t stampNr){
	_startTimes[stampNr] = micros();
}

void logWriteStopTime(uint8_t stampNr){
	_stopTimes[stampNr] = micros();
	logUpdateTimestamp(stampNr);
}

//calculate new time-profiling data
void logUpdateTimestamp(uint8_t stampNr){

	unsigned long time = _avgTimes[stampNr];
	unsigned long cnt = (_timeCnt[stampNr]-LOG_SKIP_INITIAL_CNT);

	//disable if too many times have been written
	if(_timeCnt[stampNr] < LOG_MAX_TIMESTAMPS && _timeCnt[stampNr] >= LOG_SKIP_INITIAL_CNT){

		//calculate new time
		if(_startTimes[stampNr] < _stopTimes[stampNr]){ //normal case
			time = _stopTimes[stampNr] - _startTimes[stampNr];
		} else {
			time = (ULONG_MAX-_startTimes[stampNr]) + _stopTimes[stampNr];
		}

		//store new average time
		_avgTimes[stampNr] = ((cnt * _avgTimes[stampNr]) + time) / (cnt + 1);
		//store new minimum time
		_minTimes[stampNr] = (time < _minTimes[stampNr]) ? time : _minTimes[stampNr];
		//store new maximum time
		_maxTimes[stampNr] = (time > _maxTimes[stampNr]) ? time : _maxTimes[stampNr];

	//initialize average to a realistic value
	}

	_timeCnt[stampNr]++;

}

void logUsDelay(unsigned long us){
	//provide a few us delay for
	//_Console->print(".");
	delayMicroseconds(us*LOG_DF_DELAY_US);
}

int8_t logInit(FastSerial *port,AP_InertialSensor_MPU6000 *imu, AP_Compass_HMC5843 *compass, AP_AHRS_DCM *ahrs, GPS *gps){

	uint8_t result = LOG_INIT_ERR;
	uint8_t i = 0;

	//store sensor and interface pointers
	_Console = port;
	_IMU = imu;
	_Compass = compass;
	_Ahrs = ahrs;
	_GPS = gps;
	//initialize imuMenu
	_imuMenu.imuInit(imu,port);


	//initialize dataflash
	_Console->print_P(PSTR("logInit :: initializing flash... "));
    _DataFlash.Init();
    _Console->print_P(PSTR("done \n"));

    if (_DataFlash.CardInserted()) {
    	//if dataflash is unformatted erase all
    	if (_DataFlash.NeedErase()) {
    		_Console->print_P(PSTR("logInit :: erase needed, erasing _DataFlash... "));
    		_DataFlash.EraseAll(&logUsDelay);
    	    _Console->print_P(PSTR("complete \n"));
    	}
    	//start new log, and store log number
    	_DataFlash.start_new_log();
    	_enableLog = LOGGING_ENABLED;
		_Console->print_P(PSTR("logInit :: New log started \n"));
    }

    //initialize time-profiling variables (clear)
    for(i=0;i<LOG_NR_TIMESTAMPS; i++){
    	_startTimes[i] = 0;
    	_stopTimes[i] = 0;
    	_avgTimes[i] = 0;
    	_minTimes[i] = ULONG_MAX;
    	_maxTimes[i] = 0;
    	_timeCnt[i] = 0;
    }

	//initialize serial interface
	_Console->print_P(PSTR("logInit :: initializing terminal... "));
    logMenu::set_port(&Serial);
    _Console->set_blocking_writes(true);
    _Console->print_P(PSTR("done \n"));

    //Print initial log terminal indicator
    _Console->println();
    _Console->printf_P(PSTR("Log >> "));

    //return OK
    result = LOG_INIT_OK;
    return result;
}





// Write a log packet.
void logWriteEntry(logEntry *entry)
{
	//TODO :  error check / protect?
	uint8_t i;
	byte *bytePtr = (byte *)entry;

	for(i=0; i<sizeof(logEntry); i++){
		_DataFlash.WriteByte(bytePtr[i]);
	}

}

// Read a log packet
logEntry logReadEntry()
{

	//TODO : error check / protect?
	uint8_t i;
	logEntry entry;
	byte *bytePtr = (byte *)&entry;

	for(i=0; i<sizeof(logEntry); i++){
		bytePtr[i] = _DataFlash.ReadByte();
	}

	return entry;
}

//print log entry
void logPrintEntry(logEntry entry){

	//print header, logNr and time
	_Console->printf("%u;%lu;",
			entry.header,
			entry.time);
	//print AHRS data
	_Console->printf("%d;%d;%d;",
			entry.roll,
			entry.pitch,
			entry.yaw);
	//print AHRS drift
	_Console->printf("%d;%d;%d;",
			entry.driftX,
			entry.driftY,
			entry.driftZ);
	//print raw Compass Data
	_Console->printf("%d;",entry.heading);
	//print raw acceleration data (IMU)
	_Console->printf("%d;%d;%d;",
		    entry.accX,
		    entry.accY,
		    entry.accZ);
	//print raw gyroscope data (IMU)
	_Console->printf("%d;%d;%d;",
		    entry.gyroX,
		    entry.gyroY,
		    entry.gyroZ);
	//print steering values
	_Console->printf("%d;%d;%d;%d;",
		    entry.rightWingPWM,
			entry.leftWingPWM,
			entry.tailPWM,
			entry.curThrottle);

	_Console->println();

}

void logDumpLogNr(int16_t startPage,int16_t endPage, int16_t logNr){

	uint16_t nrPages = 0;
	uint16_t nrEntries = 0;
	uint16_t i=0;
	logEntry entry;

	//determine number of log pages
	if(endPage < startPage){ //if log is wrapped around end of memory
		nrPages = (_DataFlash.df_NumPages - startPage) + endPage + 1;
	} else {
		nrPages = 1 + endPage - startPage;
	}

	//determine total number of entries
	nrEntries = (nrPages * (_DataFlash.df_PageSize - 4)) / sizeof(logEntry);
	_Console->printf_P(PSTR("logDumpLogNr :: log has %d pages and %d entries\n"),nrPages,nrEntries);
	//initiate reading
	_DataFlash.StartRead(startPage);

	_Console->printf_P(PSTR("logHead;Time;Roll;Pitch;Yaw;DriftX;DriftY;DriftZ;Heading;AccX;AccY;AccZ;GyroX;GyroY;GyroZ;rwPWM;lwPWM;tailPWM;Throttle;"));
	_Console->println();
	//read all the packets
	for(i=0;i<nrEntries;i++){
		//get log entry
		entry = logReadEntry();
		//check wheter entry is valid and belongs to current log
		if(entry.header == LOG_PACKET_HEADER){
			logPrintEntry(entry);
		}
	}

}



