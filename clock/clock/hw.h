/*
 * hw.h
 *
 * Created: 03/07/2018 10:02:19
 */


#ifndef HW_H_
#define HW_H_


#define BUTTON_PORT				PORTC
#define BUTTON1_PIN_bm			PIN6_bm
#define BUTTON2_PIN_bm			PIN3_bm

#define SR_SPI					SPIC
#define SR_PORT					PORTC
#define SR_RCLK_PIN_bm			PIN0_bm
#define SR_OE_PIN_bm			PIN1_bm
#define SR_CLR_PIN_bm			PIN2_bm
#define SR_CLK_PIN_bm			PIN5_bm
#define SR_DAT_PIN_bm			PIN7_bm

#define LED_PORT				PORTC
#define LED_PIN_bm				PIN4_bm

#define NTC_PORT				PORTA
#define NTC_EN_PIN_bm			PIN3_bm


extern void HW_init(void);
extern void HW_led_on(void);
extern void HW_led_off(void);
extern void HW_led_flash(uint8_t hertz, uint8_t duty_pc);


#endif /* HW_H_ */