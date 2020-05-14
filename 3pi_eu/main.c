/* 3pi_eu - an application for the Pololu 3pi Robot
 *
 * This application uses the Pololu AVR C/C++ Library.  For help, see:
 * -User's guide: http://www.pololu.com/docs/0J20
 * -Command reference: http://www.pololu.com/docs/0J18
 *
 * Created: 2/14/2020 12:05:49 PM
 *  Author: Robert
 */

#include <pololu/3pi.h>
#include <string.h>
#include <stdio.h>
#include "./3pi_pin_mask.h"

#define WAITING_MESSAGE ("waiting")
#define MAX_ADC_LOOPS 5

void config_pins();

void config_fast_pwm();
void set_mottors(char on_off);
void set_PWM(char left_mottor, char right_mottor);
void move_test();

void test_potentiometer_read_8_bit();
void init_potentiometer();
void test_temperature_sensor();

int main() {
	config_pins();
	config_fast_pwm();
	
	play_from_program_space(PSTR(">g32>>c32"));  // Play welcoming notes.
	
	// let's test the motors
	move_test();
	delay_ms(1000);
	
	// let's test the ADC
	test_potentiometer_read_8_bit();
	delay_ms(1000);
	
	//test_temperature_sensor();
	delay_ms(1000);
	
	char* message = WAITING_MESSAGE;
	char* old_message = message;
	clear();
	print(message);

	while(1) {
		if (old_message != message) {
			clear();
			print(message);
			old_message = message;
			// turn off LEDs
			PORTD &= (~PD1_M) & (~PD7_M);
			delay_ms(50);
		}

		// Print battery voltage (in mV) on the LCD.
		if (!(PINB & PB1_M)) {
			message = "left down";
			PORTD |= PD1_M; // turn on the red LED
			PORTD &= (~PD7_M); // turn off the green LED
		} else if (!(PINB & PB4_M)) {
			message = "mid down";
			PORTD |= PD1_M | PD7_M; // turn on the red and green LED
		} else if (!(PINB & PB5_M)) {
			message = "right down";
			PORTD |= PD7_M; // turn on the green LED
			PORTD &= (~PD1_M); // turn off the red LED
		} else {
			message = WAITING_MESSAGE;
		}
	}
}


// __TO_DO__ read from flash or eeprom the requaiered calibration values for the temperature seansor
void test_temperature_sensor() {
	/*
	char temp_char[10];
	sprintf(temp_char, "%d", MAX_ADC_LOOPS);
	clear();
	delay_ms(50);
	print("Test 2 ADC");
	lcd_goto_xy(0, 1);
	print(strcat(temp_char, " times"));
	
	init_test_temperature_sensor();
	delay_ms(1000);
	
	int count = 0, value = 0;
	char *count_string = &count; // to make the compiler quiet
	
	while (count < MAX_ADC_LOOPS) {
		while (ADCSRA & (1 << ADSC)) { // as long as the conversion didn't finish, wait. Not the most efficient way but all I know at the moment
			asm volatile("nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t"
			"nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t"
			::); // 16 no operation commands
		}
		
		char temp = ADCL;
		value = ADCH;
		value << 8;
		value += temp;
		value = (value - (273 + 100 - ))
		
		// do another conversion
		ADCSRA |= (1 << ADSC);
	}
	
	// disable ADC
	ADCSRA |= (0 << ADEN);
	*/
}


void init_test_temperature_sensor() {
	// select 1V1 internal reference and make a read on 10 bits (0 << ADLAR)
	ADMUX = (1 << REFS1) | (1 << REFS0) | (0 << ADLAR);
	// select pin 8 as input (dedicated for the temperature sensor)
	ADMUX |= (1 << MUX3) | (0 << MUX2) | (0 << MUX1) | (0 << MUX0);
	
	// select the prescaler: 128
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);
	
	// enable the ADC (but won't start it unless ADSC | ADATE is set to 1)
	ADCSRA |= (1 << ADEN);
}

void test_potentiometer_read_8_bit() {
	char temp_char[10];
	sprintf(temp_char, "%d", MAX_ADC_LOOPS);
	clear();
	delay_ms(50);
	print("Test 1 ADC");
	lcd_goto_xy(0, 1);
	print(strcat(temp_char, " times"));
	
	init_potentiometer();
	delay_ms(1000);
	
	char count = 0;
	char *count_string = &count; // to make the compiler quiet
	
	// enable the ADC and start the conversion
	// the first result will be given after 25 ADC clock cycles for initial configuring, for the next result will be 13 ADC clock cycles
	ADCSRA |= (1 << ADSC);
	
	while (count < MAX_ADC_LOOPS) {
		while (ADCSRA & (1 << ADSC)) { // as long as the conversion didn't finish, wait. Not the most efficient way but all I know at the moment
			asm volatile("nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t"
						 "nop\n\t""nop\n\t""nop\n\t""nop\n\t""nop\n\t"
						 ::); // 16 no operation commands
		}
		
		// __TO_FIX__
		clear();
		delay_ms(50);
		lcd_goto_xy(0,0);
		print_long(ADCH); // after a while the printed value of the reading becomes chineze (for real, no joke)
		lcd_goto_xy(0,1);
		print(strcat("loop ", count_string)); // here is a problem when displaying, it starts to print chineze characters
		++count;
		delay_ms(2000);
		
		// do another conversion
		ADCSRA |= (1 << ADSC);
	}
	
	// disable ADC
	ADCSRA |= (0 << ADEN);
}

void init_potentiometer() {
	// select AV_cc as reference and make a read on 8 bits (1 << ADLAR)
	ADMUX = (0 << REFS1) | (1 << REFS0) | (1 << ADLAR);
	// select pin 7 as input
	ADMUX |= (0 << MUX3) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0);
	
	// select the prescaler (ADC frequency = Chip frequency / prescaler)
	ADCSRA |= (1 << ADPS2) | (0 << ADPS1) | (1 << ADPS0); // 125 kHz = 4 MHz / 32
	
	// enable the ADC (but won't start it unless ADSC | ADATE is set to 1)
	ADCSRA |= (1 << ADEN);
}

void move_test() {
	set_mottors(1);
	
	set_PWM(170, 170);
	delay_ms(1200);
	
	set_PWM(170,86);
	delay_ms(1150);

	set_PWM(170, 170);
	delay_ms(1200);
	
	set_PWM(128, 128);
	clear();
	print("Stopped");
	delay_ms(1000);
	
	set_mottors(0);
}

void set_PWM(char left_mottor, char right_mottor) {
	// Sets the speed and direction of the mottors
	//   0 <--> 127 Reverse
	// 128 -------> Stop
	// 129 <--> 255 Forward
	
	OCR0A = left_mottor;
	OCR0B = left_mottor;
	
	OCR2A = right_mottor;
	OCR2B = right_mottor;
}

void config_fast_pwm() {
	//               Mode | WGM02 | WGM01 | WGM00 | Description | TOP  | Update of output pin (OCRx) at
	//                 3  |   0   |   1   |   1   |  Fast PWM   | 0xFF |          BOTTOM
	//                 7  |   1   |   1   |   1   |  Fast PWM   | OCRA |          BOTTOM
	// note: BOTTOM = 0x00
	//       
	// We will use Mode 5 on the 8-bit timers (Timer/Counter0, Timer/Counter2) with a frequency of ~50Hz on a 1Mhz processor (see page 82 of the next link for the formula)
	// We have to set the bits in registers TCCRnA and TCCRnB according to the tables on pages 84 - 87: microchip.com/downloads/en/DeviceDoc/Atmel-7810-Automotive-Microcontrollers-ATmega328P_Datasheet.pdf
	// The wiring of the 3pi robot connects OCRx to the dual H-Bridge chip
	
	// ---> Left Motor:
	// Preset the motor to middle by setting the on/off values of the H-bridge to be in the middle
	OCR0A = 128; // they have to be equal
	OCR0B = 128; // they have to be equal |<--->| More explaining at the link after minute 3:30 : youtube.com/watch?v=QYQE_za8KQQ
	// Set the registers
	TCCR0A |= (1 << COM0A1) | (0 << COM0A0) | (1 << COM0B1) | (1 << COM0B0) | (1 << WGM01) | (1 << WGM00);
	TCCR0B |= (0 << WGM02) | (0 << CS02)  | (1 << CS01)  | (1 << CS00);

	// ---> Right Motor:
	// Preset the motor to middle by setting the on/off values of the H-bridge to be in the middle
	OCR2A = 128; // they have to be equal
	OCR2B = 128; // they have to be equal
	// Set the registers
	TCCR2A |= (1 << COM2A1) | (0 << COM2A0) | (1 << COM2B1) | (1 << COM2B0) | (1 << WGM01) | (1 << WGM00);
	TCCR2B |= (0 << WGM02) | (0 << CS02)  | (1 << CS01)  | (1 << CS00);
}

void set_mottors(char on_off) {
	if (!on_off) { // disable
		// set motor pins as input and disable them
		DDRB &= ~PB3_M;
		DDRD &= ~PD3_M & ~PD5_M & ~PD6_M;
		// set pull-up resistor on
		//PORTB |= PB3_M;
		//PORTD |= PD3_M | PD5_M | PD6_M;
		asm volatile("nop\n\t"
					 "nop\n\t"
					 ::);
	} else { // enable
		// set pull-up resistor off
		//PORTB &= ~PB3_M;
		//PORTD &= ~PD3_M & ~PD5_M & ~PD6_M;
		// set motor pins as output and enable them
		DDRB |= PB3_M;
		DDRD |= PD3_M | PD5_M | PD6_M;
		asm volatile("nop\n\t"
					 "nop\n\t"
					 ::);
	}
}

void config_pins() {
	// INPUTS
	// PB1, PB4, PB5 set as input by default; with pull-up resistors set off by default!!!
	PORTB |= PB1_M | PB4_M | PB5_M;

	// OUTPUTS
	// set PD1 (red LED), PD7 (green LED) as outputs
	DDRD |= PD1_M | PD7_M;
}