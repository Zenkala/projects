// -*- tab-width: 4; Mode: C++; c-basic-offset: 4; indent-tabs-mode: t -*-

//
// Simple test for the AP_AHRS interface
//

#include <FastSerial.h>
#include <SPI.h>
#include <I2C.h>
#include <Arduino_Mega_ISR_Registry.h>
#include <AP_PeriodicProcess.h>
#include <AP_InertialSensor.h>
#include <AP_ADC.h>
#include <AP_GPS.h>
#include <AP_AHRS.h>
#include <AP_Math.h>
#include <AP_AnalogSource.h>
#include <AP_AnalogSource_Arduino.h>
#include <AP_Common.h>
#include <AP_Compass.h>
#include <AP_Airspeed.h>
#include <AP_Baro.h>
#include <AP_Semaphore.h>
#include <DataFlash.h>
#include <APM_RC.h>
#include <GCS_MAVLink.h>
#include <Filter.h>
#include <AP_Buffer.h>

// uncomment this for a APM2 board
#define APM2_HARDWARE

#define WITH_GPS 0

FastSerialPort0(Serial);
FastSerialPort1(Serial1);

Arduino_Mega_ISR_Registry isr_registry;
AP_TimerProcess scheduler;
AP_Compass_HMC5843 compass;
AP_InertialSensor_MPU6000 ins;

static GPS      *g_gps;
AP_GPS_Auto     g_gps_driver(&Serial1, &g_gps);

// choose which AHRS system to use
AP_AHRS_MPU6000  ahrs(&ins, g_gps);		// only works with APM2

void setup(void)
{


}

void loop(void)
{
    static uint16_t counter;
    static uint32_t last_t, last_print, last_compass;
    uint32_t now = micros();
    float heading = 0;

    if (last_t == 0) {
        last_t = now;
        return;
    }
    last_t = now;

    if (now - last_compass > 100*1000UL &&
        compass.read()) {
        heading = compass.calculate_heading(ahrs.get_dcm_matrix());
        // read compass at 10Hz
        last_compass = now;
#if WITH_GPS
        g_gps->update();
#endif
    }

    ahrs.update();
    counter++;

    if (now - last_print >= 0.5e6) {
        Vector3f drift  = ahrs.get_gyro_drift();
        Serial.printf_P(PSTR("r:%4.1f  p:%4.1f y:%4.1f drift=(%5.1f %5.1f %5.1f) hdg=%.1f rate=%.1f\n"),
                        ToDeg(ahrs.roll),
                        ToDeg(ahrs.pitch),
                        ToDeg(ahrs.yaw),
                        ToDeg(drift.x),
                        ToDeg(drift.y),
                        ToDeg(drift.z),
                        compass.use_for_yaw() ? ToDeg(heading) : 0.0,
                        (1.0e6*counter)/(now-last_print));
        last_print = now;
        counter = 0;
    }
}
