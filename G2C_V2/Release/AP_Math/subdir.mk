################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/opt/arduinoIDE/libraries/AP_Math/AP_Math.cpp \
/opt/arduinoIDE/libraries/AP_Math/location.cpp \
/opt/arduinoIDE/libraries/AP_Math/matrix3.cpp \
/opt/arduinoIDE/libraries/AP_Math/polygon.cpp \
/opt/arduinoIDE/libraries/AP_Math/quaternion.cpp \
/opt/arduinoIDE/libraries/AP_Math/vector3.cpp 

OBJS += \
./AP_Math/AP_Math.o \
./AP_Math/location.o \
./AP_Math/matrix3.o \
./AP_Math/polygon.o \
./AP_Math/quaternion.o \
./AP_Math/vector3.o 

CPP_DEPS += \
./AP_Math/AP_Math.d \
./AP_Math/location.d \
./AP_Math/matrix3.d \
./AP_Math/polygon.d \
./AP_Math/quaternion.d \
./AP_Math/vector3.d 


# Each subdirectory must supply rules for building sources it contributes
AP_Math/AP_Math.o: /opt/arduinoIDE/libraries/AP_Math/AP_Math.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_Math/location.o: /opt/arduinoIDE/libraries/AP_Math/location.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_Math/matrix3.o: /opt/arduinoIDE/libraries/AP_Math/matrix3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_Math/polygon.o: /opt/arduinoIDE/libraries/AP_Math/polygon.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_Math/quaternion.o: /opt/arduinoIDE/libraries/AP_Math/quaternion.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

AP_Math/vector3.o: /opt/arduinoIDE/libraries/AP_Math/vector3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -I"/opt/arduinoIDE/libraries/AP_PeriodicProcess" -I"/opt/arduinoIDE/libraries/Filter" -I"/opt/arduinoIDE/libraries/AP_AHRS" -I"/opt/arduinoIDE/libraries/AP_AnalogSource" -I"/opt/arduinoIDE/libraries/AP_Baro" -I"/opt/arduinoIDE/libraries/AP_Airspeed" -I"/opt/arduinoIDE/libraries/AP_GPS" -I"/opt/arduinoIDE/libraries/AP_Buffer" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


