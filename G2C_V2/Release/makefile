################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include SPI/subdir.mk
-include I2C/subdir.mk
-include Filter/subdir.mk
-include FastSerial/subdir.mk
-include DataFlash/subdir.mk
-include Arduino_Mega_ISR_Registry/subdir.mk
-include AP_Semaphore/subdir.mk
-include AP_PeriodicProcess/subdir.mk
-include AP_Math/subdir.mk
-include AP_InertialSensor/subdir.mk
-include AP_GPS/subdir.mk
-include AP_Compass/subdir.mk
-include AP_Common/subdir.mk
-include AP_Baro/subdir.mk
-include AP_AnalogSource/subdir.mk
-include AP_Airspeed/subdir.mk
-include AP_AHRS/subdir.mk
-include APM_RC/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
G2C_V2.lss \

FLASH_IMAGE += \
G2C_V2.hex \

EEPROM_IMAGE += \
G2C_V2.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: G2C_V2.elf secondary-outputs

# Tool invocations
G2C_V2.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C++ Linker'
	avr-gcc --cref -s -Os -o"G2C_V2.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lm -Wl,--gc-sections -L"/home/tomv/Dropbox/projects/GIT/workspace/Arduino_Mega_2560_or_Mega_ADK/Release" -mmcu=atmega2560
	@echo 'Finished building target: $@'
	@echo ' '

G2C_V2.lss: G2C_V2.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S G2C_V2.elf  >"G2C_V2.lss"
	@echo 'Finished building: $@'
	@echo ' '

G2C_V2.hex: G2C_V2.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -O ihex G2C_V2.elf  "G2C_V2.hex"
	@echo 'Finished building: $@'
	@echo ' '

G2C_V2.eep: G2C_V2.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex G2C_V2.elf  "G2C_V2.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: G2C_V2.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega2560 G2C_V2.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EEPROM_IMAGE)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C++_DEPS)$(ASM_DEPS)$(CC_DEPS)$(INO_DEPS)$(CPP_DEPS)$(PDE_DEPS)$(C_UPPER_DEPS)$(SIZEDUMMY) G2C_V2.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
