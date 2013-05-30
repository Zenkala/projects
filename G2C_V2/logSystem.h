//==================================================================================
// Project Logger by Tom Vocke, 02-05-2013
//==================================================================================

/*
This project is intented to provide logging capabilities on the internal dataflash
of the ArduPilot Mega. It provides functions for storing, and retreiving sensor logs
via a serial interface, and makes use of the standard ArduPilot libraries.
*/

//guard
#ifndef _LOGSYSTEM_H
#define _LOGSYSTEM_H
//==================================================================================
// Includes
//==================================================================================

// Common dependencies
#include <AP_Common.h>
#include <AP_InertialSensor.h>
#include <AP_InertialSensor_MPU6000.h>
//compass libraries
#include <AP_Compass_HMC5843.h>
#include <Compass.h>
#include <AP_Compass.h>
#include <AP_Compass_HIL.h>
//AHRS & GPS libraries
#include <AP_GPS.h>
#include <AP_AHRS.h>



//==================================================================================
//Definitions
//==================================================================================

//  Choose the logs to enable (1) = enable, (0) = disable
#define EN_IMU_LOG 		(1)
#define EN_COMPASS_LOG	(1)
#define EN_THROTTLE_LOG	(1)
#define EN_GPS_LOG		(1)

//log packet header ("head" in hex)
#define LOG_PACKET_HEADER (0x6468)

//return value definitions
#define LOG_INIT_OK (0)
#define LOG_INIT_ERR (1)
#define NO_CUR_LOG (-1)

//enable log system
#define LOGGING_ENABLED (1)
#define LOGGING_DISABLED (-1)

//dataflash handling delay when erasing
#define LOG_DF_DELAY_US (1)

//time profiling definitions
#define LOG_NR_TIMESTAMPS (7)
#define LOG_MAX_TIMESTAMPS (10000)
#define LOG_SKIP_INITIAL_CNT (10)

#define LOG_TIMER (0)
#define COMPASS_TIMER (1)
#define MENU_TIMER (2)
#define AHRS_TIMER (3)
#define LOOP_TIMER (4)
#define LOOP2_TIMER (5)
#define HALL_TIMER (6)

//==================================================================================
// Type Definitions
//==================================================================================

typedef struct logEntry {
	uint16_t header;
	uint16_t logNr;
    unsigned long time; //running time in useconds
    //AHRS values
    int16_t roll;     	//in 0.01 deg
    int16_t pitch;		//in 0.01 deg
    int16_t yaw; 		//in 0.01 deg
    int16_t driftX;		//in 0.001 deg
    int16_t driftY;		//in 0.001 deg
    int16_t driftZ;		//in 0.001 deg
    //Compass raw Values
    //int16_t magX;
    //int16_t magY;
    //int16_t magZ;
    int16_t heading;    //in 0.01 deg
    //IMU raw values
    int16_t accX;       //in 0.01 m/s2
    int16_t accY;		//in 0.01 m/s2
    int16_t accZ;		//in 0.01 m/s2
    int16_t gyroX;		//in 0.01 deg/s
    int16_t gyroY;		//in 0.01 deg/s
    int16_t gyroZ;		//in 0.01 deg/s
    int16_t rightWingPWM;
    int16_t leftWingPWM;
    int16_t tailPWM;
    int16_t curThrottle;
} logEntry;


//==================================================================================
// Function prototypes
//==================================================================================

//initialize necessary interface for dataflash logging
int8_t logInit(FastSerial *port,AP_InertialSensor_MPU6000 *imu, AP_Compass_HMC5843 *compass, AP_AHRS_DCM *ahrs, GPS *gps);
//test the dataflash
void logPrintDFVendor(void);
//write a block of data to the dataflash
void logWriteBlock(const void *pBuffer, uint16_t size);
//performs the critical logSystem tasks:
// -keeps the menu alive
// -updates compass readings
// -stores a log of current state
// call at max 75hz
void logWriteLog(int16_t rightWingPWM,int16_t leftWingPWM,int16_t tailPWM,int16_t curThrottle);
//performs fast critical logSystem tasks
// -update AHRS system
void logFastPeriodic();
void logSlowPeriodic(int16_t rightWingPWM,int16_t leftWingPWM,int16_t tailPWM,int16_t curThrottle);
// Write a log packet
void logWriteEntry(logEntry *entry);
// Read a log packet
logEntry logReadEntry();
// Print a log packet over the serial connection
void logPrintEntry(logEntry entry);
// Dumps a log on given pages over the serial port
void logDumpLogNr(int16_t startPage,int16_t endPage, int16_t logNr);
//provide delay function for LOG_DF_DELAY_US * us
void logUsDelay(unsigned long us);
//store a new timestamp for time-profiling (time in us)
void logUpdateTimestamp(uint8_t stampNr);
void logWriteStartTime(uint8_t stampNr);
void logWriteStopTime(uint8_t stampNr);


//end of logSystem.h
#endif
