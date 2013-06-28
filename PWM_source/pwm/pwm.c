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
#include "pwm.h"


//calculate next frequency step.
unsigned long getNextFreq(unsigned long curFreq){

	//assign variables
	unsigned long tmp1,tmp2,result;
	//perform calculation
	tmp1 = curFreq * 105;
	tmp2 = tmp1 / 1000;
	result = tmp2 * 10;
	//limit to maximum frequency
	if(result > MAX_PWM_FREQUENCY){
		result = curFreq;
	}
	//return result
	return result;

}

//calculate previous frequency step.
unsigned long getPrevFreq(unsigned long curFreq){

	//assign variables
	unsigned long tmp1,tmp2,result;
	//perform calculation
	tmp1 = curFreq * 100;
	tmp2 = tmp1 / 1050;
	result = tmp3 * 10;
	//limit to maximum frequency
	if(result < MIN_PWM_FREQUENCY){
		result = curFreq;
	}
	//return result
	return result;

}

//calculate the PWM register setting closest to the current frequency
unsigned long getCompareVal(unsigned long curFreq){
	return (PWM_INPUT_FREQ / curFreq);
}

//calculate output frequency based on compare setting
unsigned long getFreqFromSetting(unsigned long curSetting){
	return (PWM_INPUT_FREQ / curSetting);
}





//build a string representing the frequency, result is 16 character string + termination
//format = F:123456Hz D:100
void getDispOutput(unsigned long curFreq, char *strBuff){

	unsigned int i   = 0;
	unsigned int len = 0;
	char freq[7];
	//store fixed characters
	strBuff[0] = 'F';
	strBuff[1] = ':';
	strBuff+8 = "Hz D:";
	//get converted frequency number
	sprintf(freq,"%lu",curFreq);
	//get string length
	len = strlen(freq);
	//fill buffer and extend with spaces
	for (i=7 ; i>1 ; i--){
		strBuff[i] = (i > 7-len) ? freq[i-(7-(len-1))] : ' ';
	}
	//get converted duty cycle number
	sprintf(freq,"%u",curDutyCycle);
	//get string length
	len = strlen(freq);
	//fill buffer and extend with spaces
	for (i=15 ; i>12 ; i--){
		strBuff[i] = (i > 15-len) ? freq[i-(15-(len-1))] : ' ';
	}


}



