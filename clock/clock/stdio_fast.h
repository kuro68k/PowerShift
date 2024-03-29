/*
 * stdio_fast.h
 *
 * Created: 22/06/2015 11:29:21
 *  Author: mojo-chan
 */


#ifndef STDIO_FAST_H_
#define STDIO_FAST_H_



#define PRINTF_MIN 1
#define PRINTF_STD 2
#define PRINTF_FLT 3

// remember to set linker options too, see avr-libc's vfprintf() documentation
#ifndef PRINTF_LEVEL
#define PRINTF_LEVEL PRINTF_FLT
#endif

#if PRINTF_LEVEL == PRINTF_MIN || PRINTF_LEVEL == PRINTF_STD \
    || PRINTF_LEVEL == PRINTF_FLT
/* OK */
#else
#error "Not a known printf level."
#endif




#define STDIO_USART				USARTD0
#define STDIO_USART_BSEL		150		// 115200 @ 2MHz
#define STDIO_USART_BSCALE		-7
#define STDIO_USART_CLK2X		USART_CLK2X_bm
#define STDIO_NEWLINE_R
#define STDIO_NEWLINE_N


extern void STDIO_init(void);


/**************************************************************************************************
* putchar() replacement
*/
#undef	putchar
#define putchar	__putchar
static inline int __putchar(int character)
{
	while(!(STDIO_USART.STATUS & USART_DREIF_bm));
	STDIO_USART.DATA = character;
	return character;
}


/**************************************************************************************************
* getchar() replacement
*/
#undef	getchar
#define getchar	__getchar
static inline int __getchar(void)
{
	if (STDIO_USART.STATUS & USART_RXCIF_bm)
		return STDIO_USART.DATA;
	else
		return EOF;
}

/**************************************************************************************************
* puts_P() replacement
*/
#undef	puts_P
#define puts_P	__puts_P
static inline int __puts_P(const char * __str)
{
	const __flash char * s = __str;

	while (*s != '\0')
	{
		while(!(STDIO_USART.STATUS & USART_DREIF_bm));
		STDIO_USART.DATA = *s++;
	}

	// newline
#if (defined STDIO_NEWLINE_RN || defined STDIO_NEWLINE_R)
	while(!(STDIO_USART.STATUS & USART_DREIF_bm));
	STDIO_USART.DATA = '\r';
#endif
#if (defined STDIO_NEWLINE_RN || defined STDIO_NEWLINE_N)
	while(!(STDIO_USART.STATUS & USART_DREIF_bm));
	STDIO_USART.DATA = '\n';
#endif

	return 1;
}


/**************************************************************************************************
* puts() replacement
*/
#undef	puts
#define puts	__puts
static inline int puts(const char * __str)
{
	while (*__str != '\0')
	{
		while(!(STDIO_USART.STATUS & USART_DREIF_bm));
		STDIO_USART.DATA = *__str++;
	}

	// newline
#if (defined STDIO_NEWLINE_RN || defined STDIO_NEWLINE_R)
	while(!(STDIO_USART.STATUS & USART_DREIF_bm));
	STDIO_USART.DATA = '\r';
#endif
#if (defined STDIO_NEWLINE_RN || defined STDIO_NEWLINE_N)
	while(!(STDIO_USART.STATUS & USART_DREIF_bm));
	STDIO_USART.DATA = '\n';
#endif

	return 1;
}



#endif /* STDIO_FAST_H_ */