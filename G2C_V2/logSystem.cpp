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
#include <Fast_Console->h>

//logger system and menu
#include "logSystem.h"
#include "logMenu.h"

//compass libraries
#include <AP_Compass_HMC5843.h>
#include <Compass.h>
#include <AP_Compass.h>
#include <AP_Compass_HIL.h>

//IMU libraries
#include <AP_InertialSensor_Oilpan.h>
#include <AP_InertialSensor_Stub.h>
#include <AP_InertialSensor.h>
#include <AP_InertialSensor_MPU6000.h>

//dataflash libraries
#include <DataFlash.h>


//TODO: Finish class definition!!!!
//==================================================================================
// Log System Statics
//==================================================================================

// A Macro to create the Log System Menu
LOG_MENU(logSystem,_logSysMenu, "Log", logMenuCommands, logPrintMenu);
//Instantiation of dataflash object
DataFlash_APM2 logSystem::DataFlash;
//FastSerial port to run on
FastSerial   logSystem::*_Console;


//==================================================================================
// Constructor
//==================================================================================
logSystem::logSystem(const prog_char *prompt, const logMenu::command *commands, uint8_t entries, preprompt ppfunc) :
    _prompt(prompt),
    _commands(commands),
    _entries(entries),
    _ppfunc(ppfunc)
{
	_curLength = 0;
}


//===================================================================
//	Log Menu Function Implementations
//===================================================================

//attempt to write a few logs to the dataflash, and read them back
//show progress in terminal
static int8_t   logTestCmd(uint8_t argc, const logMenu::arg *argv){

	uint8_t i,j;
	logEntry entry;
	entry.header = LOG_PACKET_HEADER;

	_Console->printf_P(PSTR("logTestCmd :: size of one packet = %d \n"),sizeof(logEntry));
	_Console->print_P(PSTR("logTestCmd :: writing logs."));
	//generate random logs and write them to the dataflash

	for (j = 0; j < 10; j++){
		for (i = 0; i < 32; i++){
			//write one entry
			logWriteEntry(&entry);
		}
		//Start New Log
		DataFlash.start_new_log();
		//indicate log written
		_Console->print_P(PSTR("."));
	}

	_Console->println();

	//print log overview
	logLogsCmd(0,(const logMenu::arg *)NULL);


	return 0;
}


static int8_t   logEraseCmd(uint8_t argc, const logMenu::arg *argv){
	_Console->print_P(PSTR("logEraseCmd :: erasing dataflash... "));
	DataFlash.EraseAll(&delay);
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
    last_log_num = DataFlash.find_last_log();

    if (dump_log <= 0) {
        _Console->print_P(PSTR("logPrintCmd :: dumping all\n"));
        //TODO: implement dump all function
        //Log_Read(0, 1, 0);
    } else if ((argc != 2) || (dump_log <= (last_log_num - DataFlash.get_num_logs())) || (dump_log > last_log_num)) {
        _Console->print_P(PSTR("logPrintCmd :: bad log number\n"));
    } else { //dump log

    	_Console->printf_P(PSTR("logPrintCmd :: dumping log nr %d\n"), dump_log);
    	//get fisrt and last page of log
		DataFlash.get_log_boundaries(dump_log, dump_log_start, dump_log_end);
		//dump log
		logDumpLogNr(dump_log_start,dump_log_end);
		//indicate end
		_Console->printf_P(PSTR("\nlogPrintCmd :: Done\n"));
    }

    //TODO : build actual return value
    return (0);

}

static int8_t logLogsCmd(uint8_t argc, const logMenu::arg *argv){

	int16_t log_start;
	int16_t log_end;
	uint16_t temp;
	uint16_t last_log_num = DataFlash.find_last_log();
	int16_t last_log_start = log_start, last_log_end = log_end;
	uint16_t num_logs = DataFlash.get_num_logs();

	_Console->printf("logLogsCmd :: printing log list... \n");

	if (num_logs == 0) {
		_Console->print_P(PSTR("\nNo logs\n\n"));
	}else{
		_Console->printf_P(PSTR("\n%u logs\n"), (unsigned)num_logs);

		for(int16_t i=num_logs; i>=1; i--) {
			//update state
			last_log_start = log_start, last_log_end = log_end;
			temp = last_log_num-i+1;
			//get log boundaries
			DataFlash.get_log_boundaries(temp, log_start, log_end);
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



//===================================================================
//	Public LOG system function implementations
//===================================================================


void logMenuPeriodicCall(){
	_logSysMenu.runOnce();
}

void logUsDelay(unsigned long us){
	//provide a few us delay for
	delayMicroseconds(us*LOG_DF_DELAY_US);
}

int8_t logInit(){

	uint8_t result = LOG_INIT_ERR;

	//initialize dataflash
	_Console->print_P(PSTR("logInit :: initializing flash... "));
    DataFlash.Init();
    _Console->print_P(PSTR("done \n"));

    if (DataFlash.CardInserted()) {
    	//if dataflash is unformatted erase all
    	if (DataFlash.NeedErase()) {
    		_Console->print_P(PSTR("logInit :: erase needed, erasing dataflash... "));
    		DataFlash.EraseAll(&logUsDelay);
    	    _Console->print_P(PSTR("complete \n"));
    	}
    	//start new log
    	DataFlash.start_new_log();
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
	DataFlash.ReadManufacturerID();
	//wait for read to finish
    delay(10);
    //print result
    _Console->print_P(PSTR("logPrintDFVendor -> Manufacturer:"));
    _Console->print(int(DataFlash.df_manufacturer));
    _Console->print_P(PSTR(","));
    _Console->print(DataFlash.df_device);
    _Console->println();

}

// Write a log packet.
void logWriteEntry(logEntry *entry)
{
	//TODO :  error check / protect?
	uint8_t i;
	byte *bytePtr = (byte *)entry;

	for(i=0; i<sizeof(logEntry); i++){
		DataFlash.WriteByte(bytePtr[i]);
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
		bytePtr[i] = DataFlash.ReadByte();
	}

    return entry;
}

//print log entry
void logPrintEntry(logEntry entry){

	//TODO :  error check / protect?
	uint16_t i;
	byte *bytePtr = (byte *)&entry;

	for(i=0; i<4; i++){
		_Console->printf("%c",(char)bytePtr[i]);
	}
	for(i=0; i<sizeof(logEntry)-4; i++){
		_Console->print(".");
	}
	_Console->println();

}

void logDumpLogNr(int16_t startPage,int16_t endPage){

	uint16_t nrPages = 0;
	uint16_t nrEntries = 0;
	uint16_t i=0;

	//determine number of log pages
	if(endPage < startPage){ //if log is wrapped around end of memory
		nrPages = (DataFlash.df_NumPages - startPage) + endPage + 1;
	} else {
		nrPages = 1 + endPage - startPage;
	}

	//determine total number of entries
	nrEntries = (nrPages * (DataFlash.df_PageSize - 4)) / sizeof(logEntry);
	_Console->printf_P(PSTR("logDumpLogNr :: log has %d pages and %d entries\n"),nrPages,nrEntries);
	//initiate reading
	DataFlash.StartRead(startPage);
	//read all the packets
	for(i=0;i<nrEntries;i++){
		logPrintEntry(logReadEntry());
	}

}


