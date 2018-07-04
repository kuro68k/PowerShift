/*
 * rtc.c
 *
 * Created: 03/07/2018 10:07:57
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include "xmega.h"
#include "rtc.h"


volatile RTC_TIME_t	rtc_time;
volatile uint8_t RTC_second_tick = 0;
volatile uint8_t RTC_minute_tick = 0;

/**************************************************************************************************
* Set up RTC after reset
*/
void RTC_init(void)
{
	RTC.CTRL = 0;
	while (RTC.STATUS & RTC_SYNCBUSY_bm);
	RTC.PER = 2048;
	RTC.CNT = 0;
	RTC.INTCTRL = RTC_OVFINTLVL_LO_gc;
	RTC.CTRL = RTC_PRESCALER_DIV16_gc;
}

/**************************************************************************************************
* Set clock
*/
void RTC_set(const RTC_TIME_t *new_time)
{
	cli();
	memcpy((void *)&rtc_time, new_time, sizeof(RTC_TIME_t));
	sei();
}

/**************************************************************************************************
* Read clock
*/
void RTC_read(RTC_TIME_t *time)
{
	cli();
	memcpy(time, (void *)&rtc_time, sizeof(RTC_TIME_t));
	sei();
}

/**************************************************************************************************
* Add time to RTC
*/
void RTC_add(RTC_TIME_t *time, RTC_TIME_t *additonal)
{
	cli();

	time->secs += additonal->secs;
	if (time->secs > 59)
	{
		time->secs -= 60;
		time->mins++;
	}

	time->mins += additonal->mins;
	if (time->mins > 59)
	{
		time->mins -= 60;
		time->hours++;
	}

	time->hours += additonal->hours;

}

/**************************************************************************************************
* Stop clock
*/
void RTC_stop(void)
{
	RTC.CTRL = 0;
	while (RTC.STATUS & RTC_SYNCBUSY_bm);
}

/**************************************************************************************************
* Restart clock from beginning of the current second
*/
void RTC_restart(void)
{
	RTC.CTRL = 0;
	while (RTC.STATUS & RTC_SYNCBUSY_bm);
	RTC.CNT = 0;
	RTC.CTRL = RTC_PRESCALER_DIV16_gc;
}

/**************************************************************************************************
* Second tick interrupt handler
*/
ISR(RTC_OVF_vect)
{
	RTC_second_tick = 0xFF;

	rtc_time.secs++;
	if (rtc_time.secs > 59)
	{
		RTC_minute_tick = 0xFF;
		rtc_time.secs = 0;
		rtc_time.mins++;
		if (rtc_time.mins > 59)
		{
			rtc_time.mins = 0;
			rtc_time.hours++;
			if (rtc_time.hours > 23)
			{
				rtc_time.hours++;
				rtc_time.day++;
			}
		}
	}
}
