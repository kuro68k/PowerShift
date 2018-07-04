/*
 * rtc.h
 *
 * Created: 03/07/2018 10:11:59
 */


#ifndef RTC_H_
#define RTC_H_


#define RTC_USE_EXTCLK
//#define RTC_USE_32K_CRYTAL


typedef struct
{
	uint8_t		secs;
	uint8_t		mins;
	uint8_t		hours;
	uint16_t	day;
} RTC_TIME_t;


extern volatile uint8_t RTC_second_tick;
extern volatile uint8_t RTC_minute_tick;

extern void RTC_init(void);
extern void RTC_set(const RTC_TIME_t *new_time);
extern void RTC_read(RTC_TIME_t *time);
extern void RTC_stop(void);
extern void RTC_restart(void);


#endif /* RTC_H_ */