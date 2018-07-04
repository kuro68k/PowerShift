/*
 * _7seg.c
 *
 * Created: 03/07/2018 14:39:04
 */

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include "hw.h"
#include "rtc.h"
#include "7seg.h"

const __flash uint8_t character_lut[16] = { 0b11111100,	// 0
											0b01100000,	// 1
											0b11011010,	// 2
											0b11110010,	// 3
											0b01100110,	// 4
											0b10110110,	// 5
											0b10111110,	// 6
											0b11100000,	// 7
											0b11111110,	// 8
											0b11110110,	// 9
											0b11101110,	// A
											0b00111110,	// b
											0b10011100,	// C
											0b01111010,	// d
											0b10011110,	// E
											0b10001110,	// F
};

/**************************************************************************************************
* Init display
*/
void SEG_init(void)
{
	SR_SPI.INTCTRL = 0;
	SR_SPI.CTRLB = SPI_BUFMODE_BUFMODE1_gc;
	SR_SPI.CTRL = SPI_ENABLE_bm | SPI_MASTER_bm | SPI_MODE0_bm | SPI_PRESCALER_DIV16_gc;
	SR_SPI.DATA = 0x00;	// dummy byte for BUFMODE1

	// clear and enable outputs
	SR_PORT.OUTCLR = SR_CLR_PIN_bm;
	_delay_ms(1);
	SR_PORT.OUTSET = SR_CLR_PIN_bm;
	SR_PORT.OUTCLR = SR_OE_PIN_bm;
}

/**************************************************************************************************
* Set display
*/
void seg_set_display(uint8_t *str)
{
	SR_PORT.OUTCLR = SR_RCLK_PIN_bm;

	for (uint8_t i = 0; i < 5; i++)
	{
		while(!(SR_SPI.STATUS & SPI_DREIF_bm));
		SR_SPI.STATUS = SPI_TXCIF_bm;
		SR_SPI.DATA = *str++;
	}
	while(!(SR_SPI.STATUS & SPI_TXCIF_bm));		// wait for all data to clear register

	SR_PORT.OUTSET = SR_RCLK_PIN_bm;
}

/**************************************************************************************************
* uint8 to decimal
*/
void seg_uint8_to_decimal(uint8_t v, uint8_t *tens, uint8_t *units)
{
	*tens = 0;
	while (v > 9)
	{
		(*tens)++;
		v -= 10;
	}
	*units = v;
}

/**************************************************************************************************
* Display time
*/
void SEG_show_time(RTC_TIME_t *time, uint8_t mask)
{
	uint8_t digits[5];
	uint8_t t, u;

	seg_uint8_to_decimal(time->mins, &t, &u);
	digits[0] = character_lut[u];
	digits[1] = character_lut[t];

	digits[2] = 0b00000010;	// -

	seg_uint8_to_decimal(time->hours, &t, &u);
	digits[3] = character_lut[u];
	digits[4] = character_lut[t];

	uint8_t m = 1;
	for (uint8_t i = 0; i < 5; i++)
	{
		if (!(m & mask)) digits[i] = 0;
		m <<= 1;
	}

	seg_set_display(digits);
}
