#ifndef parameters_h
#define parameters_h
// All parameter settings for the gliding controller v1

// Throttle level below which the gliding mode is engaged automatically
//and vice versa: above/exited
#define THROTTLE_THRESHOLD 53

// Hall sensor settings (schmitt trigger)
#define HALL_PIN A5
// No logic for reverse mounting of Hall/magnet: set up as active-low now
#define HALL_THRESHOLD_HIGH 200
#define HALL_THRESHOLD_LOW 150

// Constants for when engaging gliding mode
#define SEARCHING_THROTTLE 60	//level when looking for clutch position (0-125)
#define SEARCHING_COUNT 6		//make X flaps after engaging to gauge speed

// Constants for when stopping the motor
#define STOPPING_DEGREES 10		// Degrees to turn after Hall passed -> 
								//t_wait = (STOPPING_DEGREES/360)*HallPeriod

// Constants for when exiting gliding mode
#define SURGE_THROTTLE 140	// 0-125
#define SURGE_TIME 1800 //time in ms

//set to one if GPS is to be used for AHRS
#define WITH_GPS 0


#endif
// -*- tab-width: 4; Mode: C++; c-basic-offset: 4; indent-tabs-mode: nil -*-
