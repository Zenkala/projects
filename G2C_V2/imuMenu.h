/*
 * imuMenu.h
 *
 *  Created on: May 22, 2013
 *      Author: tomv
 */

#ifndef IMUMENU_H_
#define IMUMENU_H_


#include <inttypes.h>
#include <FastSerial.h>
#include <Arduino.h>

/// Class defining and handling one menu tree
class imuMenu {
public:

    imuMenu();

    void imuInit(AP_InertialSensor_MPU6000 *sensor, FastSerial  *port);

    static void setup_printf_P(const prog_char_t *fmt, ...);
    static void setup_wait_key(void);

    void runCalibration();
    void displayOffsets();
    void runLevel();
    void runTest();
    void printMenu();
    void parseInput(int16_t user_input);


    /// menu runner
    void        runOnce(void);
    //console to use
    static FastSerial  *_Console;

private:

    //sensor to use
	static AP_InertialSensor_MPU6000  *_IMU;

};

#endif /* IMUMENU_H_ */
