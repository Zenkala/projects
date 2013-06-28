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
#include <string.h>
#include <stdlib.h>
#include "stdio.h"
#include "lcd/lcd.h"
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

void lcd_printc(void *p, char ch) {
	lcd_putc(ch); //write character to lcd
}

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


	//enable pwm timer
	

	//initialize LCD


	//initialize printf
	init_printf(NULL, lcd_printc );


	//enable interrupts for rotary encoder and button


	//enable global interrupts
	sei();


}




void lcd_outs (char *string, unsigned char strlen){

	unsigned char i=0;
	char *strptr = string; /*local copy*/

	/* clear display and home cursor */
	lcd_clrscr();
	lcd_gotoxy(0,0);

	/*do not display string > 16 characters*/
	if(strlen>16){
		lcd_puts("error");
	} else {

		for(i=0; i<strlen; i++){

			//move to new line (second part of display) after
			//first 8 characters have been written
			if(i==8){
				lcd_gotoxy(0,1);
			}

			lcd_putc(*strptr);
			strptr++;

		}

	}
}


void setPWM




