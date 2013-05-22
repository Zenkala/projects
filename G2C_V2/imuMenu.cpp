

#include <FastSerial.h>
#include <AP_InertialSensor.h>
#include <AP_Math.h>
#include <AP_Common.h>

#include <ctype.h>
#include <string.h>
#include <avr/pgmspace.h>

#include "imuMenu.h"

#define SAMPLE_UNIT             1

//sensor to use
AP_InertialSensor_MPU6000 *imuMenu::_IMU;
//console to use
FastSerial *imuMenu::_Console;

//========================================================
// Function Implementations
//========================================================

// constructor
imuMenu::imuMenu(){}

void imuMenu::imuInit(AP_InertialSensor_MPU6000 *sensor, FastSerial  *port){

	_Console = port;
	_IMU = sensor;

}


void imuMenu::printMenu(){
    _Console->println();
    _Console->println("imuMenu :: Invalid Argument, valid options are: ");
    _Console->println("    c) calibrate accelerometers");
    _Console->println("    d) display offsets and scaling");
    _Console->println("    l) level (capture offsets from level)");
    _Console->println("    t) run test");
    _Console->println("    #) print this menu");
}

void imuMenu::parseInput(int16_t user_input){

	switch(user_input){

		case 'c': //perform callibration
			this->runCalibration();
			this->displayOffsets();
		break;

		case 'd': //print offsets
			this->displayOffsets();
		break;

		case 'l': //perform leveling operation
			this->runLevel();
			this->displayOffsets();
		break;

		case 't': //perform test
			this->runTest();
		break;

		default: //print menu
			this->printMenu();
			break;
	}

	//end
}


void imuMenu::runCalibration()
{
    // clear off any other characters (like line feeds,etc)
    while( _Console->available() ) {
        _Console->read();
    }

    _IMU->calibrate_accel(delay, NULL, imuMenu::setup_printf_P, imuMenu::setup_wait_key);
}

void imuMenu::displayOffsets()
{
    Vector3f accel_offsets = _IMU->get_accel_offsets();
    Vector3f accel_scale = _IMU->get_accel_scale();
    Vector3f gyro_offsets = _IMU->get_gyro_offsets();

    // display results
    _Console->printf_P(PSTR("\nAccel Offsets X:%10.8f \t Y:%10.8f \t Z:%10.8f\n"),
                    accel_offsets.x,
                    accel_offsets.y,
                    accel_offsets.z);
    _Console->printf_P(PSTR("Accel Scale X:%10.8f \t Y:%10.8f \t Z:%10.8f\n"),
                    accel_scale.x,
                    accel_scale.y,
                    accel_scale.z);
    _Console->printf_P(PSTR("Gyro Offsets X:%10.8f \t Y:%10.8f \t Z:%10.8f\n"),
                    gyro_offsets.x,
                    gyro_offsets.y,
                    gyro_offsets.z);
}

void imuMenu::runLevel()
{
    // clear off any input in the buffer
    while( _Console->available() ) {
        _Console->read();
    }

    // display message to user
    _Console->print("Place APM on a level surface and press any key..\n");

    // wait for user input
    while( !_Console->available() ) {
        delay(20);
    }
    while( _Console->available() ) {
        _Console->read();
    }

    // run accel level
    _IMU->init_accel(delay, NULL);

    // display results
    displayOffsets();
}

void imuMenu::runTest()
{
    Vector3f accel;
    Vector3f gyro;
    float temperature;
    float length;

    // flush any user input
    while( _Console->available() ) {
        _Console->read();
    }

    // clear out any existing samples from ins
    _IMU->update();

    // loop as long as user does not press a key
    while( !_Console->available() ) {

        // wait until we have 8 samples
        while( _IMU->num_samples_available() < 8 * SAMPLE_UNIT ) {
            delay(1);
        }

        // read samples from ins
        _IMU->update();
        accel = _IMU->get_accel();
        gyro = _IMU->get_gyro();
        temperature = _IMU->temperature();

        length = sqrt(accel.x*accel.x + accel.y*accel.y + accel.z*accel.z);

        // display results
        _Console->printf_P(PSTR("Accel [X:%4.2f Y:%4.2f Z:%4.2f] len:%4.2f Gyro [X:%4.2f Y:%4.2f Z:%4.2f] Temp:%4.2f\n"),
            accel.x, accel.y, accel.z, length, gyro.x, gyro.y, gyro.z, temperature);
    }

    // clear user input
    while( _Console->available() ) {
        _Console->read();
    }
}
