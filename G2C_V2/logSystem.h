//==================================================================================
// Project Logger by Tom Vocke, 02-05-2013
//==================================================================================

/*
This project is intented to provide logging capabilities on the internal dataflash
of the ArduPilot Mega. It provides functions for storing, and retreiving sensor logs
via a serial interface, and makes use of the standard ArduPilot libraries.
*/

//guard
#ifndef _LOG_SYSTEM_H
#define _LOG_SYSTEM_H
//==================================================================================
// Includes
//==================================================================================

//fastserial libraries
#include <FastSerial.h>

//dataflash libraries
#include <DataFlash.h>

// Common dependencies
#include <AP_Common.h>
#include "logMenu.h"


//==================================================================================
//Definitions
//==================================================================================

//  Choose the logs to enable (1) = enable, (0) = disable
#define EN_IMU_LOG 		(1)
#define EN_COMPASS_LOG	(1)
#define EN_THROTTLE_LOG	(1)
#define EN_GPS_LOG		(1)

//log packet header ("head" in hex)
#define LOG_PACKET_HEADER (0x64616568)

//return value definitions
#define LOG_INIT_OK (0)
#define LOG_INIT_ERR (1)

//enable log system
#define LOGGING_ENABLED (1)

//dataflash handling delay when erasing
#define LOG_DF_DELAY_US (1)

//==================================================================================
// Class Definition
//==================================================================================

/// Class defining and handling one menu tree
class logSystem {
public:

	//constructor
	logSystem();

	//==================================================================================
	// Menu Function Prototypes
	//==================================================================================
	//dummy, remainder of re-use of library AP_Menu
	static bool     logPrintMenu(void){return true;};
	//writes a number of logs to the dataflash, and reads them back
	static int8_t   logTestCmd(uint8_t argc, const logMenu::arg *argv);
	//erase the dataflash entirely
	static int8_t   logEraseCmd(uint8_t argc, const logMenu::arg *argv);
	//dump contents of log Nr X, if X <= 0, dump all
	static int8_t   logPrintCmd(uint8_t argc, const logMenu::arg *argv);
	//print an overview of the available logs on the dataflash
	static int8_t   logLogsCmd(uint8_t argc, const logMenu::arg *argv);

	//==================================================================================
	// Type Definitions
	//==================================================================================
	//Log entry type definition
	typedef struct logEntry {
	    uint32_t header;
	    //TODO : remove filler and choose proper variables
	    uint8_t filler[64];
	} logEntry;

	//==================================================================================
	// Public Function Prototypes
	//==================================================================================

	//initialize necessary interface for dataflash logging
	int8_t logInit(FastSerial *port);
	//test the dataflash
	void logPrintDFVendor(void);
	//write a block of data to the dataflash
	void logWriteBlock(const void *pBuffer, uint16_t size);
	//keep the menu alive by calling this function periodically
	void logMenuPeriodicCall(void);
	// Write a log packet
	static void logWriteEntry(logEntry *entry);
	// Read a log packet
	logEntry logReadEntry();
	// Print a log packet over the serial connection
	void logPrintEntry(logEntry entry);
	// Dumps a log on given pages over the serial port
	static void logDumpLogNr(int16_t startPage,int16_t endPage);
	//provide delay function for LOG_DF_DELAY_US * us
	void logUsDelay(unsigned long us);


private:


	//logSystem Menu Object
    static logMenu _logSysMenu;
	//logSystem Dataflash object
	static DataFlash_APM2 _DataFlash;
	//FastSerial port to run on
	static FastSerial *_Console;


};

//==================================================================================
// Function prototypes
//==================================================================================



#endif
