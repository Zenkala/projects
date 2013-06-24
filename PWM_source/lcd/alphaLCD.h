/*****************************************************************************
 *   alphaLCD.h:  Header file for NXP LPC23xx/24xx Family Microprocessors
 *
 *   based on portlcd.c by NXP, altered by daniel bloemendaal en tom vocke to fit
 *   KS0070B controller and board pinout
 *
******************************************************************************/
#ifndef __PORTLCD_H 
#define __PORTLCD_H

#include <type.h>
#include <integer.h>
/* These types must be 16-bit, 32-bit or larger integer */


/*KS0070B controller info

DRAM stores a maximum of 80x8 bits  (80 characters)

1-line display:
adres range line 1: 0x00-0x4F

2-line display:
adres range line 1: 0x00-0x27
adres range line 2: 0x40-0x67

CGROM has a 5x7-dot 192 character pattern, and a 5x10-dot 32 character pattern
CGRAM has up to 5x8-dot 8 characters for used defined characters

*/

//KS0070B LCD info
#define START_ADRESS_LINE1	(0x00)
#define START_ADRESS_LINE2	(0x40)
#define NUMBER_OF_LINES		(2) 	//only 2 implemented atm.
#define CHARS_PER_LINE		(16)	//max 24


//KS0070B LCD commands
#define CLEAR_DISPLAY		(0x01)	//clears display and moves cursor to home
#define RETURN_HOME			(0x02)	//DDRAM adress = 0, cursos is reset

#define ENTRY_MODE_BASE		(0x04)	//base command for entry mode control
#define DIRECTION_BIT		(1)		//increment/decrement setting bit (1=right)
#define DISP_SHIFT_BIT		(0)		//display shift on DDRAM read control bit (1=enable)

#define ON_OFF_CONTROL_BASE	(0x08)	//base command for on off control
#define DISPLAY_ON_OFF_BIT	(2)		//display enable bit position (1=enable)
#define CURSOR_ON_OFF_BIT	(1)		//cursor enable bit position (1=enable), I/D is unchanged
#define BLINK_ON_OFF_BIT	(0)		//cursor blink control bit position (1=enable)

#define SHIFT_CURSOR_LEFT	(0x10)	//shift cursor one position to the left
#define SHIFT_CURSOS_RIGHT	(0x14)	//shift cursor one position to the right
#define SHIFT_DISP_LEFT		(0x18)	//shift entire display one position to the left
#define SHIFT_DISP_RIGHT	(0x1C)	//shift entire display one position to the right

#define FUNCTION_CMD_BASE	(0x20)	//configuration command base
#define DATA_LENGTH_BIT		(4)		//1=8bit data bus, 0=4bit data bus
#define NR_LINES_BIT		(3)		//1=2-line display mode, 0=1-line display mode
#define FONT_TYPE_BIT		(2)		//1=5x10 dot font, 0=5x7 dot font

#define CGRAM_ADRESS_BASE	(0x40)  //base CMD for CGRAM adress set
#define DDRAM_ADRESS_BASE	(0x80)	//base CMD for DDRAM adress set

//LCD hardware interface definitions

//Data lines (must be in order)
#define DISP_DATA0		(23)
#define DISP_DATA1		(24)
#define DISP_DATA2		(25)
#define DISP_DATA3		(26)
#define DISP_DATA_MASK	(	(1 << DISP_DATA0) 	|\
							(1 << DISP_DATA1) 	|\
							(1 << DISP_DATA2) 	|\
							(1 << DISP_DATA3)	)

#define DISP_DATA_DIR	FIO0DIR
#define DISP_DATA_CLR	FIO0CLR
#define DISP_DATA_PIN	FIO0PIN
#define DISP_DATA_SET	FIO0SET

//control lines
#define DISP_RS			(4)
#define DISP_RS_DIR		FIO0DIR
#define DISP_RS_CLR		FIO0CLR
#define DISP_RS_PIN		FIO0PIN
#define DISP_RS_SET		FIO0SET

#define DISP_EN			(5)
#define DISP_EN_DIR		FIO0DIR
#define DISP_EN_CLR		FIO0CLR
#define DISP_EN_PIN		FIO0PIN
#define DISP_EN_SET		FIO0SET

//if board hardware V! is used
#ifdef BOARD_V1
#define DISP_PWR		(30)
#define DISP_PWR_DIR	FIO1DIR
#define DISP_PWR_CLR	FIO1CLR
#define DISP_PWR_PIN	FIO1PIN
#define DISP_PWR_SET	FIO1SET

#define DISP_RW			(3)
#define DISP_RW_DIR		FIO2DIR
#define DISP_RW_CLR		FIO2CLR
#define DISP_RW_PIN		FIO2PIN
#define DISP_RW_SET		FIO2SET
#else

//TV moved to other pin (p2.3 -> p1.30)
#define DISP_RW			(30)
#define DISP_RW_DIR		FIO1DIR
#define DISP_RW_CLR		FIO1CLR
#define DISP_RW_PIN		FIO1PIN
#define DISP_RW_SET		FIO1SET

#endif
/*****************************************************************************
**                            Function Prototypes
******************************************************************************/
extern void LCD_init(void);
extern void LCD_load(BYTE *fp, DWORD cnt);
extern void LCD_gotoxy(DWORD x, DWORD y);
extern void LCD_cls(void);
extern void LCD_config(BYTE dispEnable, BYTE curEnable, BYTE blinkEnable );
extern void LCD_putc(char c);
extern void LCD_printf( void *p, char c );
extern void LCD_puts(char *sp);
extern void LCD_bargraph(DWORD val, DWORD size);

/* Local Function Prototypes */
extern void lcd_delay( DWORD cnt );
extern void lcd_write( DWORD c );
extern void lcd_write_nibble( BYTE nibble );
extern DWORD lcd_read_stat( void );
extern BYTE lcd_read_byte( BYTE adress );
extern void lcd_write_cmd( BYTE cmd );
extern void lcd_write_data( BYTE data );
extern void lcd_wait_busy( void );

#endif /* end __PORTLCD_H */
/*****************************************************************************
**                            End Of File
******************************************************************************/
