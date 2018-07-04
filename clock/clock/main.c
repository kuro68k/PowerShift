/*
 * clock.c
 *
 * Created: 03/07/2018 10:01:01
 * License: GPLv3
 */

#include <avr/io.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <stdbool.h>
#include "hw.h"
#include "rtc.h"
#include "7seg.h"

int main(void)
{
	HW_init();
	RTC_init();
	SEG_init();

	SLEEP.CTRL = SLEEP_SMODE_IDLE_gc | SLEEP_SEN_bm;
	for(;;)
	{
		while (!RTC_minute_tick)
			sleep_cpu();
		RTC_minute_tick = 0;

		RTC_TIME_t time;
		RTC_read(&time);
		SEG_show_time(&time, 0xFF);
	}
}

void flash_time(RTC_TIME_t *time, uint8_t digit_pair)
{
	uint8_t mask = 0b11;
	if (TCD5.CTRLC & TC5_CMPA_bm) mask = 0;
	if (digit_pair == 1) mask <<= 3;
	mask ^= 0xFF;
	SEG_show_time(time, mask);
}

void inc_time(RTC_TIME_t *time, bool inc_hours, bool inc_secs)
{
	if (inc_hours)
	{
		time->hours++;
		if (time->hours > 23)
			time->hours = 0;
	}

	if (inc_secs)
	{
		time->mins++;
		if (time->mins > 59)
			time->mins = 0;
	}
}

void set_time(void)
{
	RTC_TIME_t time;
	RTC_read(&time);
	time.secs = 0;

	// digit flashing timer
	TCD5.CTRLA = 0;
	TCD5.CTRLB = TC_WGMODE_SINGLESLOPE_gc;
	TCD5.CTRLC = 0;
	TCD5.CTRLD = 0;
	TCD5.CTRLE = 0;		// internal compare only
	TCD5.INTCTRLA = 0;
	TCD5.INTCTRLB = 0;
	TCD5.PER = 1953;	// 1Hz
	TCD5.CCA = 976;
	TCD5.CNT = 976;		// start with digits off
	TCD5.CTRLA = TC_CLKSEL_DIV1024_gc;

	// wait for user to release button 1
	do
	{
		flash_time(&time, 0);
		_delay_ms(250);
	} while (!(BUTTON_PORT.IN & BUTTON1_PIN_bm));
	_delay_ms(100);

	// increment hours and minutes
	for (uint8_t i = 0; i < 2;)
	{
		flash_time(&time, i);

		if (!(BUTTON_PORT.IN & BUTTON2_PIN_bm))	// increment
		{
			inc_time(&time, i == 0, i == 1);

			uint8_t hold = 0;
			TCD5.CTRLGSET = TC_CMD_RESTART_gc;	// light changed digits
			while (!(BUTTON_PORT.IN & BUTTON2_PIN_bm))
			{
				flash_time(&time, i);
				_delay_ms(100);
				hold++;
				if (hold > 5)					// fast increment
				{
					while (!(BUTTON_PORT.IN & BUTTON2_PIN_bm))
					{
						inc_time(&time, i == 0, i == 1);
						SEG_show_time(&time, 0xFF);
						_delay_ms(200);
					}
				}
			}

			_delay_ms(250);		// debounce
		}

		if (!(BUTTON_PORT.IN & BUTTON1_PIN_bm))
		{
			i++;
			while (!(BUTTON_PORT.IN & BUTTON1_PIN_bm));
		}

		_delay_ms(100);
	}
}
