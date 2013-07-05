/*
 * main.c
 *
 *  Created on: 6 jul. 2013
 *      Author: Tom Vocke
 */

//==================================================
// Includes
//==================================================
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/io.h>
#include <stdint.h>

//==================================================
// Definitions
//==================================================

//input pin definitions

//buck converter pin registers, ch1
#define PWM_CH1_DDR  (DDRB)
#define PWM_CH1_PORT (PORTB)
#define PWM_CH1_PIN  (PINB)
#define PWM_CH1_BIT  (PB2)

//buck converter pin registers, ch2
#define PWM_CH2_DDR  (DDRA)
#define PWM_CH2_PORT (PORTA)
#define PWM_CH2_PIN  (PINA)
#define PWM_CH2_BIT  (PA7)

//buck converter pin registers, ch1
#define BUCK_CH1_DDR  (DDRB)
#define BUCK_CH1_PORT (PORTB)
#define BUCK_CH1_PIN  (PINB)
#define BUCK_CH1_BIT  (PB0)

//buck converter pin registers, ch2
#define BUCK_CH2_DDR  (DDRB)
#define BUCK_CH2_PORT (PORTB)
#define BUCK_CH2_PIN  (PINB)
#define BUCK_CH2_BIT  (PB1)

//tacho input pin ch.1
#define TACHO_CH1_DDR  (DDRA)
#define TACHO_CH1_PORT (PORTA)
#define TACHO_CH1_PIN  (PINA)
#define TACHO_CH1_BIT  (PA0)

//tacho input pin ch.2
#define TACHO_CH2_DDR  (DDRA)
#define TACHO_CH2_PORT (PORTA)
#define TACHO_CH2_PIN  (PINA)
#define TACHO_CH2_BIT  (PA1)

//temperature sensor pins/registers
#define TMP_SCK_DDR  (DDRA)
#define TMP_SCK_PORT (PORTA)
#define TMP_SCK_PIN  (PINA)
#define TMP_SCK_BIT  (PA2)

#define TMP_DIO_DDR  (DDRA)
#define TMP_DIO_PORT (PORTA)
#define TMP_DIO_PIN  (PINA)
#define TMP_DIO_BIT  (PA3)

//reset address jumper input pins/registers
#define ADDR_RESET_DDR  (DDRA)
#define ADDR_RESET_PORT (PORTA)
#define ADDR_RESET_PIN  (PINA)
#define ADDR_RESET_BIT  (PA5)

//helper definitions
#define OFF (0x00)
#define FULL (0xFF)
#define CH_1 (0x01)
#define CH_2 (0x02)
#define VOLTAGE_MODE (0x01)
#define PWM_FAN_MODE (0x02)

//==================================================
// Global Variables
//==================================================
//input signal input buffers
unsigned char _inTacho1 = 0x00;
unsigned char _inTacho0 = 0x00;
unsigned char _inAddrReset = 0x00;

//==================================================
// Function Prototypes
//==================================================

//initialize system
void init(void);
//initialize pwm channels
void initPwm(void);
//set pwm channel to desired state
void setPwm(unsigned char channel, unsigned char duty_cycle,unsigned char fan_mode);

//==================================================
// Main Loop
//==================================================

int main() {

	unsigned char i = 0x00;
	//initialize system
	init();

	//endless loop
	while(1) {

		//set pwm output, experimental
		setPwm(CH_1, i, VOLTAGE_MODE);
		setPwm(CH_2, -i, PWM_FAN_MODE);
		//dealy one second (probably not)
		_delay_ms(5000);

		i+=64;

	}
}


//==================================================
// Function Implementations
//==================================================

//initialize system
void init(void){

	//set all pins to input
	DDRA = 0x00;
	DDRB = 0x00;
	//set output pins to output
	BUCK_CH1_DDR |= (1<<BUCK_CH1_BIT);
	BUCK_CH2_DDR |= (1<<BUCK_CH2_BIT);
	TMP_SCK_DDR  |= (1<<TMP_SCK_BIT);
	PWM_CH1_DDR |= (1<<PWM_CH1_BIT);
	PWM_CH2_DDR |= (1<<PWM_CH2_BIT);

	//enable tacho pullups
	TACHO_CH1_PORT |= (1<<TACHO_CH1_BIT);
	TACHO_CH2_PORT |= (1<<TACHO_CH2_BIT);

	//initialize pwm
	initPwm();

	//disable pwm by default, 3 pin assumed
	setPwm(CH_1,OFF,VOLTAGE_MODE);
	setPwm(CH_2,OFF,VOLTAGE_MODE);

	//keep global interrupts disabled
	cli();

}

//initialize pwm counter to count up to 0xFF = 32kHz period
//OCR0A and OCR0B are connected to the ouput, non-inverted
void initPwm(void){

	//disable timer clock source
	TCCR0B = 0x00;
	//set interrupts disabled
	TIMSK0 = 0x00;
	//set compare pin and pwm mode settings
	//non-inverting mode, since TC4426A is inverting
	TCCR0A = 0x00;
	TCCR0A |= (1 << WGM01) | (1 << WGM00) | (1 << COM0A1) | (1 << COM0B1);
	//set initial compare values = disable
	OCR0A = 128;
	OCR0B = 128;
	//enable timer (clock / 1)
	TCCR0B |= (1 << CS00);

}


//set pwm channel to desired state
void setPwm(unsigned char channel, unsigned char duty_cycle, unsigned char fan_mode){


	if(channel == CH_1){
		OCR0A = duty_cycle;
		if(fan_mode == VOLTAGE_MODE){
			//set buck_pin as input, disable pullup
			BUCK_CH1_DDR &= ~(1<<BUCK_CH1_BIT);
			BUCK_CH1_PORT &= ~(1<<BUCK_CH1_BIT);
		} else if (fan_mode == PWM_FAN_MODE){
			//set buck_pin as output, and high
			BUCK_CH1_DDR |= (1<<BUCK_CH1_BIT);
			BUCK_CH1_PORT |= (1<<BUCK_CH1_BIT);
		}
	} else if(channel == CH_2) {
		OCR0B = duty_cycle;
		if(fan_mode == VOLTAGE_MODE){
			//set buck_pin as input, disable pullup
			BUCK_CH2_DDR &= ~(1<<BUCK_CH2_BIT);
			BUCK_CH2_PORT &= ~(1<<BUCK_CH2_BIT);
		} else if (fan_mode == PWM_FAN_MODE){
			//set buck_pin as output, and high
			BUCK_CH2_DDR |= (1<<BUCK_CH2_BIT);
			BUCK_CH2_PORT |= (1<<BUCK_CH2_BIT);
		}
	}


}
