################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../G2C_V2.cpp \
../MilliTimer.cpp \
../logMenu.cpp \
../logSystem.cpp 

OBJS += \
./G2C_V2.o \
./MilliTimer.o \
./logMenu.o \
./logSystem.o 

CPP_DEPS += \
./G2C_V2.d \
./MilliTimer.d \
./logMenu.d \
./logSystem.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/G2C_V2" -I"/opt/arduinoIDE/libraries/Streaming" -I"/opt/arduinoIDE/libraries/APM_RC" -I"/opt/arduinoIDE/libraries/Arduino_Mega_ISR_Registry" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/AP_InertialSensor" -I"/opt/arduinoIDE/libraries/AP_Compass" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -I"/opt/arduinoIDE/libraries/I2C" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -g2 -gstabs -ffunction-sections -fdata-sections -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


