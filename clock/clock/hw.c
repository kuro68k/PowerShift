/*
 * hw.c
 *
 * Created: 03/07/2018 10:04:27
 */

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include "stdio_fast.h"
#include "xmega.h"
#include "hw.h"

const __flash char rst_flags[6][4] = { "POR", "EXT", "BOR", "WDR", "PDI", "SRF" };

/**************************************************************************************************
* Set up hardware after reset
*/
void HW_init(void)
{
	// IO pins
	PORTA.OUT = 0x00;
	PORTA.DIR = 0xFF;

	PORTC.OUT = SR_OE_PIN_bm;		// OE active low
	PORTC.DIR = ~(BUTTON1_PIN_bm | BUTTON2_PIN_bm);
	ENABLE_PULLUP(PORTC.PIN3CTRL);	// button 2
	ENABLE_PULLUP(PORTC_PIN6CTRL);	// button 1

	PORTD.OUT = PIN3_bm;			// debug TX
	PORTD.DIR = 0xFF;

	PORTR.OUT = 0;
	PORTR.DIR = 0xFF;				// will be overridden by crystal/extosc

	// 2MHz main clock
	OSC.CTRL |= OSC_RC2MEN_bm;
	while (!(OSC.STATUS & OSC_RC2MRDY_bm));
	CCPWrite(&CLK.CTRL, CLK_SCLKSEL_RC2M_gc);
	CCPWrite(&CLK.PSCTRL, CLK_PSADIV_1_gc | CLK_PSBCDIV_1_1_gc);
	OSC.CTRL = OSC_RC2MEN_bm;	// disable all other clocks

	STDIO_init();
	fputs_P(PSTR("\r\nClock "), stdout);
	uint8_t mask = 1;
	for (uint8_t i = 0; i < 6; i++)
	{
		if (RST.STATUS & mask) fputs_P(&rst_flags[i][0], stdout);
		mask <<= 1;
	}
	fputs_P(PSTR("\r\n"), stdout);
	RST.STATUS = 0xFF;	// clear reset bits

	// 32KHz clock
#ifdef RTC_USE_EXTCLK
	OSC.XOSCCTRL = OSC_XOSCSEL_EXTCLK_gc;
#endif
#ifdef RTC_USE_32K_CRYSTAL
	OSC.XOSCCTRL = OSC_XOSCSEL_32KHz_gc;
#endif
	OSC.CTRL |= OSC_XOSCEN_bm;
	while (!(OSC.STATUS & OSC_XOSCRDY_bm));
	CLK.RTCCTRL = CLK_RTCSRC_EXTCLK_gc | CLK_RTCEN_bm;

	// LED flashing timer
	TCC5.CTRLA = 0;
	TCC5.CTRLB = TC_WGMODE_SINGLESLOPE_gc;
	TCC5.CTRLC = 0;
	TCC5.CTRLD = 0;
	TCC5.CTRLE = TC_CCAMODE_COMP_gc;
	TCC5.INTCTRLA = 0;
	TCC5.INTCTRLB = 0;
	TCC5.PER = 1953;	// 1Hz
	TCC5.CCA = 500;
	TCC5.CTRLA = TC_CLKSEL_DIV1024_gc;

	// start interrupts
	CCPWrite(&PMIC.CTRL, PMIC_LOLVLEN_bm | PMIC_MEDLVLEN_bm | PMIC_HILVLEN_bm);
	sei();
}

/**************************************************************************************************
* Control LED
*/
void HW_led_on(void)
{
	TCC5.CCA = TCC5.PER + 1;
	TCC5.CTRLC = 0;
	TCC5.CTRLGSET = TC_CMD_RESTART_gc;
}

void HW_led_off(void)
{
	TCC5.CCA = TCC5.PER + 1;
	TCC5.CTRLC = TC5_POLA_bm;
	TCC5.CTRLGSET = TC_CMD_RESTART_gc;
}

void HW_led_flash(uint8_t hertz, uint8_t duty_pc)
{
	uint16_t per = 1953 / hertz;
	uint32_t cc = per;
	cc *= duty_pc;
	cc /= 100;
	TCC5.PER = per;
	TCC5.CCA = cc;
	TCC5.CTRLC = 0;
	TCC5.CTRLGSET = TC_CMD_RESTART_gc;
}
