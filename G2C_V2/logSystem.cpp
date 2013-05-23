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
    {"testCmps", logCompassCmd},
    {"testAhrs", logAhrsCmd},
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
	entry.Roll   = 2.0;
	entry.Pitch  = 3.0;
	entry.Yaw    = 4.0;
	entry.driftX = 5.0;
	entry.driftY = 6.0;
	entry.driftZ = 7.0;
	entry.magX = 8;
	entry.magY = 9;
	entry.magZ = 10;
	entry.heading = 11.0;
    entry.accX  = 12.0;
    entry.accY  = 13.0;
    entry.accZ  = 14.0;
    entry.gyroX = 15.0;
    entry.gyroY = 16.0;
    entry.gyroZ = 17.0;

	_Console->printf_P(PSTR("logTestCmd :: size of one packet = %d \n"),sizeof(logEntry));
	_Console->printf_P(PSTR("logTestCmd :: packet contents :: \n"));

	//perform test print of packet
	logPrintEntry(entry);

	_Console->print_P(PSTR("\nlogTestCmd :: writing logs."));
	//generate random logs and write them to the dataflash

	for (j = 0; j < 10; j++){
		for (i = 0; i < 32; i++){
			//write one entry
			logWriteEntry(&entry);
		}
		//Start New Log
		_DataFlash.start_new_log();
		//indicate log written
		_Console->print_P(PSTR("."));
	}

	_Console->println();

	//print log overview
	logListCmd(0,(const logMenu::arg *)NULL);


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
	_Console->printf(" offsets : (%.2f, %.2f, %.2f)", offset[0], offset[1], offset[2]);
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
	    _heading = _Compass->calculate_heading(_Ahrs->get_dcm_matrix());
	#if WITH_GPS
	    _GPS->update();
	#endif
		_Ahrs->update();

		//delay TODO: non-blocking delay! (scheduler?)
		delay(200);

	}

	return 0;
}

static int8_t   logEraseCmd(uint8_t argc, const logMenu::arg *argv){
	_Console->print_P(PSTR("logEraseCmd :: erasing flash... "));
	_DataFlash.EraseAll(&delay);
    _Console->print_P(PSTR("complete \n"));
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
        _Console->print_P(PSTR("logPrintCmd :: dumping all\n"));
        //TODO: implement dump all function
        //Log_Read(0, 1, 0);
    } else if ((argc != 2) || (dump_log <= (last_log_num - _DataFlash.get_num_logs())) || (dump_log > last_log_num)) {
        _Console->print_P(PSTR("logPrintCmd :: bad log number\n"));
    } else { //dump log

    	_Console->printf_P(PSTR("logPrintCmd :: dumping log nr %d\n"), dump_log);
    	//get fisrt and last page of log
		_DataFlash.get_log_boundaries(dump_log, dump_log_start, dump_log_end);
		//dump log
		logDumpLogNr(dump_log_start,dump_log_end);
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


void logSlowPeriodic(){

	_Compass->accumulate();
    _Compass->read();
    _heading = _Compass->calculate_heading(_Ahrs->get_dcm_matrix());
#if WITH_GPS
    _GPS->update();
#endif
    //===================
    //gather data
    //===================
    _entry.header = LOG_PACKET_HEADER;
    _entry.time = micros(); //running time in useconds
	//AHRS values
	Vector3f drift  = _Ahrs->get_gyro_drift();
	_entry.Roll   = ToDeg(_Ahrs->roll);
	_entry.Pitch  = ToDeg(_Ahrs->pitch);
	_entry.Yaw    = ToDeg(_Ahrs->yaw);
	_entry.driftX = ToDeg(drift.x);
	_entry.driftY = ToDeg(drift.y);
	_entry.driftZ = ToDeg(drift.z);
	//Compass raw Values
	_entry.magX = _Compass->mag_x;
	_entry.magY = _Compass->mag_y;
	_entry.magZ = _Compass->mag_z;
	_entry.heading = ToDeg(_Compass->calculate_heading(_entry.Roll,_entry.Pitch));
	//IMU raw values
    Vector3f accel = _IMU->get_accel();
    Vector3f gyro = _IMU->get_gyro();
    _entry.accX  = accel.x;
    _entry.accY  = accel.y;
    _entry.accZ  = accel.z;
    _entry.gyroX = gyro.x;
    _entry.gyroY = gyro.y;
    _entry.gyroZ = gyro.z;

    //write log
    logWriteEntry(&_entry);

	//store log here
	logMenu.runOnce();
}

void logFastPeriodic(){
	_Ahrs->update();
}

void logUsDelay(unsigned long us){
	//provide a few us delay for
	delayMicroseconds(us*LOG_DF_DELAY_US);
}

int8_t logInit(FastSerial *port,AP_InertialSensor_MPU6000 *imu, AP_Compass_HMC5843 *compass, AP_AHRS_DCM *ahrs, GPS *gps){

	uint8_t result = LOG_INIT_ERR;

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
    	//start new log
    	_DataFlash.start_new_log();
    	_Console->print_P(PSTR("logInit :: New log started \n"));
    }

    //Print Dataflash Vendor
    logPrintDFVendor();

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


void logPrintDFVendor(){

    // get dataFlash manufacturer info
	_DataFlash.ReadManufacturerID();
	//wait for read to finish
    delay(10);
    //print result
    _Console->print_P(PSTR("logPrintDFVendor -> Manufacturer:"));
    _Console->print(int(_DataFlash.df_manufacturer));
    _Console->print_P(PSTR(","));
    _Console->print(_DataFlash.df_device);
    _Console->println();

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

	//TODO :  error check / protect?
	uint16_t i;
	byte *bytePtr = (byte *)&entry;

	//print header
	for(i=0; i<4; i++){
		_Console->printf("%c",(char)bytePtr[i]);
	}
	_Console->printf("%c",';');
	//print time
	_Console->printf("%lu;",entry.time);
	//print AHRS data
	_Console->printf("%4.4f;%4.4f;%4.4f;",
			entry.Roll,
			entry.Pitch,
			entry.Yaw);
	//print AHRS drift
	_Console->printf("%4.4f;%4.4f;%4.4f;",
			entry.driftX,
			entry.driftY,
			entry.driftZ);
	//print raw Compass Data
	_Console->printf("%d;%d;%d;%4.4f;",
			entry.magX,
			entry.magY,
			entry.magZ,
			entry.heading);
	//print raw acceleration data (IMU)
	_Console->printf("%4.4f;%4.4f;%4.4f;",
		    entry.accX,
		    entry.accY,
		    entry.accZ);
	//print raw gyroscope data (IMU)
	_Console->printf("%4.4f;%4.4f;%4.4f;",
		    entry.gyroX,
		    entry.gyroY,
		    entry.gyroZ);

	_Console->println();

}

void logDumpLogNr(int16_t startPage,int16_t endPage){

	uint16_t nrPages = 0;
	uint16_t nrEntries = 0;
	uint16_t i=0;

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

	_Console->printf_P(PSTR("logHead;Time;Roll;Pitch;Yaw;DriftX;DriftY;DriftZ;MagX;MagY;MagZ;Heading;AccX;AccY;AccZ;GyroX;GyroY;GyroZ;\n"));

	//read all the packets
	for(i=0;i<nrEntries;i++){
		logPrintEntry(logReadEntry());
	}

}



