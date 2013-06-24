/*****************************************************************************
 *   alphaLCD.c:  4-bit port LCD C file for NXP LPC23xx/34xx Family
 *   Microprocessors
 *
 *   based on portlcd.c by NXP, altered by daniel bloemendaal en tom vocke to fit
 *   KS0070B controller and board pinout
 *
*****************************************************************************/
/* FreeRTOS includes. */
#include <FreeRTOS.h>
#include "task.h"
#include "queue.h"
#include "sysconfig.h"
#include "lpc23xx.h"                        /* LPC23xx/24xx definitions */
#include "type.h"
#include "alphaLCD.h"

/* Local variables */
static DWORD lcd_ptr;

/* 8 user defined characters to be loaded into CGRAM (used for bargraph) */
static const BYTE UserFont[8][8] = {
  { 0x00,0x10,0x08,0x04,0x02,0x01,0x00,0x00 },
  { 0x00,0x04,0x04,0x04,0x04,0x04,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x01,0x03,0x03,0x00 }, //car part 4
  { 0x01,0x02,0x04,0x1F,0x1F,0x1F,0x17,0x1C }, //car part 3
  { 0x1C,0x12,0x11,0x1F,0x1F,0x1F,0x1F,0x00 }, //car part 2
  { 0x00,0x00,0x00,0x1E,0x1F,0x1F,0x17,0x1C }, //car part 1
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 }
};
/******************************************************************************
** Function name:		lcd_delay
**
** Descriptions:		Delay in while loop cycles.		
**
** parameters:			delay counter
** Returned value:		None
** 
******************************************************************************/
void lcd_delay (volatile DWORD cnt)
{


    cnt*=4;
	while( cnt--) {
        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");
#ifdef CLK_72_MHZ
        asm volatile("nop");  //compensates roughly for the extra clocks compared to 60Mhz
#endif
	}

	//vTaskDelay( portTICK_RATE_MS * cnt );
}

/******************************************************************************
** Function name:		lcd_strobe_en
**
** Descriptions:		strobe display enable pin (assuming its an output)
**
** parameters:			None
** Returned value:		None
** 
******************************************************************************/
void lcd_strobe_en (void){
	//strobe enable pin
	DISP_EN_SET = (1<<DISP_EN);
	lcd_delay (10);
	DISP_EN_CLR = (1<<DISP_EN);
	lcd_delay (10);
}

/******************************************************************************
** Function name:		lcd_write_nibble
**
** Descriptions:		Write a 4-bit command to LCD controller.
**
** parameters:			four bits to write
** Returned value:		None
**
******************************************************************************/

void lcd_write_nibble( BYTE nibble )
{
	//set data pins to output
	DISP_DATA_DIR |= DISP_DATA_MASK;
	//set control lines to output
	DISP_RS_DIR |= (1<<DISP_RS);
	DISP_RW_DIR	|= (1<<DISP_RW);
	DISP_EN_DIR	|= (1<<DISP_EN);
	//clear DISP_RW and DISP_DATA lines
	DISP_DATA_CLR = DISP_DATA_MASK;
	DISP_RW_CLR = (1<<DISP_RW);
	//set nibble on data pins
	DISP_DATA_SET = (((DWORD)nibble & 0xF) << DISP_DATA0);
	//strobe enable pin
	lcd_delay (10);
	lcd_strobe_en();

	return;

}

/******************************************************************************
** Function name:		lcd_read_nibble
**
** Descriptions:		read a 4-bit word from LCD controller.
**
** parameters:			adress to read
** Returned value:		read byte from adress
**
******************************************************************************/

BYTE lcd_read_byte( BYTE adress )
{

	BYTE stat=0;
	lcd_delay(10);
	//send adress to read to LCD
	lcd_write_cmd(adress);
	lcd_delay(10);

	//read byte at adress
	//set data pins to input
	DISP_DATA_DIR &= ~DISP_DATA_MASK;
	//set display RS pin
	DISP_RS_SET = (1 << DISP_RS);
	//set display RW pin
	DISP_RW_SET = (1<< DISP_RW);
	//Get high nibble from display
	lcd_delay(10);
	DISP_EN_SET = (1 << DISP_EN);
	lcd_delay(10);
	stat = (DISP_DATA_PIN >> (DISP_DATA0-4)) & 0xF0;
	DISP_EN_CLR = (1 << DISP_EN);
	//Get low nibble from display
	lcd_delay(10);
	DISP_EN_SET = (1 << DISP_EN);
	lcd_delay(10);
	stat |= (DISP_DATA_PIN >> DISP_DATA0) & 0xF;
	DISP_EN_CLR = (1 << DISP_EN);
	//Return retrieved status

	return stat;

}

/******************************************************************************
** Function name:		lcd_write
**
** Descriptions:		Write data/command to LCD controller.		
**
** parameters:			word to write
** Returned value:		None
** 
******************************************************************************/
void lcd_write_byte( BYTE val )
{
  lcd_write_nibble (val >> 4);
  lcd_write_nibble (val);
  return;
}

/******************************************************************************
** Function name:		lcd_read_stat
**
** Descriptions:		Read status of LCD controller (ST7066)		
**
** parameters:			None
** Returned value:		status
** 
******************************************************************************/
DWORD lcd_read_stat( void ) 
{
  DWORD stat;

  //set data pins to input
  DISP_DATA_DIR &= ~DISP_DATA_MASK;
  //clear display RS pin
  DISP_RS_CLR = (1 << DISP_RS);
  //set display RW pin
  DISP_RW_SET = (1<< DISP_RW);
  //Get high nibble from display
  lcd_delay(10);
  DISP_EN_SET = (1 << DISP_EN);
  lcd_delay(10);
  stat = (DISP_DATA_PIN >> (DISP_DATA0-4)) & 0xF0;
  DISP_EN_CLR = (1 << DISP_EN);
  //Get low nibble from display
  lcd_delay(10);
  DISP_EN_SET = (1 << DISP_EN);
  lcd_delay(10);
  stat |= (DISP_DATA_PIN >> DISP_DATA0) & 0xF;
  DISP_EN_CLR = (1 << DISP_EN);
  //Return retrieved status
  return stat;

}

/******************************************************************************
** Function name:		lcd_wait_busy
**
** Descriptions:		Wait until LCD controller (ST7066) is not busy.		
**
** parameters:			None
** Returned value:		None
** 
******************************************************************************/
void lcd_wait_busy( void ) 
{
  DWORD stat;

  do 
  {
	stat = lcd_read_stat();
  } while (stat & 0x80);               /* Wait for busy flag                */
  return;
}

/******************************************************************************
** Function name:		lcd_write_cmd
**
** Descriptions:		Write command to LCD controller.		
**
** parameters:			command word
** Returned value:		None
** 
******************************************************************************/
void lcd_write_cmd( BYTE cmd )
{
	//wait for display to be ready
	lcd_wait_busy();
	//clear display RS pin
	DISP_RS_CLR = (1 << DISP_RS);
	//write command byte
	lcd_write_byte(cmd);
	//return
	return;
}

/******************************************************************************
** Function name:		lcd_write_data
**
** Descriptions:		Write data to LCD controller.		
**
** parameters:			data word
** Returned value:		None
** 
******************************************************************************/
void lcd_write_data( BYTE data )
{
	//wait for display to be ready
	lcd_wait_busy();
	//set display RS pin
	DISP_RS_SET = (1 << DISP_RS);
	//write command byte
	lcd_write_byte(data);
	//return
	return;
}

/******************************************************************************
** Function name:		LCD_init
**
** Descriptions:		Initialize the KS0070 LCD controller to 4-bit mode.
**
** parameters:			None
** Returned value:		None
** 
******************************************************************************/
void LCD_init( void ) 
{

	//init display and control lines (GPIO settings are done in sysconfig.h init call)
	//set data lines to output
	DISP_DATA_DIR |= DISP_DATA_MASK;
	//set control lines to output
	DISP_RW_DIR |= (1<<DISP_RW);
	DISP_RS_DIR |= (1<<DISP_RS);
	DISP_EN_DIR |= (1<<DISP_EN);
	//clear data lines
	DISP_DATA_CLR = DISP_DATA_MASK;
	//clear control lines
	DISP_RW_CLR |= (1<<DISP_RW);
	DISP_RS_CLR |= (1<<DISP_RS);
	DISP_EN_CLR |= (1<<DISP_EN);

	//enable display 4 bit interface
	lcd_delay (100);
	lcd_write_nibble(0x3);
	lcd_delay (50000);
	lcd_write_nibble(0x3);
	lcd_delay (50000);
	lcd_write_nibble(0x3);
	lcd_write_nibble(0x2);

	/* 2 lines, 5x7 character matrix, 4bit bus    */
	lcd_write_cmd(FUNCTION_CMD_BASE | (1<<NR_LINES_BIT));
	/* Display ctrl:Disp/Curs/Blnk=ON    */
	lcd_delay (1000);
	LCD_config(1,0,0);
	lcd_delay (1000);
	/* Entry mode: Move right, no shift  */
	lcd_write_cmd(ENTRY_MODE_BASE | (1<<DIRECTION_BIT));
	lcd_delay (1000);
	LCD_load( (BYTE *)&UserFont, sizeof (UserFont) );
	lcd_delay (1000);
	LCD_cls();
	return;

}

/******************************************************************************
** Function name:		LCD_load
**
** Descriptions:		Load user-specific characters into CGRAM		
**
** parameters:			pointer to the buffer and counter
** Returned value:		None
** 
******************************************************************************/
void LCD_load( BYTE *fp, DWORD cnt ) 
{
  DWORD i;

  lcd_write_cmd( CGRAM_ADRESS_BASE );	/* Set CGRAM address counter to 0    */
  for (i = 0; i < cnt; i++, fp++)  
  {
	lcd_write_data( *fp );
  }
  return;
}

/******************************************************************************
** Function name:		LCD_gotoxy
**
** Descriptions:		Set cursor position on LCD display. 
**						Left corner: 1,1, right: 16,2 
**
** parameters:			pixel X and Y
** Returned value:		None
** 
******************************************************************************/
void LCD_gotoxy( DWORD y, DWORD x )
{
  DWORD ddramAdress;

  ddramAdress = x; //xpos 1 is adress 0
  if (y > 0) //if y > 1
  {	 //offset address to second line
	 ddramAdress |= START_ADRESS_LINE2;
  }
  //calculate and send DDRAM addres
  lcd_write_cmd (ddramAdress | DDRAM_ADRESS_BASE);
  //store cursos position
  lcd_ptr = y*CHARS_PER_LINE + x;
  return;
}

/******************************************************************************
** Function name:		LCD_cls
**
** Descriptions:		Clear LCD display, move cursor to home position.		
**
** parameters:			None
** Returned value:		None
** 
******************************************************************************/
void LCD_cls( void ) 
{
  lcd_write_cmd (CLEAR_DISPLAY);
  LCD_gotoxy (1,1);
  return;
}

/******************************************************************************
** Function name:		LCD_config
**
** Descriptions:		Set display on/off, cursor on/off, blink on/off
**
** parameters:			display enable bit, cursor enable bit, blink enable bit
** Returned value:		None
** 
******************************************************************************/
void LCD_config(BYTE dispEnable, BYTE curEnable, BYTE blinkEnable )
{

	/* Display ctrl:Disp/Curs/Blnk=ON    */
	lcd_write_cmd(	ON_OFF_CONTROL_BASE 	|
					(dispEnable<<DISPLAY_ON_OFF_BIT)	|
					(curEnable<<CURSOR_ON_OFF_BIT)	|
					(blinkEnable<<BLINK_ON_OFF_BIT)	);
	return;
}

/******************************************************************************
** Function name:		LCD_putc
**
** Descriptions:		Print a character to LCD at current cursor position.		
**
** parameters:			byte character
** Returned value:		None
** 
******************************************************************************/
void LCD_putc( char c )
{ 
  if (lcd_ptr == CHARS_PER_LINE)
  {
	lcd_write_cmd (DDRAM_ADRESS_BASE | START_ADRESS_LINE2);
  }
  lcd_write_data(c);
  lcd_ptr++;
  return;
}

/******************************************************************************
** Function name:		LCD_printf
**
** Descriptions:		LCD_putc wrapper for pico printf
**
** parameters:			byte character
** Returned value:		None
**
******************************************************************************/
void LCD_printf( void *p, char c )
{
	LCD_putc(c);
	return;
}

/******************************************************************************
** Function name:		LCD_puts
**
** Descriptions:		Print a string to LCD display.		
**
** parameters:			pointer to the buffer
** Returned value:		None
** 
******************************************************************************/
void LCD_puts ( char *sp )
{
  while (*sp) 
  {
	LCD_putc (*sp++);
  }
  return;
}

/******************************************************************************
** Function name:		LCD_bargraph
**
** Descriptions:		Print a bargraph to LCD display.
**						- val:  value 0..100 %
**						- size: size of bargraph 1..16		
**
** parameters:			value and size
** Returned value:		None
** 
******************************************************************************/
void LCD_bargraph( DWORD val, DWORD size ) 
{
  DWORD i;

  val = val * size / 20;               /* Display matrix 5 x 8 pixels       */
  for (i = 0; i < size; i++) 
  {
	if (val > 5) 
	{
	  LCD_putc(5);
	  val -= 5;
	}
	else 
	{
	  LCD_putc(val);
	  break;
    }
  }
  return;
}

/*****************************************************************************
**                            End Of File
******************************************************************************/

