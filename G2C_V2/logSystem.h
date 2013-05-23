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
#define LOG_PACKET_HEADER (0x64616568)

//return value definitions
#define LOG_INIT_OK (0)
#define LOG_INIT_ERR (1)

//enable log system
#define LOGGING_ENABLED (1)

//dataflash handling delay when erasing
#define LOG_DF_DELAY_US (1)

//==================================================================================
// Type Definitions
//==================================================================================

typedef struct logEntry {
    uint32_t header;
    unsigned long time; //running time in useconds
    //AHRS values
    float Roll;
    float Pitch;
    float Yaw;
    float driftX;
    float driftY;
    float driftZ;
    //Compass raw Values
    int16_t magX;
    int16_t magY;
    int16_t magZ;
    float heading;
    //IMU raw values
    float accX;
    float accY;
    float accZ;
    float gyroX;
    float gyroY;
    float gyroZ;
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
void logSlowPeriodic();
//performs fast critical logSystem tasks
// -update AHRS system
void logFastPeriodic();
// Write a log packet
void logWriteEntry(logEntry *entry);
// Read a log packet
logEntry logReadEntry();
// Print a log packet over the serial connection
void logPrintEntry(logEntry entry);
// Dumps a log on given pages over the serial port
void logDumpLogNr(int16_t startPage,int16_t endPage);
//provide delay function for LOG_DF_DELAY_US * us
void logUsDelay(unsigned long us);
//end of logger.h
void logUsDelay(unsigned long us);



#endif
