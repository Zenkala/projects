//==================================================================================
// Project name by ..
//==================================================================================

/*
This project ..

*/


//==================================================================================
// Includes
//==================================================================================

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include "stdio.h"
#include "lcd/alphaLCD.h"
#include "printf/printf.h"


//==================================================================================
//Defines
//==================================================================================

//system defines
#define FOSC 16000000 //system frequency

//==================================================================================
// Type Definitions
//==================================================================================

//==================================================================================
// Global Variables
//==================================================================================
unsigned char setting=128; //led setting

//==================================================================================
// Custom Functions Prototypes
//==================================================================================

void userInit(void); //all user port and peripheral initialisations here

//==================================================================================
// Main
//==================================================================================


int main ()
{	
	
//initialisation
userInit();//initialise ports and peripherals

//==========================================
// Program Loop
//==========================================
while(1){
	

	
}
//==========================================
// End Program Loop
//==========================================

return 0;

}


//==================================================================================
// Custom Functions
//==================================================================================


void userInit(void){ //all user port and peripheral initialisations here


	//PORT initialisation
	PORTB=0; //initial conditions 0, no pull-ups
	DDRB=(1<<PB1)|(1<<PB0); //set OC0B and OC0A to outputs
	
	//Timer initialisation
	//set timer to fast-PWM mode, with OC0B and OC0A inverted
	TCCR0A=(1<<WGM00)|(1<<WGM01)|(1<<COM0A1)|(1<<COM0B0)|(1<<COM0B1);
	//set clock source to 8 prescaling
	TCCR0B=(1<<CS01);
	//set initial duty cycle to 50%
	OCR0A=128;
	OCR0B=128;
	//disable interrupts
	TIMSK0=0;

	
	//ADC initialisation
	//VCC as analog reference, left adjusted, ADC2 (PB4)
	ADMUX=(1<<MUX1)|(1<<ADLAR);
	//Devide ADC clock with 128, enable ADC interrupt, free running mode
	ADCSRA=(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0)|(1<<ADEN)|(1<<ADIE)|(1<<ADATE);
	//Disable digital input buffer function ADC2
	DIDR0=(1<<ADC2D);
	//Start conversion
	ADCSRA|=(1<<ADSC);

	sei();


}



ISR(ADC_vect) { // ADC conversion compete interrupt
	
	//read ADC 8 bit value
	setting=ADCH;

	//update PWM
	OCR0A=setting;
	OCR0B=setting;

}


