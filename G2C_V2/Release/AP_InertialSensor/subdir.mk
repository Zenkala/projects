################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor.cpp \
/opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor_MPU6000.cpp \
/opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor_Oilpan.cpp \
/opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor_Stub.cpp 

OBJS += \
./AP_InertialSensor/AP_InertialSensor.o \
./AP_InertialSensor/AP_InertialSensor_MPU6000.o \
./AP_InertialSensor/AP_InertialSensor_Oilpan.o \
./AP_InertialSensor/AP_InertialSensor_Stub.o 

CPP_DEPS += \
./AP_InertialSensor/AP_InertialSensor.d \
./AP_InertialSensor/AP_InertialSensor_MPU6000.d \
./AP_InertialSensor/AP_InertialSensor_Oilpan.d \
./AP_InertialSensor/AP_InertialSensor_Stub.d 


# Each subdirectory must supply rules for building sources it contributes
AP_InertialSensor/AP_InertialSensor.o: /opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_InertialSensor/AP_InertialSensor_MPU6000.o: /opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor_MPU6000.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_InertialSensor/AP_InertialSensor_Oilpan.o: /opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor_Oilpan.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_InertialSensor/AP_InertialSensor_Stub.o: /opt/arduinoIDE/libraries/AP_InertialSensor/AP_InertialSensor_Stub.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


