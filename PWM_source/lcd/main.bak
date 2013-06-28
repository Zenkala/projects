/*----------------------------------------------------------------------*/
/* Soladin Logger											*/
/*----------------------------------------------------------------------*/


//Coin-counter Project by Sander & Tom Vocke
//feb 2009
//1.0 Beta

#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdlib.h>
#include "stdio.h"
#include "lcd.h"
#include "uart_puts.h"

#define CHAR_DELAY 0

unsigned char a;
unsigned char menuitem;
unsigned char buffer[32];	//receive buffer
unsigned char sector[512];	//sector to be written
unsigned char bytereceived; //number of byte received
char stro[16];	//output string 
char stri[5];	//integer string
unsigned char *pnt_record;
unsigned char *pnt_buffer;


/*-----------------------------------------------------------------------*/
/* Last correct data received variable                                	 */
/*-----------------------------------------------------------------------*/

struct
   {
       unsigned char header_a;
	   unsigned char header_b;
	   unsigned char header_c;
	   unsigned char header_d;
	   unsigned char header_e;
	   unsigned char header_f;
	   unsigned int empty;
	   unsigned int spanning;
	   unsigned int stroom;
       unsigned int frequentie;
       unsigned int output_spanning;
	   unsigned int empty2;
       unsigned int vermogen;
       unsigned int geleverd;
       signed int temperatuur;
       unsigned int werkzaam_a;
	   unsigned int werkzaam_b;
	   unsigned int werkzaam_c;
   } record;







/*-----------------------------------------------------------------------*/
/* Delay                                                            	 */
/*-----------------------------------------------------------------------*/

void lame(){

	a=PIND;

}

void delay(int ms){
	int i, j, k,h =0;
	for(i=0; i<ms; i++){
		for(j=0;j<50; j++){
			for(k=0; k<1000; k++){
			h++;
			lame();			
			}
		}
	}
}

void delay_nops(int ms){
	int i, j, k,h =0;
	for(i=0; i<ms; i++){
		for(j=0;j<10; j++){
			for(k=0; k<10; k++){
				h++;
				lame();			
			}
		}
	}
}


/*-----------------------------------------------------------------------*/
/* Send request                                                            	 */
/*-----------------------------------------------------------------------*/


void request(char commando){

	if(!commando==0){
	
		uart_putc(0x11);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0xB6);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0xC7);
		delay_nops(CHAR_DELAY);

	} else {
		
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0xC1);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0x00);
		delay_nops(CHAR_DELAY);
		uart_putc(0xC1);
		delay_nops(CHAR_DELAY);
	
	}

}

void lcd_outs (char *string){

        /* clear display and home cursor */
        lcd_clrscr();
		lcd_gotoxy(0,0);

		unsigned char strlength=strlen(string);

		if(strlength>16){

			lcd_puts("error");


		} else {
	
        
			unsigned char i=0;

			while(i<strlength){
		
				lcd_putc(*string);
				string++;
				i++;

				if(i>7){break;}
					
			}

			if(strlength>8){

			lcd_gotoxy(0,1);

					
			while(i<strlength){
		
				lcd_putc(*string);
				string++;
				i++;;

				if(i>15){break;}
		
			}

			}

		}



}

void lcd_output(int output, char *eenheid, char *type){


	unsigned char i=0;

	while(i<16){
	
		stro[i]=0;
		if(i<5){
		stri[i]=0;
		}

		i++;

	}

	strcat(stro, type);
	itoa(output, stri, 10);
	strcat(stro, stri);
	strcat(stro, eenheid);
	lcd_outs(stro);


}

void process_data(){

	unsigned char i=0;

	//write receive buffer into record.
	while(i<32){
	
		*pnt_record = *pnt_buffer;
		pnt_record++;
		pnt_buffer++;
		i++;
			
	}

	pnt_record = &record.header_a;
	pnt_buffer = &buffer[1];

}

void retrieve_data(){

//retreive new value
	
	bytereceived=0;
	
	request(1);//request current data
	
	unsigned char i=0;

	//wait for received data or timeout
	while(bytereceived<30){
	
		delay(1);
		i++;
		if(i>5){break;}

	}

	//when no timeout occurred proccess data
	if(!(i>5)){

		if(bytereceived==31){
		
			process_data();
					
		}	

	}

	bytereceived=0;

}







/*-----------------------------------------------------------------------*/
/* Main                                                                  */
/*-----------------------------------------------------------------------*/


int main ()
{	
	//initialize ports
	DDRB=0;
	DDRB|=(1<<PB1);
	DDRD=0;
	DDRD|=(1<<PD1);
	PORTD |= (1<<PD1);
	DDRC=255;
	PORTC=0;
	//initialize global variables
	menuitem=0;
	bytereceived=0;
	pnt_record = &record.header_a;
	pnt_buffer = &buffer[1];

	//initialize display
        lcd_init(LCD_DISP_ON);
	lcd_outs("");
	delay(5);
	lcd_outs("Getting data..");

	//initialize MCU
	init_uart();
	
	
	unsigned char i=0;
	unsigned char temp=0;

	sei();

	//init Soladin
	request(0);
	while (bytereceived<9){
		
	delay(1);
	}
	lcd_outs("Processing..");	
	retrieve_data();

	//enable external interupt 1
	MCUCR |= (1<<ISC11);
	MCUCR &= ~(1<<ISC10);
	GICR |= (1<<INT1);
//==========================================
// Program Loop
//==========================================

	

	while(1){


	menu:

	switch (menuitem)                  // select the type of calculation 
    {
    case 1: 
		lcd_output((record.geleverd/100), " KWh", "Som:");             // output vermogen 
        break;
	case 2: 
		lcd_output((record.spanning/10), " V", "V_Pnl:");             // output vermogen 
        break;
	case 3: 
		lcd_output((record.stroom*10), " mA", "Stroom:");             // output vermogen 
        break;
	case 4: 
		lcd_output((record.frequentie/100), " Hz", "Freq:");             // output vermogen 
        break;
	case 5: 
		lcd_output(record.output_spanning, " V", "V_Out:");             // output vermogen 
        break;
	case 6: 
		lcd_output((record.temperatuur/100), " 'C", "Temp:");             // output vermogen 
        break; 
    default: lcd_output(record.vermogen, " W", "Output:");
    }

	i=0;
	temp=menuitem;
	while(i<50){
	delay(1);
	if(menuitem!=temp){goto menu;}
	i++;
	}

	retrieve_data();
	
}

//==========================================
// End Program Loop
//==========================================

return 0;

}




ISR(_VECTOR(0)) { // Timer interrupt
	
	uart_puts("interrupt 0");
	serialterminate();

}


ISR(_VECTOR(1)) { // Timer interrupt
	
	uart_puts("interrupt 1");
	serialterminate();

}


ISR(_VECTOR(2)) { // INT 1 interrupt

	
	menuitem++;
	if (menuitem==7){
	
		menuitem=0;
	
	}
	
}



ISR(_VECTOR(3)) { // Output compare match Timer 2
	
	uart_puts("interrupt 3");
	serialterminate();

}


ISR(_VECTOR(4)) { // Timer interrupt
	
	uart_puts("interrupt 4");
	serialterminate();

}



ISR(_VECTOR(5)) { // Input capture interrupt
	

	uart_puts("interrupt 5");
	serialterminate();

}


ISR(_VECTOR(6)) { // Timer1 OC1A interrupt
	
	uart_puts("interrupt 6");
	serialterminate();
	
}

ISR(_VECTOR(7)) { // Timer0 interrupt
	uart_puts("interrupt 7");
	serialterminate();
}


ISR(_VECTOR(8)) { // Timer1 overflow interrupt
	
	uart_puts("interrupt 8");
	serialterminate();

}


ISR(_VECTOR(9)) { // Timer interrupt
	
	uart_puts("interrupt 9");
	serialterminate();

}
ISR(_VECTOR(10)) { // Timer interrupt
	
	uart_puts("interrupt 10");
	serialterminate();

}
ISR(_VECTOR(11)) { // Timer interrupt
	
	//bytereceived=0;
	bytereceived++;
	buffer[bytereceived]=UDR;
	

}
ISR(_VECTOR(12)) { // Timer interrupt
	
	uart_puts("interrupt 12");
	serialterminate();

}
ISR(_VECTOR(13)) { // Timer interrupt
	
	uart_puts("interrupt 13");
	serialterminate();

}
ISR(_VECTOR(14)) { // Timer interrupt
	
	uart_puts("interrupt 14");
	serialterminate();

}
ISR(_VECTOR(15)) { // Timer interrupt
	
	uart_puts("interrupt 15");
	serialterminate();

}
ISR(_VECTOR(16)) { // Timer interrupt
	
	uart_puts("interrupt 16");
	serialterminate();

}
ISR(_VECTOR(17)) { // Timer interrupt
	
	uart_puts("interrupt 17");
	serialterminate();

}
ISR(_VECTOR(18)) { // Timer interrupt
	
	uart_puts("interrupt 18");
	serialterminate();

}
ISR(_VECTOR(19)) { // Timer interrupt
	
	uart_puts("interrupt 19");
	serialterminate();

}
ISR(_VECTOR(20)) { // Timer interrupt
	
	uart_puts("interrupt 20");
	serialterminate();

}
ISR(_VECTOR(21)) { // Timer interrupt
	
	uart_puts("interrupt 21");
	serialterminate();

}



