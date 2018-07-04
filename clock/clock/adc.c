/*
 * adc.c
 *
 * Created: 04/07/2018 11:17:55
 */

#include <avr/io.h>
#include <util/delay.h>
#include <math.h>
#include "hw.h"
#include "adc.h"

#define ADC_SIGNED_TO_MV_RATIO		(1000.0 / 2048.0)

#define NTC_VIN_MV			3300.0
#define NTC_B_COEFFICIENT	3977
#define NTC_NOMINAL_TEMP_C	25.0
#define NTC_SERIES_RES		120000
#define	NTC_NOMINAL_RES		10000

/**************************************************************************************************
* Read temperature from NTC. Returns Celcius.
*/
int8_t ADC_read_ntc(void)
{
	ADCA.CTRLA = ADC_FLUSH_bm;
	ADCA.CTRLA = 0;

	ADCA.CTRLB = ADC_RESOLUTION_12BIT_gc | ADC_CURRLIMIT_NO_gc | ADC_CONMODE_bm;
	ADCA.REFCTRL = ADC_REFSEL_INT1V_gc | ADC_BANDGAP_bm;
	ADCA.EVCTRL = 0;
	ADCA.PRESCALER = ADC_PRESCALER_DIV16_gc;								// 125KHz @ 2MHz
	ADCA.SAMPCTRL = 0;

	ADCA.CH0.CTRL = ADC_CH_GAIN_1X_gc | ADC_CH_INPUTMODE_DIFFWGAINL_gc;
	ADCA.CH0.MUXCTRL = ADC_CH_MUXPOS_PIN2_gc | ADC_CH_MUXNEG_GND_MODE3_gc;
	ADCA.CH0.CORRCTRL = 0;
	ADCA.CH0.INTCTRL = 0;

	ADCA.CTRLA |= ADC_ENABLE_bm;
	NTC_PORT.OUTSET = NTC_EN_PIN_bm;
	_delay_ms(100);		// settling time

	// read NTC
	int32_t ave = 0;
	for (uint8_t i = 0; i < 8; i++)
	{
		ADCA.CH0.INTFLAGS = ADC_CH_IF_bm;
		ADCA.CH0.CTRL |= ADC_CH_START_bm;
		while (!(ADCA.CH0.INTFLAGS & ADC_CH_IF_bm));
		ave += ADCA.CH0.RES;
	}
	ave /= 8;
	float mv = (float)ave * ADC_SIGNED_TO_MV_RATIO;

	float ntc_res_ohms;
	ntc_res_ohms = (NTC_VIN_MV / mv) - 1.0;					// (Vin/Vout) - 1
	ntc_res_ohms = NTC_SERIES_RES / ntc_res_ohms;			// R1/( (Vin/Vout) - 1) )

	float steinhart;
	steinhart = ntc_res_ohms / NTC_NOMINAL_RES;				// R/Ro
	steinhart = log(steinhart);								// ln(R/Ro)
	steinhart /= NTC_B_COEFFICIENT;							// 1/B * ln(R/Ro)
	steinhart += 1.0 / (NTC_NOMINAL_TEMP_C + 273.15);		// + 1/To
	steinhart = 1.0 / steinhart;
	steinhart -= 273.15;									// Kelvin to Centigrade

	if (steinhart > 127) steinhart = 127;
	if (steinhart < -128) steinhart = -128;
	return steinhart;
}
