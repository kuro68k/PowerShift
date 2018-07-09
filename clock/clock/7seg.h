/*
 * _7seg.h
 *
 * Created: 03/07/2018 14:38:54
 */


#ifndef _7SEG_H_
#define _7SEG_H_


extern void SEG_init(void);
extern void SEG_set_display(uint8_t *str);
extern void SEG_show_time(RTC_TIME_t *time, uint8_t mask);


#endif /* _7SEG_H_ */