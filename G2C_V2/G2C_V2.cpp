/****************************
** Gliding controller v2.1b**
**    Geert Folkertsma    **
**      2013-02-14        **
****************************/

// Pass through throttle, or cut off to go into gliding mode
// Pass through ch1,2,6 (attitude control)-—-but re-route:
// FUNCTION		RECV/InputCh	OutputCh/servo
// wing_R		1				1
// wing_L		6				2
// throttle		3				3
// tail			2				4
// Mode/en sw	7
// Glide sw		5

//======================================================
// Includes
//======================================================
#include <avr/io.h>
//fastserial libraries
#include <FastSerial.h>
#include <Arduino.h>
// Logger libraries
#include <logSystem.h>
// Custom libraries
#include <Streaming.h>
#include "MilliTimer.h"
#include "parameters.h"
// APM libraries and variables
#include <Arduino_Mega_ISR_Registry.h>
#include <AP_PeriodicProcess.h>
#include <APM_RC.h>
//IMU libraries
#include <AP_InertialSensor.h>
#include <AP_InertialSensor_MPU6000.h>
#include <SPI.h>
//compass libraries
#include <AP_Compass_HMC5843.h>
#include <Compass.h>
#include <AP_Compass.h>
#include <AP_Compass_HIL.h>
#include <I2C.h>
//AHRS libraries
#include <AP_GPS.h>
#include <AP_AHRS.h>
#include <AP_Math.h>
#include <AP_Airspeed.h>
#include <AP_AnalogSource.h>
#include <AP_Baro.h>
#include <Filter.h>

//======================================================
// Definitions / Type Definitions
//======================================================

//AHRS definitions, leds provide feedback on accelerometer
//initialization
# define A_LED_PIN        27
# define C_LED_PIN        25
# define LED_ON           LOW
# define LED_OFF          HIGH
# define MAG_ORIENTATION  AP_COMPASS_APM2_SHIELD

//======================================================
// Global Variables / Objects
//======================================================

//serial ports
FastSerialPort0(Serial);        //LogSystem Console
FastSerialPort1(Serial1);		//GPS Serial connection

// Timers
MilliTimer Hz50, Hz2;

//general AP objects
Arduino_Mega_ISR_Registry isr_registry;
AP_TimerProcess scheduler;
APM_RC_APM2 APM_RC;
//Sensor instantiations
AP_InertialSensor_MPU6000 imu;
AP_Compass_HMC5843 compass;
//AHRS instantiations
static GPS *g_gps;
AP_GPS_Auto g_gps_driver(&Serial1, &g_gps);
// choose which AHRS system to use
AP_AHRS_DCM  ahrs(&imu, g_gps);

// Radio variables
uint16_t throttle_in = 0;
uint16_t throttle_out = 0; //desired output throttle (0..125) -> used in FO LP filtering

// Finite State Machine variables

enum{GC_UNAVAILABLE,	// Not ready to engage
	GC_STANDBY, 		// Got the magnet a couple of times -> ready to engage
	GC_ENGAGED,			// GC was engaged: searching for the magnet now
	GC_STOPPING,		// Passed Hall sensor, stop motor after x ms
	GC_GLIDING,			// We found the magnet: motor is off
	GC_SURGE,	 		// Leaving gliding mode: giving a surge of power and return control later
	GC_SURGE_EXIT	 // Exit the surge (state needed for gradual thrust change)
};


uint8_t gc_state = GC_UNAVAILABLE;

boolean hall_state = false;		//detecting magnet?
unsigned long prevHallTime = 0; //keep track of when it came by last
unsigned long HallPeriod = 0;	//track the period of Hall/rotation (ms)
unsigned int HallCount = 0;		//Count passes of Hall sensor
unsigned int HallSearchStartCount = 0;	//To count Hall passes on engaging
unsigned long stoppingTime = 0;	//Time started with stopping.. (GC_STOPPING entry time)
unsigned long surgeStart = 0;	//To keep track of the power surge duration

bool runLastTime = false;
uint16_t rightWingPWM = 0;
uint16_t leftWingPWM = 0;
uint16_t tailPWM = 0;
uint16_t curThrottle =0;
//======================================================
// Function Implementations
//======================================================

void set_throttle(uint16_t out){
  curThrottle = out;
  APM_RC.OutputCh(CH_3,constrain(1000+8*out,1000,2250));
}

boolean glide_switch(){
  return APM_RC.InputCh(CH_5) > 1500;
}

boolean enable_switch(){
  return APM_RC.InputCh(CH_7) < 1300;
}


static void flash_leds(bool on)
{
   digitalWrite(A_LED_PIN, on ? LED_OFF : LED_ON);
   digitalWrite(C_LED_PIN, on ? LED_ON : LED_OFF);
}

//initializes sensors and AHRS. In seperate function to have
//some distinction between the logSystem and the original
//remote-control software.
void setupLogSystem(void){

	// Init IMU SPI bus
	SPI.begin();
	SPI.setClockDivider(SPI_CLOCK_DIV16); // 1MHZ SPI rate
	// Init scheduler
	scheduler.init(&isr_registry);
	// Init IMU
	// we need to stop the barometer from holding the SPI bus
	pinMode(40, OUTPUT);
	digitalWrite(40, HIGH);
	imu.init(AP_InertialSensor::COLD_START,
			 AP_InertialSensor::RATE_100HZ,
			 delay, NULL, &scheduler);
	imu.init_accel(delay, flash_leds);
	//init compass
	I2c.begin();
	I2c.timeOut(20);
	I2c.setSpeed(true);

	//set compass orientation compared to bird
	compass.set_orientation(AP_COMPASS_APM2_SHIELD); // set compass's orientation on aircraft.
	compass.set_offsets(0,0,0); // set offsets to account for surrounding interference
	compass.set_declination(ToRad(0.0)); // set local difference between magnetic north and true north

	//initialize AHRS system
	ahrs.init();

	if( compass.init() ) {
		Serial.printf("\nSystem :: AHRS -> Enabling compass\n");
		ahrs.set_compass(&compass);
	} else {
		Serial.printf("\nSystem :: AHRS -> No compass detected\n");
	}

	g_gps = &g_gps_driver;
	#if WITH_GPS
	    g_gps->init();
	#endif


	//print compass type (for debugging purposes)
	Serial.print("System :: Compass auto-detected as: ");
	switch( compass.product_id ) {
		case AP_COMPASS_TYPE_HIL:
			Serial.println("HIL");
			break;
		case AP_COMPASS_TYPE_HMC5843:
			Serial.println("HMC5843");
			break;
		case AP_COMPASS_TYPE_HMC5883L:
			Serial.println("HMC5883L");
			break;
		default:
			Serial.println("unknown");
	}

	//Start log system
	//pointers are needed for the log system to control the
	//sensors and aquire sensor data.
	logInit(&Serial,&imu,&compass,&ahrs,g_gps);

}


void setup(){
	// Init radio
	isr_registry.init();
	APM_RC.Init(&isr_registry);

	// And init the PWM for servo output
	APM_RC.OutputCh(CH_3, APM_RC.InputCh(CH_3));
	APM_RC.OutputCh(CH_1,APM_RC.InputCh(CH_1));	// right wing 	1 -> 1
	APM_RC.OutputCh(CH_2,APM_RC.InputCh(CH_6));	// left wing 	6 -> 2
	APM_RC.OutputCh(CH_4,APM_RC.InputCh(CH_2));	// tail 		2 -> 4
	// turn them on
	APM_RC.enable_out(CH_1);
	APM_RC.enable_out(CH_2);
	APM_RC.enable_out(CH_3);
	APM_RC.enable_out(CH_4);
	
	// Start Hall sensor readings
	pinMode(HALL_PIN,INPUT);
	
	// Start serial channel
	Serial.begin(115200);
	Serial << "[GC 2.20b]" << endl;

	//run sensor and log-system initialization
	setupLogSystem();

}

void loop(){
	// Read the Hall sensor
	if(!hall_state && abs((int)analogRead(HALL_PIN)-512)>HALL_THRESHOLD_HIGH){
		hall_state = true;
		if(prevHallTime!=0){
			//calculate period
			HallPeriod = 8*HallPeriod/10 + 2*(millis()-prevHallTime)/10;
		}
		prevHallTime = millis();
		HallCount++;
		
		if(HallCount>10 && gc_state==GC_UNAVAILABLE){
			gc_state = GC_STANDBY;
		}
	} else if(hall_state && abs((int)analogRead(HALL_PIN)-512)<HALL_THRESHOLD_LOW) {
		if(millis()-prevHallTime>25)
			hall_state = false;
	}
	
	// If we're in searching mode, directly respond to a Hall passing
	if(gc_state==GC_ENGAGED && HallCount-HallSearchStartCount == SEARCHING_COUNT){
		// Passed the Hall sensor for the x'th time: enter GC_STOPPING
		stoppingTime = millis();
		gc_state = GC_STOPPING;
	}
	// And also the timing for cutting motor power might have to be more precise than 50 Hz
	if(gc_state==GC_STOPPING && millis()-stoppingTime >= STOPPING_DEGREES*HallPeriod/360){
		// Waited (deg/360)*T ms, so should be <deg> degrees past the Hall sensor
		set_throttle(0); //might need 12, b/c ch3_min looked to be 1100
		gc_state = GC_GLIDING;
	}
	
	//perform fast critical logSystem tasks
	logFastPeriodic();

	if(Hz50.poll(20)){

		if(!runLastTime){
			//perform slow critical logSystem tasks
			//Serial.printf("System :: logging at time : %lu\n", micros());
			logSlowPeriodic(rightWingPWM,leftWingPWM,tailPWM,curThrottle);
			runLastTime = true;
		} else {
			//Serial.printf("System :: skipped log\n");
			runLastTime = false;
		}

		// This is a 50 Hz loop
		
		/************************************/
		/*	Process RADIO					*/
		/************************************/
		
		throttle_in = constrain(APM_RC.InputCh(CH_3)/8-125,0,125);
		

		//get input signals
		rightWingPWM = APM_RC.InputCh(CH_1);
		leftWingPWM = APM_RC.InputCh(CH_6);
		tailPWM = APM_RC.InputCh(CH_2);
		//set output PWM
		// Pass through CH 1,2,6---but cross over
		APM_RC.OutputCh(CH_1,APM_RC.InputCh(CH_1));	// right wing 	1 -> 1
		APM_RC.OutputCh(CH_2,APM_RC.InputCh(CH_6));	// left wing 	6 -> 2
		APM_RC.OutputCh(CH_4,APM_RC.InputCh(CH_2));	// tail 		2 -> 4
		
		// Check enable/disable switch
		if(!enable_switch()){
			// Disable the GC by continuously resetting to UNAVAILABE state
			gc_state = GC_UNAVAILABLE;
			HallCount = 0;
		}
		
		//***********************************
		//*	Throttle OUTPUT					*
		//***********************************
		
		// First-Order Low-Pass filtering of new throttle commands in certain states
		if(gc_state==GC_ENGAGED || gc_state==GC_SURGE || gc_state==GC_SURGE_EXIT){
			//Gradually go to throttle_out (in ~200 ms i.e. 10x 50 Hz loop)
			// THROTTLE_OUT is 1000..2000 us -> /8-125 = 0..125
			set_throttle((7*(APM_RC.OutputCh_current(CH_3)/8-125))/10 + 3*throttle_out/10);
		}
		
		if(gc_state==GC_UNAVAILABLE || gc_state==GC_STANDBY){
			//copy throttle value
			set_throttle(throttle_in);
		}
		
		
		//***********************************
		//*	Finite State Machine logic		*
		//***********************************
		
		switch(gc_state){
		case GC_STANDBY:
			if(glide_switch() || throttle_in < THROTTLE_THRESHOLD){
				//Engage gliding mode!
				
				// take over control of throttle; slow down to SEARCHING_THROTTLE
				// Do F/O LP filter to go from current value (throttle_in) to SEARCHING_THROTTLE
				set_throttle(throttle_in);
				throttle_out = SEARCHING_THROTTLE;

				HallSearchStartCount = HallCount;

				gc_state = GC_ENGAGED;
			}
			break;
		case GC_ENGAGED:
		    if(!glide_switch() && throttle_in > THROTTLE_THRESHOLD){
		        // abort gliding mode if turning gas back up during searching
                set_throttle(throttle_in);
                gc_state = GC_STANDBY;
		    }
            break;
		case GC_GLIDING:
			if(!glide_switch() && throttle_in > THROTTLE_THRESHOLD){
				//Exit gliding mode!

				//Provide a power surge for some time to get out of the stall
				// Do F/O LP filter to go from current value (0) to SURGE_THROTTLE
				throttle_out = SURGE_THROTTLE;
				surgeStart = millis();

				gc_state = GC_SURGE;
			}
			break;
		case GC_SURGE:
			if(millis()-surgeStart > SURGE_TIME){
				//Return control to r/c, but go to the current throttle_in gradually in ~200 ms
				throttle_out = throttle_in;
				gc_state = GC_SURGE_EXIT;
			}
			break;
		case GC_SURGE_EXIT:
			if(millis()-surgeStart > SURGE_TIME+200){
				//Return control to r/c
				gc_state = GC_STANDBY;
			}
			break;
		default:
			//The UNAVAILABE state does nothing
			break;
		}


	} // 50Hz poll (fast loop)
	
	
	/************************************/
	/*	Logging over serial				*/
	/************************************/
	
	if(Hz2.poll(500)){
		// This is a 2 Hz loop
		// Send GC/Hall info
		//Serial << gc_state << " - " << HallCount << "x - " << HallPeriod << "ms";
		// Send radio info
		//Serial << " || <" << APM_RC.InputCh(CH_3) << " - >" << APM_RC.OutputCh_current(CH_3) << " - " << APM_RC.InputCh(CH_5) << "s - " << APM_RC.InputCh(CH_7) << "e" << endl;
		//Serial.print_P(PSTR("."));
	} // 2Hz poll (slow loop)

}


