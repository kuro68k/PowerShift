EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:kuro
LIBS:Primayer
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Power shift register driver"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Licence: GPL V3"
$EndDescr
$Comp
L ATXMEGA32E5-AU U9
U 1 1 5B2FBBA8
P 3550 6050
F 0 "U9" H 2400 7100 50  0000 L BNN
F 1 "ATXMEGA32E5-AU" H 4200 4950 50  0000 L BNN
F 2 "TQFP32" H 3550 6050 50  0001 C CIN
F 3 "" H 3550 6050 50  0001 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR4
U 1 1 5B2FBBDD
P 5350 850
F 0 "#PWR4" H 5350 700 50  0001 C CNN
F 1 "+3.3V" H 5350 990 50  0000 C CNN
F 2 "" H 5350 850 50  0001 C CNN
F 3 "" H 5350 850 50  0001 C CNN
	1    5350 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 5B2FBBF3
P 1400 1300
F 0 "#PWR7" H 1400 1050 50  0001 C CNN
F 1 "GND" H 1400 1150 50  0000 C CNN
F 2 "" H 1400 1300 50  0001 C CNN
F 3 "" H 1400 1300 50  0001 C CNN
	1    1400 1300
	1    0    0    -1  
$EndComp
$Comp
L TPIC6B595 U2
U 1 1 5B2FBC8A
P 7800 1300
F 0 "U2" H 7400 1850 60  0000 C CNN
F 1 "TPIC6B595" H 8000 1850 60  0000 C CNN
F 2 "" H 7800 1300 60  0001 C CNN
F 3 "" H 7800 1300 60  0001 C CNN
	1    7800 1300
	1    0    0    -1  
$EndComp
$Comp
L AVR-PDI-6A J7
U 1 1 5B2FBD6F
P 3650 3000
F 0 "J7" H 3500 3250 50  0000 C CNN
F 1 "AVR-PDI-6A" H 3650 2750 50  0000 C CNN
F 2 "AVR-PDI-6" V 3100 3050 50  0001 C CNN
F 3 "" H 3650 3000 50  0000 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L MCP1700-3302E_SOT23 U1
U 1 1 5B2FBDDB
P 4550 950
F 0 "U1" H 4400 1075 50  0000 C CNN
F 1 "MCP1700" H 4550 1075 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4550 1175 50  0001 C CNN
F 3 "" H 4550 950 50  0001 C CNN
	1    4550 950 
	1    0    0    -1  
$EndComp
$Comp
L USB_A J2
U 1 1 5B2FC0C8
P 2150 1150
F 0 "J2" H 1950 1600 50  0000 L CNN
F 1 "MICRO_USB" H 1950 1500 50  0000 L CNN
F 2 "" H 2300 1100 50  0001 C CNN
F 3 "" H 2300 1100 50  0001 C CNN
	1    2150 1150
	1    0    0    -1  
$EndComp
Text Label 2900 1150 2    60   ~ 0
USB_DM
Text Label 2900 1250 2    60   ~ 0
USB_DP
$Comp
L GND #PWR9
U 1 1 5B2FC168
P 2150 1650
F 0 "#PWR9" H 2150 1400 50  0001 C CNN
F 1 "GND" H 2150 1500 50  0000 C CNN
F 2 "" H 2150 1650 50  0001 C CNN
F 3 "" H 2150 1650 50  0001 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
$Comp
L Barrel_Jack J1
U 1 1 5B2FC43F
P 1000 1100
F 0 "J1" H 1000 1310 50  0000 C CNN
F 1 "Barrel_Jack" H 1000 925 50  0000 C CNN
F 2 "" H 1050 1060 50  0001 C CNN
F 3 "" H 1050 1060 50  0001 C CNN
	1    1000 1100
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR5
U 1 1 5B2FD383
P 1400 900
F 0 "#PWR5" H 1400 750 50  0001 C CNN
F 1 "VPP" H 1400 1050 50  0000 C CNN
F 2 "" H 1400 900 50  0001 C CNN
F 3 "" H 1400 900 50  0001 C CNN
	1    1400 900 
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR3
U 1 1 5B2FD6B0
P 3750 850
F 0 "#PWR3" H 3750 700 50  0001 C CNN
F 1 "VPP" H 3750 1000 50  0000 C CNN
F 2 "" H 3750 850 50  0001 C CNN
F 3 "" H 3750 850 50  0001 C CNN
	1    3750 850 
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B2FD8A7
P 4050 1200
F 0 "C2" H 4075 1300 50  0000 L CNN
F 1 "10u" H 4075 1100 50  0000 L CNN
F 2 "" H 4088 1050 50  0001 C CNN
F 3 "" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 5B2FDB13
P 3750 1500
F 0 "#PWR8" H 3750 1250 50  0001 C CNN
F 1 "GND" H 3750 1350 50  0000 C CNN
F 2 "" H 3750 1500 50  0001 C CNN
F 3 "" H 3750 1500 50  0001 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B2FDBE0
P 5050 1200
F 0 "C3" H 5075 1300 50  0000 L CNN
F 1 "100u" H 5075 1100 50  0000 L CNN
F 2 "" H 5088 1050 50  0001 C CNN
F 3 "" H 5050 1200 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B2FDD02
P 5350 1200
F 0 "C4" H 5375 1300 50  0000 L CNN
F 1 "10u" H 5375 1100 50  0000 L CNN
F 2 "" H 5388 1050 50  0001 C CNN
F 3 "" H 5350 1200 50  0001 C CNN
	1    5350 1200
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR1
U 1 1 5B2FE046
P 2550 850
F 0 "#PWR1" H 2550 700 50  0001 C CNN
F 1 "VBUS" H 2550 1000 50  0000 C CNN
F 2 "" H 2550 850 50  0001 C CNN
F 3 "" H 2550 850 50  0001 C CNN
	1    2550 850 
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J3
U 1 1 5B2FEA36
P 8600 1200
F 0 "J3" H 8600 1600 50  0000 C CNN
F 1 "JST-ZR" H 8600 700 50  0000 C CNN
F 2 "" H 8600 1200 50  0001 C CNN
F 3 "" H 8600 1200 50  0001 C CNN
	1    8600 1200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR11
U 1 1 5B2FEED1
P 7050 1650
F 0 "#PWR11" H 7050 1500 50  0001 C CNN
F 1 "+3.3V" H 7050 1790 50  0000 C CNN
F 2 "" H 7050 1650 50  0001 C CNN
F 3 "" H 7050 1650 50  0001 C CNN
	1    7050 1650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B2FF026
P 7050 1900
F 0 "C5" H 7075 2000 50  0000 L CNN
F 1 "100n" H 7075 1800 50  0000 L CNN
F 2 "" H 7088 1750 50  0001 C CNN
F 3 "" H 7050 1900 50  0001 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 5B2FF3A3
P 7050 2150
F 0 "#PWR16" H 7050 1900 50  0001 C CNN
F 1 "GND" H 7050 2000 50  0000 C CNN
F 2 "" H 7050 2150 50  0001 C CNN
F 3 "" H 7050 2150 50  0001 C CNN
	1    7050 2150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR33
U 1 1 5B2FF81E
P 3300 4350
F 0 "#PWR33" H 3300 4200 50  0001 C CNN
F 1 "+3.3V" H 3300 4490 50  0000 C CNN
F 2 "" H 3300 4350 50  0001 C CNN
F 3 "" H 3300 4350 50  0001 C CNN
	1    3300 4350
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5B2FFAF9
P 3550 4600
F 0 "C10" H 3575 4700 50  0000 L CNN
F 1 "100n" H 3575 4500 50  0000 L CNN
F 2 "" H 3588 4450 50  0001 C CNN
F 3 "" H 3550 4600 50  0001 C CNN
	1    3550 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 5B2FFE81
P 3550 4800
F 0 "#PWR34" H 3550 4550 50  0001 C CNN
F 1 "GND" H 3550 4650 50  0000 C CNN
F 2 "" H 3550 4800 50  0001 C CNN
F 3 "" H 3550 4800 50  0001 C CNN
	1    3550 4800
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5B2FFFDE
P 4000 4600
F 0 "C11" H 4025 4700 50  0000 L CNN
F 1 "100n" H 4025 4500 50  0000 L CNN
F 2 "" H 4038 4450 50  0001 C CNN
F 3 "" H 4000 4600 50  0001 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR35
U 1 1 5B300026
P 4000 4800
F 0 "#PWR35" H 4000 4550 50  0001 C CNN
F 1 "GND" H 4000 4650 50  0000 C CNN
F 2 "" H 4000 4800 50  0001 C CNN
F 3 "" H 4000 4800 50  0001 C CNN
	1    4000 4800
	1    0    0    -1  
$EndComp
Text Label 1900 5250 0    60   ~ 0
PDI_C
Text Label 1900 5350 0    60   ~ 0
PDI_D
$Comp
L +3.3V #PWR21
U 1 1 5B300914
P 4100 2850
F 0 "#PWR21" H 4100 2700 50  0001 C CNN
F 1 "+3.3V" H 4100 2990 50  0000 C CNN
F 2 "" H 4100 2850 50  0001 C CNN
F 3 "" H 4100 2850 50  0001 C CNN
	1    4100 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR24
U 1 1 5B300A0D
P 4100 3150
F 0 "#PWR24" H 4100 2900 50  0001 C CNN
F 1 "GND" H 4100 3000 50  0000 C CNN
F 2 "" H 4100 3150 50  0001 C CNN
F 3 "" H 4100 3150 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
Text Label 2950 3100 0    60   ~ 0
PDI_C
Text Label 2950 2900 0    60   ~ 0
PDI_D
Text Label 1800 6350 0    60   ~ 0
USB_DM
Text Label 1800 6450 0    60   ~ 0
USB_DP
$Comp
L GND #PWR45
U 1 1 5B3015CA
P 3550 7300
F 0 "#PWR45" H 3550 7050 50  0001 C CNN
F 1 "GND" H 3550 7150 50  0000 C CNN
F 2 "" H 3550 7300 50  0001 C CNN
F 3 "" H 3550 7300 50  0001 C CNN
	1    3550 7300
	1    0    0    -1  
$EndComp
$Comp
L TPIC6B595 U4
U 1 1 5B30219B
P 7800 3150
F 0 "U4" H 7400 3700 60  0000 C CNN
F 1 "TPIC6B595" H 8000 3700 60  0000 C CNN
F 2 "" H 7800 3150 60  0001 C CNN
F 3 "" H 7800 3150 60  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J8
U 1 1 5B3021A1
P 8600 3050
F 0 "J8" H 8600 3450 50  0000 C CNN
F 1 "JST-ZR" H 8600 2550 50  0000 C CNN
F 2 "" H 8600 3050 50  0001 C CNN
F 3 "" H 8600 3050 50  0001 C CNN
	1    8600 3050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR27
U 1 1 5B3021AF
P 7050 3500
F 0 "#PWR27" H 7050 3350 50  0001 C CNN
F 1 "+3.3V" H 7050 3640 50  0000 C CNN
F 2 "" H 7050 3500 50  0001 C CNN
F 3 "" H 7050 3500 50  0001 C CNN
	1    7050 3500
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5B3021B5
P 7050 3750
F 0 "C7" H 7075 3850 50  0000 L CNN
F 1 "100n" H 7075 3650 50  0000 L CNN
F 2 "" H 7088 3600 50  0001 C CNN
F 3 "" H 7050 3750 50  0001 C CNN
	1    7050 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR30
U 1 1 5B3021C6
P 7050 4000
F 0 "#PWR30" H 7050 3750 50  0001 C CNN
F 1 "GND" H 7050 3850 50  0000 C CNN
F 2 "" H 7050 4000 50  0001 C CNN
F 3 "" H 7050 4000 50  0001 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1150 2450 1150
Wire Wire Line
	2450 1250 2900 1250
Wire Wire Line
	2050 1550 2050 1600
Wire Wire Line
	2050 1600 2150 1600
Wire Wire Line
	2150 1550 2150 1650
Connection ~ 2150 1600
Wire Wire Line
	1300 1100 1400 1100
Wire Wire Line
	1400 1100 1400 1300
Wire Wire Line
	1300 1200 1400 1200
Connection ~ 1400 1200
Wire Wire Line
	1300 1000 1400 1000
Wire Wire Line
	1400 1000 1400 900 
Wire Wire Line
	3750 850  3750 1050
Connection ~ 4050 950 
Wire Wire Line
	3750 1500 3750 1350
Wire Wire Line
	3750 1450 5350 1450
Wire Wire Line
	4550 1450 4550 1250
Connection ~ 4050 1450
Wire Wire Line
	4850 950  5350 950 
Wire Wire Line
	5050 950  5050 1050
Wire Wire Line
	5350 850  5350 1050
Connection ~ 5050 950 
Wire Wire Line
	5050 1450 5050 1350
Connection ~ 4550 1450
Wire Wire Line
	5350 1450 5350 1350
Connection ~ 5050 1450
Connection ~ 5350 950 
Wire Wire Line
	2450 950  2700 950 
Wire Wire Line
	2550 950  2550 850 
Wire Wire Line
	8250 900  8400 900 
Wire Wire Line
	8250 1000 8400 1000
Wire Wire Line
	8250 1100 8400 1100
Wire Wire Line
	8250 1200 8400 1200
Wire Wire Line
	8250 1300 8400 1300
Wire Wire Line
	8250 1400 8400 1400
Wire Wire Line
	8250 1500 8400 1500
Wire Wire Line
	8250 1600 8400 1600
Wire Wire Line
	7050 1650 7050 1750
Wire Wire Line
	7050 1700 7350 1700
Connection ~ 7050 1700
Wire Wire Line
	7350 1800 7300 1800
Wire Wire Line
	7300 1800 7300 2100
Wire Wire Line
	7300 2100 7050 2100
Wire Wire Line
	7050 2050 7050 2150
Wire Wire Line
	7300 1900 7350 1900
Connection ~ 7300 1900
Wire Wire Line
	7350 2000 7300 2000
Connection ~ 7300 2000
Connection ~ 7050 2100
Wire Wire Line
	3300 4350 3300 4900
Wire Wire Line
	3300 4400 4000 4400
Wire Wire Line
	3550 4400 3550 4450
Connection ~ 3300 4400
Wire Wire Line
	4000 4400 4000 4450
Connection ~ 3550 4400
Wire Wire Line
	3800 4900 3800 4400
Connection ~ 3800 4400
Wire Wire Line
	3550 4800 3550 4750
Wire Wire Line
	4000 4800 4000 4750
Wire Wire Line
	1900 5350 2200 5350
Wire Wire Line
	2200 5250 1900 5250
Wire Wire Line
	4050 3100 4100 3100
Wire Wire Line
	4100 3100 4100 3150
Wire Wire Line
	4050 2900 4100 2900
Wire Wire Line
	4100 2900 4100 2850
Wire Wire Line
	2950 2900 3250 2900
Wire Wire Line
	3250 3100 2950 3100
Wire Wire Line
	1800 6350 2200 6350
Wire Wire Line
	1800 6450 2200 6450
Wire Wire Line
	3500 7200 3500 7250
Wire Wire Line
	3500 7250 3600 7250
Wire Wire Line
	3600 7250 3600 7200
Wire Wire Line
	3550 7250 3550 7300
Connection ~ 3550 7250
Wire Wire Line
	8250 2750 8400 2750
Wire Wire Line
	8250 2850 8400 2850
Wire Wire Line
	8250 2950 8400 2950
Wire Wire Line
	8250 3050 8400 3050
Wire Wire Line
	8250 3150 8400 3150
Wire Wire Line
	8250 3250 8400 3250
Wire Wire Line
	8250 3350 8400 3350
Wire Wire Line
	8250 3450 8400 3450
Wire Wire Line
	7050 3500 7050 3600
Wire Wire Line
	7050 3550 7350 3550
Connection ~ 7050 3550
Wire Wire Line
	7350 3650 7300 3650
Wire Wire Line
	7300 3650 7300 3950
Wire Wire Line
	7300 3950 7050 3950
Wire Wire Line
	7050 3900 7050 4000
Wire Wire Line
	7300 3750 7350 3750
Connection ~ 7300 3750
Wire Wire Line
	7350 3850 7300 3850
Connection ~ 7300 3850
Connection ~ 7050 3950
Wire Wire Line
	8250 2000 8350 2000
Wire Wire Line
	7250 2350 7250 2750
Wire Wire Line
	7250 2750 7350 2750
Wire Wire Line
	8350 2000 8350 2350
Wire Wire Line
	8350 2350 7250 2350
Wire Bus Line
	6800 700  6800 6200
Entry Wire Line
	6800 900  6900 1000
Entry Wire Line
	6800 1000 6900 1100
Entry Wire Line
	6800 1100 6900 1200
Entry Wire Line
	6800 1200 6900 1300
Entry Wire Line
	6800 800  6900 900 
Wire Wire Line
	6900 900  7350 900 
Entry Wire Line
	6800 2750 6900 2850
Entry Wire Line
	6800 2850 6900 2950
Entry Wire Line
	6800 2950 6900 3050
Entry Wire Line
	6800 3050 6900 3150
Wire Wire Line
	8250 3850 8350 3850
Wire Wire Line
	8350 3850 8350 4200
Wire Wire Line
	8350 4200 7250 4200
$Comp
L TPIC6B595 U7
U 1 1 5B3043B5
P 7800 5000
F 0 "U7" H 7400 5550 60  0000 C CNN
F 1 "TPIC6B595" H 8000 5550 60  0000 C CNN
F 2 "" H 7800 5000 60  0001 C CNN
F 3 "" H 7800 5000 60  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J11
U 1 1 5B3043BB
P 8600 4900
F 0 "J11" H 8600 5300 50  0000 C CNN
F 1 "JST-ZR" H 8600 4400 50  0000 C CNN
F 2 "" H 8600 4900 50  0001 C CNN
F 3 "" H 8600 4900 50  0001 C CNN
	1    8600 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR38
U 1 1 5B3043C1
P 7050 5350
F 0 "#PWR38" H 7050 5200 50  0001 C CNN
F 1 "+3.3V" H 7050 5490 50  0000 C CNN
F 2 "" H 7050 5350 50  0001 C CNN
F 3 "" H 7050 5350 50  0001 C CNN
	1    7050 5350
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5B3043C7
P 7050 5600
F 0 "C13" H 7075 5700 50  0000 L CNN
F 1 "100n" H 7075 5500 50  0000 L CNN
F 2 "" H 7088 5450 50  0001 C CNN
F 3 "" H 7050 5600 50  0001 C CNN
	1    7050 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR42
U 1 1 5B3043CD
P 7050 5850
F 0 "#PWR42" H 7050 5600 50  0001 C CNN
F 1 "GND" H 7050 5700 50  0000 C CNN
F 2 "" H 7050 5850 50  0001 C CNN
F 3 "" H 7050 5850 50  0001 C CNN
	1    7050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4600 8400 4600
Wire Wire Line
	8250 4700 8400 4700
Wire Wire Line
	8250 4800 8400 4800
Wire Wire Line
	8250 4900 8400 4900
Wire Wire Line
	8250 5000 8400 5000
Wire Wire Line
	8250 5100 8400 5100
Wire Wire Line
	8250 5200 8400 5200
Wire Wire Line
	8250 5300 8400 5300
Wire Wire Line
	7050 5350 7050 5450
Wire Wire Line
	7050 5400 7350 5400
Connection ~ 7050 5400
Wire Wire Line
	7350 5500 7300 5500
Wire Wire Line
	7300 5500 7300 5800
Wire Wire Line
	7300 5800 7050 5800
Wire Wire Line
	7050 5750 7050 5850
Wire Wire Line
	7300 5600 7350 5600
Connection ~ 7300 5600
Wire Wire Line
	7350 5700 7300 5700
Connection ~ 7300 5700
Connection ~ 7050 5800
Wire Wire Line
	7250 4200 7250 4600
Wire Wire Line
	7250 4600 7350 4600
Entry Wire Line
	6800 4600 6900 4700
Entry Wire Line
	6800 4700 6900 4800
Entry Wire Line
	6800 4800 6900 4900
Entry Wire Line
	6800 4900 6900 5000
Wire Wire Line
	6900 4700 7350 4700
Wire Wire Line
	6900 4800 7350 4800
Wire Wire Line
	6900 4900 7350 4900
Wire Wire Line
	6900 5000 7350 5000
$Comp
L TPIC6B595 U3
U 1 1 5B3050D4
P 10050 1300
F 0 "U3" H 9650 1850 60  0000 C CNN
F 1 "TPIC6B595" H 10250 1850 60  0000 C CNN
F 2 "" H 10050 1300 60  0001 C CNN
F 3 "" H 10050 1300 60  0001 C CNN
	1    10050 1300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J4
U 1 1 5B3050DA
P 10850 1200
F 0 "J4" H 10850 1600 50  0000 C CNN
F 1 "JST-ZR" H 10850 700 50  0000 C CNN
F 2 "" H 10850 1200 50  0001 C CNN
F 3 "" H 10850 1200 50  0001 C CNN
	1    10850 1200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR13
U 1 1 5B3050E0
P 9300 1650
F 0 "#PWR13" H 9300 1500 50  0001 C CNN
F 1 "+3.3V" H 9300 1790 50  0000 C CNN
F 2 "" H 9300 1650 50  0001 C CNN
F 3 "" H 9300 1650 50  0001 C CNN
	1    9300 1650
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B3050E6
P 9300 1900
F 0 "C6" H 9325 2000 50  0000 L CNN
F 1 "100n" H 9325 1800 50  0000 L CNN
F 2 "" H 9338 1750 50  0001 C CNN
F 3 "" H 9300 1900 50  0001 C CNN
	1    9300 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 5B3050EC
P 9300 2150
F 0 "#PWR17" H 9300 1900 50  0001 C CNN
F 1 "GND" H 9300 2000 50  0000 C CNN
F 2 "" H 9300 2150 50  0001 C CNN
F 3 "" H 9300 2150 50  0001 C CNN
	1    9300 2150
	1    0    0    -1  
$EndComp
$Comp
L TPIC6B595 U5
U 1 1 5B3050F2
P 10050 3150
F 0 "U5" H 9650 3700 60  0000 C CNN
F 1 "TPIC6B595" H 10250 3700 60  0000 C CNN
F 2 "" H 10050 3150 60  0001 C CNN
F 3 "" H 10050 3150 60  0001 C CNN
	1    10050 3150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J9
U 1 1 5B3050F8
P 10850 3050
F 0 "J9" H 10850 3450 50  0000 C CNN
F 1 "JST-ZR" H 10850 2550 50  0000 C CNN
F 2 "" H 10850 3050 50  0001 C CNN
F 3 "" H 10850 3050 50  0001 C CNN
	1    10850 3050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR28
U 1 1 5B3050FE
P 9300 3500
F 0 "#PWR28" H 9300 3350 50  0001 C CNN
F 1 "+3.3V" H 9300 3640 50  0000 C CNN
F 2 "" H 9300 3500 50  0001 C CNN
F 3 "" H 9300 3500 50  0001 C CNN
	1    9300 3500
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5B305104
P 9300 3750
F 0 "C8" H 9325 3850 50  0000 L CNN
F 1 "100n" H 9325 3650 50  0000 L CNN
F 2 "" H 9338 3600 50  0001 C CNN
F 3 "" H 9300 3750 50  0001 C CNN
	1    9300 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR31
U 1 1 5B30510A
P 9300 4000
F 0 "#PWR31" H 9300 3750 50  0001 C CNN
F 1 "GND" H 9300 3850 50  0000 C CNN
F 2 "" H 9300 4000 50  0001 C CNN
F 3 "" H 9300 4000 50  0001 C CNN
	1    9300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 900  10650 900 
Wire Wire Line
	10500 1000 10650 1000
Wire Wire Line
	10500 1100 10650 1100
Wire Wire Line
	10500 1200 10650 1200
Wire Wire Line
	10500 1300 10650 1300
Wire Wire Line
	10500 1400 10650 1400
Wire Wire Line
	10500 1500 10650 1500
Wire Wire Line
	10500 1600 10650 1600
Wire Wire Line
	9300 1650 9300 1750
Wire Wire Line
	9300 1700 9600 1700
Connection ~ 9300 1700
Wire Wire Line
	9600 1800 9550 1800
Wire Wire Line
	9550 1800 9550 2100
Wire Wire Line
	9550 2100 9300 2100
Wire Wire Line
	9300 2050 9300 2150
Wire Wire Line
	9550 1900 9600 1900
Connection ~ 9550 1900
Wire Wire Line
	9600 2000 9550 2000
Connection ~ 9550 2000
Connection ~ 9300 2100
Wire Wire Line
	10500 2750 10650 2750
Wire Wire Line
	10500 2850 10650 2850
Wire Wire Line
	10500 2950 10650 2950
Wire Wire Line
	10500 3050 10650 3050
Wire Wire Line
	10500 3150 10650 3150
Wire Wire Line
	10500 3250 10650 3250
Wire Wire Line
	10500 3350 10650 3350
Wire Wire Line
	10500 3450 10650 3450
Wire Wire Line
	9300 3500 9300 3600
Wire Wire Line
	9300 3550 9600 3550
Connection ~ 9300 3550
Wire Wire Line
	9600 3650 9550 3650
Wire Wire Line
	9550 3650 9550 3950
Wire Wire Line
	9550 3950 9300 3950
Wire Wire Line
	9300 3900 9300 4000
Wire Wire Line
	9550 3750 9600 3750
Connection ~ 9550 3750
Wire Wire Line
	9600 3850 9550 3850
Connection ~ 9550 3850
Connection ~ 9300 3950
Wire Wire Line
	10500 2000 10600 2000
Wire Wire Line
	9500 2350 9500 2750
Wire Wire Line
	9500 2750 9600 2750
Wire Wire Line
	10600 2000 10600 2350
Wire Wire Line
	10600 2350 9500 2350
Entry Wire Line
	9050 900  9150 1000
Entry Wire Line
	9050 1000 9150 1100
Entry Wire Line
	9050 1100 9150 1200
Entry Wire Line
	9050 1200 9150 1300
Entry Wire Line
	9050 2750 9150 2850
Entry Wire Line
	9050 2850 9150 2950
Entry Wire Line
	9050 2950 9150 3050
Entry Wire Line
	9050 3050 9150 3150
Wire Wire Line
	10500 3850 10600 3850
Wire Wire Line
	10600 3850 10600 4200
Wire Wire Line
	10600 4200 9500 4200
$Comp
L TPIC6B595 U8
U 1 1 5B305153
P 10050 5000
F 0 "U8" H 9650 5550 60  0000 C CNN
F 1 "TPIC6B595" H 10250 5550 60  0000 C CNN
F 2 "" H 10050 5000 60  0001 C CNN
F 3 "" H 10050 5000 60  0001 C CNN
	1    10050 5000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J12
U 1 1 5B305159
P 10850 4900
F 0 "J12" H 10850 5300 50  0000 C CNN
F 1 "JST-ZR" H 10850 4400 50  0000 C CNN
F 2 "" H 10850 4900 50  0001 C CNN
F 3 "" H 10850 4900 50  0001 C CNN
	1    10850 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR39
U 1 1 5B30515F
P 9300 5350
F 0 "#PWR39" H 9300 5200 50  0001 C CNN
F 1 "+3.3V" H 9300 5490 50  0000 C CNN
F 2 "" H 9300 5350 50  0001 C CNN
F 3 "" H 9300 5350 50  0001 C CNN
	1    9300 5350
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5B305165
P 9300 5600
F 0 "C14" H 9325 5700 50  0000 L CNN
F 1 "100n" H 9325 5500 50  0000 L CNN
F 2 "" H 9338 5450 50  0001 C CNN
F 3 "" H 9300 5600 50  0001 C CNN
	1    9300 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR43
U 1 1 5B30516B
P 9300 5850
F 0 "#PWR43" H 9300 5600 50  0001 C CNN
F 1 "GND" H 9300 5700 50  0000 C CNN
F 2 "" H 9300 5850 50  0001 C CNN
F 3 "" H 9300 5850 50  0001 C CNN
	1    9300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4600 10650 4600
Wire Wire Line
	10500 4700 10650 4700
Wire Wire Line
	10500 4800 10650 4800
Wire Wire Line
	10500 4900 10650 4900
Wire Wire Line
	10500 5000 10650 5000
Wire Wire Line
	10500 5100 10650 5100
Wire Wire Line
	10500 5200 10650 5200
Wire Wire Line
	10500 5300 10650 5300
Wire Wire Line
	9300 5350 9300 5450
Wire Wire Line
	9300 5400 9600 5400
Connection ~ 9300 5400
Wire Wire Line
	9600 5500 9550 5500
Wire Wire Line
	9550 5500 9550 5800
Wire Wire Line
	9550 5800 9300 5800
Wire Wire Line
	9300 5750 9300 5850
Wire Wire Line
	9550 5600 9600 5600
Connection ~ 9550 5600
Wire Wire Line
	9600 5700 9550 5700
Connection ~ 9550 5700
Connection ~ 9300 5800
Wire Wire Line
	9500 4200 9500 4600
Wire Wire Line
	9500 4600 9600 4600
Entry Wire Line
	9050 4600 9150 4700
Entry Wire Line
	9050 4700 9150 4800
Entry Wire Line
	9050 4800 9150 4900
Entry Wire Line
	9050 4900 9150 5000
Wire Wire Line
	8950 5700 8250 5700
Wire Wire Line
	8950 700  8950 5700
Wire Bus Line
	9050 800  9050 6200
Wire Wire Line
	9500 700  9500 900 
Wire Wire Line
	9500 900  9600 900 
Wire Wire Line
	9500 700  8950 700 
$Comp
L Conn_01x08 J10
U 1 1 5B307863
P 5900 3350
F 0 "J10" H 5900 3750 50  0000 C CNN
F 1 "SHIFT_OUT" H 5900 2850 50  0000 C CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	-1   0    0    -1  
$EndComp
$Comp
L GS2 JMP1
U 1 1 5B309AED
P 2900 950
F 0 "JMP1" V 3000 950 50  0000 C CNN
F 1 "GS2" H 3000 801 50  0001 C CNN
F 2 "Connectors:GS2" V 2974 950 50  0001 C CNN
F 3 "" H 2900 950 50  0001 C CNN
	1    2900 950 
	0    -1   -1   0   
$EndComp
$Comp
L VPP #PWR2
U 1 1 5B309F84
P 3250 850
F 0 "#PWR2" H 3250 700 50  0001 C CNN
F 1 "VPP" H 3250 1000 50  0000 C CNN
F 2 "" H 3250 850 50  0001 C CNN
F 3 "" H 3250 850 50  0001 C CNN
	1    3250 850 
	1    0    0    -1  
$EndComp
Connection ~ 2550 950 
Wire Wire Line
	3250 950  3100 950 
Wire Wire Line
	3250 850  3250 950 
Wire Wire Line
	3750 950  4250 950 
$Comp
L VPP #PWR22
U 1 1 5B30B3A1
P 6200 2950
F 0 "#PWR22" H 6200 2800 50  0001 C CNN
F 1 "VPP" H 6200 3100 50  0000 C CNN
F 2 "" H 6200 2950 50  0001 C CNN
F 3 "" H 6200 2950 50  0001 C CNN
	1    6200 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR23
U 1 1 5B30B4F6
P 6400 2950
F 0 "#PWR23" H 6400 2800 50  0001 C CNN
F 1 "+3.3V" H 6400 3090 50  0000 C CNN
F 2 "" H 6400 2950 50  0001 C CNN
F 3 "" H 6400 2950 50  0001 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 5B30B55B
P 6350 3250
F 0 "#PWR25" H 6350 3000 50  0001 C CNN
F 1 "GND" H 6350 3100 50  0000 C CNN
F 2 "" H 6350 3250 50  0001 C CNN
F 3 "" H 6350 3250 50  0001 C CNN
	1    6350 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3050 6200 3050
Wire Wire Line
	6200 3050 6200 2950
Wire Wire Line
	6100 3150 6400 3150
Wire Wire Line
	6400 3150 6400 2950
Entry Wire Line
	6700 3650 6800 3750
Entry Wire Line
	6700 3550 6800 3650
Entry Wire Line
	6700 3450 6800 3550
Entry Wire Line
	6700 3350 6800 3450
Wire Wire Line
	6100 3350 6700 3350
Wire Wire Line
	6100 3450 6700 3450
Wire Wire Line
	6100 3550 6700 3550
Wire Wire Line
	6100 3650 6700 3650
Wire Wire Line
	6100 3250 6350 3250
Wire Wire Line
	10500 5700 11000 5700
$Comp
L Conn_01x08 J5
U 1 1 5B30E3B4
P 5900 2050
F 0 "J5" H 5900 2450 50  0000 C CNN
F 1 "SHIFT_IN" H 5900 1550 50  0000 C CNN
F 2 "" H 5900 2050 50  0001 C CNN
F 3 "" H 5900 2050 50  0001 C CNN
	1    5900 2050
	-1   0    0    -1  
$EndComp
$Comp
L VPP #PWR10
U 1 1 5B30E650
P 6200 1650
F 0 "#PWR10" H 6200 1500 50  0001 C CNN
F 1 "VPP" H 6200 1800 50  0000 C CNN
F 2 "" H 6200 1650 50  0001 C CNN
F 3 "" H 6200 1650 50  0001 C CNN
	1    6200 1650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR6
U 1 1 5B30E656
P 6400 1250
F 0 "#PWR6" H 6400 1100 50  0001 C CNN
F 1 "+3.3V" H 6400 1390 50  0000 C CNN
F 2 "" H 6400 1250 50  0001 C CNN
F 3 "" H 6400 1250 50  0001 C CNN
	1    6400 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5B30E65C
P 6350 1950
F 0 "#PWR15" H 6350 1700 50  0001 C CNN
F 1 "GND" H 6350 1800 50  0000 C CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1750 6200 1750
Wire Wire Line
	6200 1750 6200 1650
Wire Wire Line
	6100 1850 6400 1850
Wire Wire Line
	6100 1950 6350 1950
Entry Wire Line
	6700 2050 6800 2150
Entry Wire Line
	6700 2150 6800 2250
Entry Wire Line
	6700 2250 6800 2350
Entry Wire Line
	6700 2350 6800 2450
Entry Wire Line
	6700 2450 6800 2550
Wire Wire Line
	6100 2050 6700 2050
Wire Wire Line
	6100 2150 6700 2150
Wire Wire Line
	6100 2250 6700 2250
Wire Wire Line
	6100 2350 6700 2350
Wire Wire Line
	6100 2450 6700 2450
$Comp
L GS2 JMP2
U 1 1 5B31022E
P 6400 1550
F 0 "JMP2" H 6550 1550 50  0000 C CNN
F 1 "GS2" H 6500 1401 50  0001 C CNN
F 2 "Connectors:GS2" V 6474 1550 50  0001 C CNN
F 3 "" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1250 6400 1350
Wire Wire Line
	6400 1850 6400 1750
Text Label 6950 4700 0    60   ~ 0
SRCK
Text Label 6950 4800 0    60   ~ 0
RCK
Text Label 6950 4900 0    60   ~ 0
~G
Text Label 6950 5000 0    60   ~ 0
~SRCLR
Wire Wire Line
	6900 2850 7350 2850
Wire Wire Line
	6900 2950 7350 2950
Wire Wire Line
	6900 3050 7350 3050
Wire Wire Line
	6900 3150 7350 3150
Text Label 6950 2850 0    60   ~ 0
SRCK
Text Label 6950 2950 0    60   ~ 0
RCK
Text Label 6950 3150 0    60   ~ 0
~SRCLR
Text Label 6950 3050 0    60   ~ 0
~G
$Comp
L +3.3V #PWR12
U 1 1 5B312626
P 7050 1650
F 0 "#PWR12" H 7050 1500 50  0001 C CNN
F 1 "+3.3V" H 7050 1790 50  0000 C CNN
F 2 "" H 7050 1650 50  0001 C CNN
F 3 "" H 7050 1650 50  0001 C CNN
	1    7050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1000 7350 1000
Wire Wire Line
	6900 1100 7350 1100
Wire Wire Line
	6900 1200 7350 1200
Wire Wire Line
	6900 1300 7350 1300
Text Label 6950 1000 0    60   ~ 0
SRCK
Text Label 6950 1100 0    60   ~ 0
RCK
Text Label 6950 1300 0    60   ~ 0
~SRCLR
Text Label 6950 1200 0    60   ~ 0
~G
$Comp
L +3.3V #PWR40
U 1 1 5B31298E
P 9300 5350
F 0 "#PWR40" H 9300 5200 50  0001 C CNN
F 1 "+3.3V" H 9300 5490 50  0000 C CNN
F 2 "" H 9300 5350 50  0001 C CNN
F 3 "" H 9300 5350 50  0001 C CNN
	1    9300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4700 9600 4700
Wire Wire Line
	9150 4800 9600 4800
Wire Wire Line
	9150 4900 9600 4900
Wire Wire Line
	9150 5000 9600 5000
Text Label 9200 4700 0    60   ~ 0
SRCK
Text Label 9200 4800 0    60   ~ 0
RCK
Text Label 9200 5000 0    60   ~ 0
~SRCLR
Text Label 9200 4900 0    60   ~ 0
~G
$Comp
L +3.3V #PWR29
U 1 1 5B3129BE
P 9300 3500
F 0 "#PWR29" H 9300 3350 50  0001 C CNN
F 1 "+3.3V" H 9300 3640 50  0000 C CNN
F 2 "" H 9300 3500 50  0001 C CNN
F 3 "" H 9300 3500 50  0001 C CNN
	1    9300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2850 9600 2850
Wire Wire Line
	9150 2950 9600 2950
Wire Wire Line
	9150 3050 9600 3050
Wire Wire Line
	9150 3150 9600 3150
Text Label 9200 2850 0    60   ~ 0
SRCK
Text Label 9200 2950 0    60   ~ 0
RCK
Text Label 9200 3150 0    60   ~ 0
~SRCLR
Text Label 9200 3050 0    60   ~ 0
~G
$Comp
L +3.3V #PWR14
U 1 1 5B312AAE
P 9300 1650
F 0 "#PWR14" H 9300 1500 50  0001 C CNN
F 1 "+3.3V" H 9300 1790 50  0000 C CNN
F 2 "" H 9300 1650 50  0001 C CNN
F 3 "" H 9300 1650 50  0001 C CNN
	1    9300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1000 9600 1000
Wire Wire Line
	9150 1100 9600 1100
Wire Wire Line
	9150 1200 9600 1200
Wire Wire Line
	9150 1300 9600 1300
Text Label 9200 1000 0    60   ~ 0
SRCK
Text Label 9200 1100 0    60   ~ 0
RCK
Text Label 9200 1300 0    60   ~ 0
~SRCLR
Text Label 9200 1200 0    60   ~ 0
~G
Text Label 6950 900  0    60   ~ 0
SER_IN
Text Label 10600 5700 0    60   ~ 0
SER_OUT
Text Label 6100 3350 0    60   ~ 0
SRCK
Text Label 6100 3450 0    60   ~ 0
RCK
Text Label 6100 3550 0    60   ~ 0
~G
Text Label 6100 3650 0    60   ~ 0
~SRCLR
Text Label 6100 2050 0    60   ~ 0
SRCK
Text Label 6100 2150 0    60   ~ 0
RCK
Text Label 6100 2250 0    60   ~ 0
~G
Text Label 6100 2350 0    60   ~ 0
~SRCLR
Text Label 6100 2450 0    60   ~ 0
SER_IN
Text Label 5350 6650 2    60   ~ 0
SRCK
Text Label 5350 6150 2    60   ~ 0
RCK
Text Label 5350 6250 2    60   ~ 0
~G
Text Label 5350 6350 2    60   ~ 0
~SRCLR
Text Label 5350 6850 2    60   ~ 0
SER_IN
Wire Wire Line
	4850 6150 5350 6150
Wire Wire Line
	4850 6250 5350 6250
Wire Wire Line
	4850 6350 5350 6350
Wire Wire Line
	5350 6650 4850 6650
Wire Wire Line
	5350 6850 4850 6850
$Comp
L KT3225T U6
U 1 1 5B317E41
P 1350 4600
F 0 "U6" H 1100 4850 50  0000 L BNN
F 1 "KT3225T" H 1350 4850 50  0000 L BNN
F 2 "" H 1350 4600 50  0000 C CNN
F 3 "" H 1350 4600 50  0000 C CNN
	1    1350 4600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR32
U 1 1 5B317FE8
P 650 4350
F 0 "#PWR32" H 650 4200 50  0001 C CNN
F 1 "+3.3V" H 650 4490 50  0000 C CNN
F 2 "" H 650 4350 50  0001 C CNN
F 3 "" H 650 4350 50  0001 C CNN
	1    650  4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR36
U 1 1 5B318098
P 650 4850
F 0 "#PWR36" H 650 4600 50  0001 C CNN
F 1 "GND" H 650 4700 50  0000 C CNN
F 2 "" H 650 4850 50  0001 C CNN
F 3 "" H 650 4850 50  0001 C CNN
	1    650  4850
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5B318106
P 650 4600
F 0 "C9" H 675 4700 50  0000 L CNN
F 1 "100n" H 675 4500 50  0000 L CNN
F 2 "" H 688 4450 50  0001 C CNN
F 3 "" H 650 4600 50  0001 C CNN
	1    650  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4700 900  4700
Wire Wire Line
	900  4700 900  4800
Wire Wire Line
	900  4800 650  4800
Wire Wire Line
	650  4750 650  4850
Connection ~ 650  4800
Wire Wire Line
	650  4350 650  4450
Wire Wire Line
	650  4400 900  4400
Wire Wire Line
	900  4400 900  4500
Wire Wire Line
	900  4500 950  4500
Connection ~ 650  4400
$Comp
L Crystal Y1
U 1 1 5B318B60
P 1100 5950
F 0 "Y1" H 1100 6100 50  0000 C CNN
F 1 "Crystal" H 1100 5800 50  0000 C CNN
F 2 "" H 1100 5950 50  0001 C CNN
F 3 "" H 1100 5950 50  0001 C CNN
	1    1100 5950
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5B318D41
P 900 6200
F 0 "C15" H 925 6300 50  0000 L CNN
F 1 "18p" H 925 6100 50  0000 L CNN
F 2 "" H 938 6050 50  0001 C CNN
F 3 "" H 900 6200 50  0001 C CNN
	1    900  6200
	-1   0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5B318DF5
P 1300 6200
F 0 "C16" H 1325 6300 50  0000 L CNN
F 1 "18p" H 1325 6100 50  0000 L CNN
F 2 "" H 1338 6050 50  0001 C CNN
F 3 "" H 1300 6200 50  0001 C CNN
	1    1300 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5950 900  5950
Wire Wire Line
	900  5700 900  6050
Wire Wire Line
	1250 5950 2200 5950
Wire Wire Line
	1300 5950 1300 6050
Wire Wire Line
	900  5700 1300 5700
Wire Wire Line
	1300 5700 1300 5850
Wire Wire Line
	1300 5850 2200 5850
Connection ~ 900  5950
Connection ~ 1300 5950
Wire Wire Line
	900  6350 900  6450
Wire Wire Line
	900  6450 1300 6450
Wire Wire Line
	1100 6450 1100 6550
Wire Wire Line
	1300 6450 1300 6350
Connection ~ 1100 6450
$Comp
L GND #PWR44
U 1 1 5B3198CA
P 1100 6550
F 0 "#PWR44" H 1100 6300 50  0001 C CNN
F 1 "GND" H 1100 6400 50  0000 C CNN
F 2 "" H 1100 6550 50  0001 C CNN
F 3 "" H 1100 6550 50  0001 C CNN
	1    1100 6550
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5B31A4B4
P 5000 4750
F 0 "C12" H 5025 4850 50  0000 L CNN
F 1 "100n" H 5025 4650 50  0000 L CNN
F 2 "" H 5038 4600 50  0001 C CNN
F 3 "" H 5000 4750 50  0001 C CNN
	1    5000 4750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B31AF04
P 5300 4750
F 0 "R3" H 5350 4800 50  0000 L CNN
F 1 "Rntc" H 5350 4700 50  0000 L CNN
F 2 "" V 5230 4750 50  0001 C CNN
F 3 "" H 5300 4750 50  0001 C CNN
	1    5300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5250 5800 5250
Wire Wire Line
	4850 5350 5800 5350
Wire Wire Line
	4850 5450 5800 5450
$Comp
L GND #PWR37
U 1 1 5B31C53F
P 5000 5000
F 0 "#PWR37" H 5000 4750 50  0001 C CNN
F 1 "GND" H 5000 4850 50  0000 C CNN
F 2 "" H 5000 5000 50  0001 C CNN
F 3 "" H 5000 5000 50  0001 C CNN
	1    5000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5000 5000 4900
Wire Wire Line
	5000 4600 5000 4500
Wire Wire Line
	4600 4500 5300 4500
Wire Wire Line
	5300 4500 5300 4600
Wire Wire Line
	5300 4900 5300 5450
Connection ~ 5300 5450
$Comp
L GND #PWR41
U 1 1 5B31CE60
P 5700 5650
F 0 "#PWR41" H 5700 5400 50  0001 C CNN
F 1 "GND" H 5700 5500 50  0000 C CNN
F 2 "" H 5700 5650 50  0001 C CNN
F 3 "" H 5700 5650 50  0001 C CNN
	1    5700 5650
	1    0    0    -1  
$EndComp
Text Label 5350 5550 2    60   ~ 0
NTC_EN
Wire Wire Line
	4850 5550 5350 5550
Text Label 1800 6150 0    60   ~ 0
SDA
Text Label 1800 6250 0    60   ~ 0
SCL
Wire Wire Line
	1800 6150 2200 6150
Wire Wire Line
	1800 6250 2200 6250
Text Label 1600 2850 2    60   ~ 0
SDA
Text Label 1600 2950 2    60   ~ 0
SCL
$Comp
L R R2
U 1 1 5B31F8D1
P 1250 2650
F 0 "R2" H 1300 2700 50  0000 L CNN
F 1 "2k2" H 1300 2600 50  0000 L CNN
F 2 "" V 1180 2650 50  0001 C CNN
F 3 "" H 1250 2650 50  0001 C CNN
	1    1250 2650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B320009
P 1000 2650
F 0 "R1" H 1050 2700 50  0000 L CNN
F 1 "2k2" H 1050 2600 50  0000 L CNN
F 2 "" V 930 2650 50  0001 C CNN
F 3 "" H 1000 2650 50  0001 C CNN
	1    1000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2800 1000 2950
Wire Wire Line
	1000 2950 1950 2950
Wire Wire Line
	1250 2850 1950 2850
Wire Wire Line
	1250 2850 1250 2800
$Comp
L +3.3V #PWR18
U 1 1 5B320992
P 1000 2400
F 0 "#PWR18" H 1000 2250 50  0001 C CNN
F 1 "+3.3V" H 1000 2540 50  0000 C CNN
F 2 "" H 1000 2400 50  0001 C CNN
F 3 "" H 1000 2400 50  0001 C CNN
	1    1000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2400 1000 2500
Wire Wire Line
	1000 2450 1250 2450
Wire Wire Line
	1250 2450 1250 2500
Connection ~ 1000 2450
$Comp
L +3.3V #PWR20
U 1 1 5B3217D3
P 1650 2700
F 0 "#PWR20" H 1650 2550 50  0001 C CNN
F 1 "+3.3V" H 1650 2840 50  0000 C CNN
F 2 "" H 1650 2700 50  0001 C CNN
F 3 "" H 1650 2700 50  0001 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2700 1650 2750
Wire Wire Line
	1650 2750 1950 2750
$Comp
L GND #PWR26
U 1 1 5B321D60
P 1850 3450
F 0 "#PWR26" H 1850 3200 50  0001 C CNN
F 1 "GND" H 1850 3300 50  0000 C CNN
F 2 "" H 1850 3450 50  0001 C CNN
F 3 "" H 1850 3450 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3350 1950 3350
Wire Wire Line
	1850 3350 1850 3450
Text Label 4600 4500 0    60   ~ 0
NTC_EN
Connection ~ 5000 4500
$Comp
L LED_ALT D1
U 1 1 5B32513A
P 1500 6900
F 0 "D1" V 1500 7000 50  0000 C CNN
F 1 "LED_ALT" H 1500 6800 50  0001 C CNN
F 2 "" H 1500 6900 50  0001 C CNN
F 3 "" H 1500 6900 50  0001 C CNN
	1    1500 6900
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5B325729
P 1500 7250
F 0 "R4" H 1550 7300 50  0000 L CNN
F 1 "1k" H 1550 7200 50  0000 L CNN
F 2 "" V 1430 7250 50  0001 C CNN
F 3 "" H 1500 7250 50  0001 C CNN
	1    1500 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6550 2200 6550
Wire Wire Line
	1500 7050 1500 7100
Wire Wire Line
	1500 7400 1500 7450
$Comp
L GND #PWR46
U 1 1 5B326D09
P 1500 7450
F 0 "#PWR46" H 1500 7200 50  0001 C CNN
F 1 "GND" H 1500 7300 50  0000 C CNN
F 2 "" H 1500 7450 50  0001 C CNN
F 3 "" H 1500 7450 50  0001 C CNN
	1    1500 7450
	1    0    0    -1  
$EndComp
NoConn ~ 4850 5650
NoConn ~ 4850 5750
NoConn ~ 4850 5850
NoConn ~ 4850 5950
NoConn ~ 4850 6450
NoConn ~ 4850 6550
Entry Wire Line
	9050 6100 9150 6200
Wire Bus Line
	9050 6200 8950 6300
Wire Bus Line
	8950 6300 6900 6300
Wire Bus Line
	6900 6300 6800 6200
Wire Wire Line
	9150 6200 11000 6200
Wire Wire Line
	11000 6200 11000 5700
Text Label 6100 3750 0    60   ~ 0
SER_OUT
Entry Wire Line
	6700 3750 6800 3850
Wire Wire Line
	6100 3750 6700 3750
NoConn ~ 8250 1800
NoConn ~ 8250 1900
NoConn ~ 8250 3650
NoConn ~ 8250 3750
NoConn ~ 10500 1800
NoConn ~ 10500 1900
NoConn ~ 10500 3650
NoConn ~ 10500 3750
NoConn ~ 10500 5500
NoConn ~ 10500 5600
NoConn ~ 8250 5500
NoConn ~ 8250 5600
Wire Wire Line
	1750 4500 1800 4500
Wire Wire Line
	1800 4500 1800 5950
Connection ~ 1800 5950
NoConn ~ 4850 6750
Text Label 1800 6750 0    60   ~ 0
RX
Text Label 1800 6850 0    60   ~ 0
TX
Wire Wire Line
	1800 6750 2200 6750
Wire Wire Line
	1800 6850 2200 6850
Wire Wire Line
	1500 6550 1500 6750
$Comp
L Conn_01x08 J6
U 1 1 5B332B3E
P 2150 2950
F 0 "J6" H 2150 3350 50  0000 C CNN
F 1 "SHIFT_IN" H 2150 2450 50  0000 C CNN
F 2 "" H 2150 2950 50  0001 C CNN
F 3 "" H 2150 2950 50  0001 C CNN
	1    2150 2950
	1    0    0    -1  
$EndComp
Text Label 1450 3050 0    60   ~ 0
RX
Text Label 1450 3150 0    60   ~ 0
TX
Wire Wire Line
	1450 3050 1950 3050
Wire Wire Line
	1450 3150 1950 3150
Text Label 1800 6650 0    60   ~ 0
XCK
Wire Wire Line
	1800 6650 2200 6650
$Comp
L VPP #PWR19
U 1 1 5B3369E9
P 1850 2550
F 0 "#PWR19" H 1850 2400 50  0001 C CNN
F 1 "VPP" H 1850 2700 50  0000 C CNN
F 2 "" H 1850 2550 50  0001 C CNN
F 3 "" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2550 1850 2650
Wire Wire Line
	1850 2650 1950 2650
Text Label 1450 3250 0    60   ~ 0
XCK
Wire Wire Line
	1450 3250 1950 3250
$Comp
L C C1
U 1 1 5B33EDA0
P 3750 1200
F 0 "C1" H 3775 1300 50  0000 L CNN
F 1 "100u" H 3775 1100 50  0000 L CNN
F 2 "" H 3788 1050 50  0001 C CNN
F 3 "" H 3750 1200 50  0001 C CNN
	1    3750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1450 4050 1350
Connection ~ 3750 1450
Connection ~ 3750 950 
Wire Wire Line
	4050 950  4050 1050
$Comp
L Conn_01x05 J14
U 1 1 5B345A2C
P 6000 5350
F 0 "J14" H 6000 5650 50  0000 C CNN
F 1 "JST-ZR" H 6000 5050 50  0000 C CNN
F 2 "" H 6000 5350 50  0001 C CNN
F 3 "" H 6000 5350 50  0001 C CNN
	1    6000 5350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5B345AFF
P 5700 5050
F 0 "#PWR?" H 5700 4900 50  0001 C CNN
F 1 "+3.3V" H 5700 5190 50  0000 C CNN
F 2 "" H 5700 5050 50  0001 C CNN
F 3 "" H 5700 5050 50  0001 C CNN
	1    5700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5150 5700 5150
Wire Wire Line
	5700 5150 5700 5050
Wire Wire Line
	5800 5550 5700 5550
Wire Wire Line
	5700 5550 5700 5650
$EndSCHEMATC
