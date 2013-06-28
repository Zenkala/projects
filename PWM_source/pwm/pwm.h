/*
 * pwm.h
 *
 *  Created on: Jun 24, 2013
 *      Author: tomv
 */

#ifndef PWM_H_
#define PWM_H_


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


//==================================================================================
//Definitions
//==================================================================================


#define MAX_PWM_FREQUENCY (320510) //menu will not go further than this
#define MIN_PWM_FREQUENCY (300) //menu will not go below this
#define PWM_INPUT_FREQ (16000000) //frequency going in to PWM block

//system definitions


//==================================================================================
// Type Definitions
//==================================================================================

//==================================================================================
// Custom Functions Prototypes
//==================================================================================

void pwm_init(); //initialize pwm counter to proper mode
void




#endif /* PWM_H_ */
