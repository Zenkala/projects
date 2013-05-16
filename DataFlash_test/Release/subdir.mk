################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DataFlash_test.cpp 

OBJS += \
./DataFlash_test.o 

CPP_DEPS += \
./DataFlash_test.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/opt/arduinoIDE/hardware/arduino/cores/arduino" -I"/opt/arduinoIDE/hardware/arduino/variants/mega" -I"/home/tomv/Dropbox/projects/GIT/workspace/DataFlash_test" -I"/opt/arduinoIDE/libraries/AP_Math" -I"/opt/arduinoIDE/libraries/FastSerial" -I"/opt/arduinoIDE/libraries/AP_Common" -I"/opt/arduinoIDE/libraries/DataFlash" -I"/opt/arduinoIDE/libraries/AP_Semaphore" -I"/opt/arduinoIDE/libraries/SPI" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


