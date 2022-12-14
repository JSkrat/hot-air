EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:relays
LIBS:v1-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Регулятор фена и паяльника"
Date "26 nov 2013"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA8-P IC1
U 1 1 51FCB053
P 9100 2350
F 0 "IC1" H 8350 3650 40  0000 L BNN
F 1 "ATMEGA8-P" H 9600 900 40  0000 L BNN
F 2 "DIL28" H 9100 2350 30  0000 C CIN
F 3 "" H 9100 2350 60  0000 C CNN
	1    9100 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_7X2 P2
U 1 1 51FCB1D6
P 5850 1450
F 0 "P2" H 5850 1850 60  0000 C CNN
F 1 "CONN_7X2" V 5850 1450 60  0000 C CNN
F 2 "" H 5850 1450 60  0000 C CNN
F 3 "" H 5850 1450 60  0000 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 51FCBFBD
P 5850 700
F 0 "RV1" H 5850 600 50  0000 C CNN
F 1 "10k" H 5850 700 50  0000 C CNN
F 2 "~" H 5850 700 60  0000 C CNN
F 3 "~" H 5850 700 60  0000 C CNN
	1    5850 700 
	1    0    0    1   
$EndComp
$Comp
L LM7805 U1
U 1 1 51FCBFDF
P 1750 800
F 0 "U1" H 1900 604 60  0000 C CNN
F 1 "LM7805" H 1750 1000 60  0000 C CNN
F 2 "~" H 1750 800 60  0000 C CNN
F 3 "~" H 1750 800 60  0000 C CNN
	1    1750 800 
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 51FCC001
P 2350 950
F 0 "C2" H 2400 1050 40  0000 L CNN
F 1 "1mf" H 2400 850 40  0000 L CNN
F 2 "~" H 2450 800 30  0000 C CNN
F 3 "~" H 2350 950 300 0000 C CNN
	1    2350 950 
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 51FCC010
P 1150 950
F 0 "C1" H 1200 1050 40  0000 L CNN
F 1 "100mf" H 1200 850 40  0000 L CNN
F 2 "~" H 1250 800 30  0000 C CNN
F 3 "~" H 1150 950 300 0000 C CNN
	1    1150 950 
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR01
U 1 1 51FCC05C
P 800 1200
F 0 "#PWR01" H 800 1200 30  0001 C CNN
F 1 "VSS" H 800 1130 30  0000 C CNN
F 2 "" H 800 1200 60  0000 C CNN
F 3 "" H 800 1200 60  0000 C CNN
	1    800  1200
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 51FCC092
P 2350 750
F 0 "#PWR02" H 2350 850 30  0001 C CNN
F 1 "VDD" H 2350 860 30  0000 C CNN
F 2 "" H 2350 750 60  0000 C CNN
F 3 "" H 2350 750 60  0000 C CNN
	1    2350 750 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR03
U 1 1 51FCC0A1
P 800 750
F 0 "#PWR03" H 800 700 20  0001 C CNN
F 1 "+12V" H 800 850 30  0000 C CNN
F 2 "" H 800 750 60  0000 C CNN
F 3 "" H 800 750 60  0000 C CNN
	1    800  750 
	0    -1   -1   0   
$EndComp
Text Label 2900 750  0    60   ~ 0
VCC
Text Label 9100 700  0    60   ~ 0
VCC
$Comp
L GND #PWR04
U 1 1 51FCC149
P 9100 4000
F 0 "#PWR04" H 9100 4000 30  0001 C CNN
F 1 "GND" H 9100 3930 30  0001 C CNN
F 2 "" H 9100 4000 60  0000 C CNN
F 3 "" H 9100 4000 60  0000 C CNN
	1    9100 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 51FCC163
P 1750 1250
F 0 "#PWR05" H 1750 1250 30  0001 C CNN
F 1 "GND" H 1750 1180 30  0001 C CNN
F 2 "" H 1750 1250 60  0000 C CNN
F 3 "" H 1750 1250 60  0000 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 51FCC217
P 4700 2100
F 0 "#PWR06" H 4700 2100 30  0001 C CNN
F 1 "GND" H 4700 2030 30  0001 C CNN
F 2 "" H 4700 2100 60  0000 C CNN
F 3 "" H 4700 2100 60  0000 C CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
Text Label 6300 900  0    60   ~ 0
VCC
Text Label 6400 1250 0    60   ~ 0
LCD_RS
Text Label 6850 1250 0    60   ~ 0
LCD_E
Text Label 6250 2100 0    60   ~ 0
LCD_D7
Text Label 6600 2200 0    60   ~ 0
LCD_D5
Text Label 5450 2100 0    60   ~ 0
LCD_D6
Text Label 5350 2200 0    60   ~ 0
LCD_D4
Text Label 10300 3050 0    60   ~ 0
LCD_D4
Text Label 10300 3150 0    60   ~ 0
LCD_D5
Text Label 10300 3250 0    60   ~ 0
LCD_D6
Text Label 10300 3350 0    60   ~ 0
LCD_D7
Text Label 10300 1250 0    60   ~ 0
LCD_E
Text Label 10300 1750 0    60   ~ 0
LCD_RS
$Comp
L CONN_2 P1
U 1 1 51FCCC82
P 7450 1350
F 0 "P1" V 7400 1350 40  0000 C CNN
F 1 "CONN_2" V 7500 1350 40  0000 C CNN
F 2 "" H 7450 1350 60  0000 C CNN
F 3 "" H 7450 1350 60  0000 C CNN
	1    7450 1350
	-1   0    0    1   
$EndComp
$Comp
L CONN_3 K1
U 1 1 51FCCC91
P 11000 1650
F 0 "K1" V 10950 1650 50  0000 C CNN
F 1 "CONN_3" V 11050 1650 40  0000 C CNN
F 2 "" H 11000 1650 60  0000 C CNN
F 3 "" H 11000 1650 60  0000 C CNN
	1    11000 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 51FCCDE1
P 7850 1750
F 0 "#PWR07" H 7850 1750 30  0001 C CNN
F 1 "GND" H 7850 1680 30  0001 C CNN
F 2 "" H 7850 1750 60  0000 C CNN
F 3 "" H 7850 1750 60  0000 C CNN
	1    7850 1750
	1    0    0    -1  
$EndComp
Text Label 900  750  0    60   ~ 0
HV
$Comp
L CONN_2 P10
U 1 1 51FCD16A
P 10650 6350
F 0 "P10" V 10600 6350 40  0000 C CNN
F 1 "CONN_2" V 10700 6350 40  0000 C CNN
F 2 "" H 10650 6350 60  0000 C CNN
F 3 "" H 10650 6350 60  0000 C CNN
	1    10650 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 51FCD183
P 700 1650
F 0 "P3" V 650 1650 40  0000 C CNN
F 1 "CONN_2" V 750 1650 40  0000 C CNN
F 2 "" H 700 1650 60  0000 C CNN
F 3 "" H 700 1650 60  0000 C CNN
	1    700  1650
	-1   0    0    1   
$EndComp
Text Label 1250 1550 0    60   ~ 0
220_PHASE
Text Label 2450 1550 0    60   ~ 0
220_NULL
Text Label 10300 6850 0    60   ~ 0
220_NULL
Text Label 9800 7050 0    60   ~ 0
220_PHASE
$Comp
L MOC3041M IC3
U 1 1 528902EB
P 7900 6050
F 0 "IC3" H 7686 6229 40  0000 C CNN
F 1 "MOC3041M" H 8000 5865 40  0000 C CNN
F 2 "DIP6" H 7736 5875 29  0000 C CNN
F 3 "" H 7900 6050 60  0000 C CNN
	1    7900 6050
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5289124A
P 8700 5950
F 0 "R20" V 8780 5950 40  0000 C CNN
F 1 "360" V 8707 5951 40  0000 C CNN
F 2 "~" V 8630 5950 30  0000 C CNN
F 3 "~" H 8700 5950 30  0000 C CNN
	1    8700 5950
	0    -1   -1   0   
$EndComp
$Comp
L R R24
U 1 1 52891265
P 8400 6500
F 0 "R24" V 8480 6500 40  0000 C CNN
F 1 "330" V 8407 6501 40  0000 C CNN
F 2 "~" V 8330 6500 30  0000 C CNN
F 3 "~" H 8400 6500 30  0000 C CNN
	1    8400 6500
	1    0    0    -1  
$EndComp
$Comp
L TRIAC U4
U 1 1 528913A0
P 9200 6500
F 0 "U4" H 8950 6850 70  0000 C CNN
F 1 "BT139" H 8900 6250 60  0000 C CNN
F 2 "~" H 9200 6500 60  0000 C CNN
F 3 "~" H 9200 6500 60  0000 C CNN
	1    9200 6500
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 52891649
P 9700 6150
F 0 "R21" V 9780 6150 40  0000 C CNN
F 1 "39" V 9707 6151 40  0000 C CNN
F 2 "~" V 9630 6150 30  0000 C CNN
F 3 "~" H 9700 6150 30  0000 C CNN
	1    9700 6150
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 52891662
P 9700 6750
F 0 "C6" H 9700 6850 40  0000 L CNN
F 1 "0.01" H 9706 6665 40  0000 L CNN
F 2 "~" H 9738 6600 30  0000 C CNN
F 3 "~" H 9700 6750 60  0000 C CNN
	1    9700 6750
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 528918F8
P 7200 5950
F 0 "R19" V 7280 5950 40  0000 C CNN
F 1 "180" V 7207 5951 40  0000 C CNN
F 2 "~" V 7130 5950 30  0000 C CNN
F 3 "~" H 7200 5950 30  0000 C CNN
	1    7200 5950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5289196B
P 7450 6350
F 0 "#PWR08" H 7450 6350 30  0001 C CNN
F 1 "GND" H 7450 6280 30  0001 C CNN
F 2 "" H 7450 6350 60  0000 C CNN
F 3 "" H 7450 6350 60  0000 C CNN
	1    7450 6350
	1    0    0    -1  
$EndComp
Text Label 6500 5950 0    60   ~ 0
pump_heat
Text Notes 10350 6150 0    60   ~ 0
Нагрев фена
$Comp
L CONN_2 P9
U 1 1 52891D50
P 10650 4950
F 0 "P9" V 10600 4950 40  0000 C CNN
F 1 "CONN_2" V 10700 4950 40  0000 C CNN
F 2 "" H 10650 4950 60  0000 C CNN
F 3 "" H 10650 4950 60  0000 C CNN
	1    10650 4950
	1    0    0    -1  
$EndComp
Text Label 10300 5450 0    60   ~ 0
220_NULL
Text Label 9800 5650 0    60   ~ 0
220_PHASE
$Comp
L MOC3041M IC2
U 1 1 52891D59
P 7900 4650
F 0 "IC2" H 7686 4829 40  0000 C CNN
F 1 "MOC3041M" H 8000 4465 40  0000 C CNN
F 2 "DIP6" H 7736 4475 29  0000 C CNN
F 3 "" H 7900 4650 60  0000 C CNN
	1    7900 4650
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 52891D5F
P 8700 4550
F 0 "R13" V 8780 4550 40  0000 C CNN
F 1 "360" V 8707 4551 40  0000 C CNN
F 2 "~" V 8630 4550 30  0000 C CNN
F 3 "~" H 8700 4550 30  0000 C CNN
	1    8700 4550
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 52891D65
P 8400 5100
F 0 "R17" V 8480 5100 40  0000 C CNN
F 1 "330" V 8407 5101 40  0000 C CNN
F 2 "~" V 8330 5100 30  0000 C CNN
F 3 "~" H 8400 5100 30  0000 C CNN
	1    8400 5100
	1    0    0    -1  
$EndComp
$Comp
L TRIAC U3
U 1 1 52891D6E
P 9200 5100
F 0 "U3" H 8950 5450 70  0000 C CNN
F 1 "BT139" H 8900 4850 60  0000 C CNN
F 2 "~" H 9200 5100 60  0000 C CNN
F 3 "~" H 9200 5100 60  0000 C CNN
	1    9200 5100
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 52891D7C
P 9700 4750
F 0 "R15" V 9780 4750 40  0000 C CNN
F 1 "39" V 9707 4751 40  0000 C CNN
F 2 "~" V 9630 4750 30  0000 C CNN
F 3 "~" H 9700 4750 30  0000 C CNN
	1    9700 4750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 52891D82
P 9700 5350
F 0 "C5" H 9700 5450 40  0000 L CNN
F 1 "0.01" H 9706 5265 40  0000 L CNN
F 2 "~" H 9738 5200 30  0000 C CNN
F 3 "~" H 9700 5350 60  0000 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 52891D8F
P 7200 4550
F 0 "R12" V 7280 4550 40  0000 C CNN
F 1 "180" V 7207 4551 40  0000 C CNN
F 2 "~" V 7130 4550 30  0000 C CNN
F 3 "~" H 7200 4550 30  0000 C CNN
	1    7200 4550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 52891D96
P 7450 4950
F 0 "#PWR09" H 7450 4950 30  0001 C CNN
F 1 "GND" H 7450 4880 30  0001 C CNN
F 2 "" H 7450 4950 60  0000 C CNN
F 3 "" H 7450 4950 60  0000 C CNN
	1    7450 4950
	1    0    0    -1  
$EndComp
Text Label 6500 4550 0    60   ~ 0
solder
Text Notes 10350 4750 0    60   ~ 0
Нагрев паяльника
$Comp
L R R26
U 1 1 52891EB1
P 5100 7250
F 0 "R26" V 5180 7250 40  0000 C CNN
F 1 "1k" V 5107 7251 40  0000 C CNN
F 2 "~" V 5030 7250 30  0000 C CNN
F 3 "~" H 5100 7250 30  0000 C CNN
	1    5100 7250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 52891ED9
P 5850 7650
F 0 "#PWR010" H 5850 7650 30  0001 C CNN
F 1 "GND" H 5850 7580 30  0001 C CNN
F 2 "" H 5850 7650 60  0000 C CNN
F 3 "" H 5850 7650 60  0000 C CNN
	1    5850 7650
	1    0    0    -1  
$EndComp
$Comp
L BC849 Q2
U 1 1 52891FE1
P 5750 7250
F 0 "Q2" H 5750 7101 40  0000 R CNN
F 1 "BC849" H 5750 7400 40  0000 R CNN
F 2 "SOT-23" H 5650 7352 29  0000 C CNN
F 3 "~" H 5750 7250 60  0000 C CNN
	1    5750 7250
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P11
U 1 1 52891FFC
P 6700 7100
F 0 "P11" V 6650 7100 40  0000 C CNN
F 1 "CONN_2" V 6750 7100 40  0000 C CNN
F 2 "" H 6700 7100 60  0000 C CNN
F 3 "" H 6700 7100 60  0000 C CNN
	1    6700 7100
	1    0    0    -1  
$EndComp
Text Label 6300 7550 0    60   ~ 0
HV
Text Label 4450 7250 0    60   ~ 0
pump
$Comp
L R R25
U 1 1 52892192
P 5450 6900
F 0 "R25" V 5530 6900 40  0000 C CNN
F 1 "4k7" V 5457 6901 40  0000 C CNN
F 2 "~" V 5380 6900 30  0000 C CNN
F 3 "~" H 5450 6900 30  0000 C CNN
	1    5450 6900
	1    0    0    -1  
$EndComp
Text Label 5450 6550 0    60   ~ 0
VCC
Text Notes 6400 6900 0    60   ~ 0
Компрессор фена
$Comp
L DIODE D4
U 1 1 528B580D
P 6150 7200
F 0 "D4" H 6150 7300 40  0000 C CNN
F 1 "DIODE" H 6150 7100 40  0000 C CNN
F 2 "~" H 6150 7200 60  0000 C CNN
F 3 "~" H 6150 7200 60  0000 C CNN
	1    6150 7200
	0    1    1    0   
$EndComp
Text Label 2800 6650 0    60   ~ 0
Phase_sync
$Comp
L LED D2
U 1 1 528B8DE6
P 700 7100
F 0 "D2" H 700 7200 50  0000 C CNN
F 1 "LED" H 700 7000 50  0000 C CNN
F 2 "~" H 700 7100 60  0000 C CNN
F 3 "~" H 700 7100 60  0000 C CNN
	1    700  7100
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 528B8DF5
P 1000 7100
F 0 "D3" H 1000 7200 50  0000 C CNN
F 1 "LED" H 1000 7000 50  0000 C CNN
F 2 "~" H 1000 7100 60  0000 C CNN
F 3 "~" H 1000 7100 60  0000 C CNN
	1    1000 7100
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 528B8E04
P 1850 6900
F 0 "D1" H 1850 7000 50  0000 C CNN
F 1 "LED" H 1850 6800 50  0000 C CNN
F 2 "~" H 1850 6900 60  0000 C CNN
F 3 "~" H 1850 6900 60  0000 C CNN
	1    1850 6900
	-1   0    0    1   
$EndComp
$Comp
L BC849 Q1
U 1 1 528B8E71
P 2400 6900
F 0 "Q1" H 2400 6751 40  0000 R CNN
F 1 "BC849" H 2400 7050 40  0000 R CNN
F 2 "SOT-23" H 2300 7002 29  0000 C CNN
F 3 "~" H 2400 6900 60  0000 C CNN
	1    2400 6900
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 528B9161
P 2500 6350
F 0 "R22" V 2580 6350 40  0000 C CNN
F 1 "10k" V 2507 6351 40  0000 C CNN
F 2 "~" V 2430 6350 30  0000 C CNN
F 3 "~" H 2500 6350 30  0000 C CNN
	1    2500 6350
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 528B93C9
P 850 6500
F 0 "R23" V 930 6500 40  0000 C CNN
F 1 "100k" V 857 6501 40  0000 C CNN
F 2 "~" V 780 6500 30  0000 C CNN
F 3 "~" H 850 6500 30  0000 C CNN
	1    850  6500
	1    0    0    -1  
$EndComp
$Comp
L POT RV4
U 1 1 528B95C2
P 1400 6900
F 0 "RV4" H 1400 6800 50  0000 C CNN
F 1 "POT" H 1400 6900 50  0000 C CNN
F 2 "~" H 1400 6900 60  0000 C CNN
F 3 "~" H 1400 6900 60  0000 C CNN
	1    1400 6900
	0    1    -1   0   
$EndComp
Text Label 850  6050 0    60   ~ 0
220_PHASE
Text Label 850  7600 0    60   ~ 0
220_NULL
$Comp
L GND #PWR011
U 1 1 528B9A19
P 2500 7750
F 0 "#PWR011" H 2500 7750 30  0001 C CNN
F 1 "GND" H 2500 7680 30  0001 C CNN
F 2 "" H 2500 7750 60  0000 C CNN
F 3 "" H 2500 7750 60  0000 C CNN
	1    2500 7750
	1    0    0    -1  
$EndComp
Text Label 2150 6000 0    60   ~ 0
VCC
$Comp
L LM193 U2
U 2 1 528B9C07
P 3250 3200
F 0 "U2" H 3400 3350 60  0000 C CNN
F 1 "RC4580" H 3450 3000 60  0000 C CNN
F 2 "" H 3250 3200 60  0000 C CNN
F 3 "" H 3250 3200 60  0000 C CNN
	2    3250 3200
	1    0    0    -1  
$EndComp
$Comp
L LM193 U2
U 1 1 528B9C16
P 2400 4850
F 0 "U2" H 2550 5000 60  0000 C CNN
F 1 "RC4580" H 2600 4650 60  0000 C CNN
F 2 "" H 2400 4850 60  0000 C CNN
F 3 "" H 2400 4850 60  0000 C CNN
	1    2400 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 528B9C85
P 2200 4100
F 0 "#PWR012" H 2200 4100 30  0001 C CNN
F 1 "GND" H 2200 4030 30  0001 C CNN
F 2 "" H 2200 4100 60  0000 C CNN
F 3 "" H 2200 4100 60  0000 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 528B9C94
P 2300 3100
F 0 "R8" V 2380 3100 40  0000 C CNN
F 1 "10k" V 2307 3101 40  0000 C CNN
F 2 "~" V 2230 3100 30  0000 C CNN
F 3 "~" H 2300 3100 30  0000 C CNN
	1    2300 3100
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 528B9F40
P 2650 3650
F 0 "R10" V 2730 3650 40  0000 C CNN
F 1 "1k" V 2657 3651 40  0000 C CNN
F 2 "~" V 2580 3650 30  0000 C CNN
F 3 "~" H 2650 3650 30  0000 C CNN
	1    2650 3650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 528BA0C7
P 3500 2750
F 0 "R7" V 3580 2750 40  0000 C CNN
F 1 "60k" V 3507 2751 40  0000 C CNN
F 2 "~" V 3430 2750 30  0000 C CNN
F 3 "~" H 3500 2750 30  0000 C CNN
	1    3500 2750
	0    -1   -1   0   
$EndComp
$Comp
L POT RV2
U 1 1 528BA0D6
P 4100 2750
F 0 "RV2" H 4100 2650 50  0000 C CNN
F 1 "50k" H 4100 2750 50  0000 C CNN
F 2 "~" H 4100 2750 60  0000 C CNN
F 3 "~" H 4100 2750 60  0000 C CNN
	1    4100 2750
	-1   0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 528BA3BD
P 4800 3200
F 0 "R9" V 4880 3200 40  0000 C CNN
F 1 "100k" V 4807 3201 40  0000 C CNN
F 2 "~" V 4730 3200 30  0000 C CNN
F 3 "~" H 4800 3200 30  0000 C CNN
	1    4800 3200
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 528BA48A
P 5150 3500
F 0 "C3" H 5150 3600 40  0000 L CNN
F 1 "100n" H 5156 3415 40  0000 L CNN
F 2 "~" H 5188 3350 30  0000 C CNN
F 3 "~" H 5150 3500 60  0000 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
Text Label 5250 3200 0    60   ~ 0
pump_sens
$Comp
L CONN_2 P8
U 1 1 528BABC8
P 750 4850
F 0 "P8" V 700 4850 40  0000 C CNN
F 1 "CONN_2" V 800 4850 40  0000 C CNN
F 2 "" H 750 4850 60  0000 C CNN
F 3 "" H 750 4850 60  0000 C CNN
	1    750  4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 528BABCE
P 1350 5750
F 0 "#PWR013" H 1350 5750 30  0001 C CNN
F 1 "GND" H 1350 5680 30  0001 C CNN
F 2 "" H 1350 5750 60  0000 C CNN
F 3 "" H 1350 5750 60  0000 C CNN
	1    1350 5750
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 528BABD4
P 1450 4750
F 0 "R14" V 1530 4750 40  0000 C CNN
F 1 "10k" V 1457 4751 40  0000 C CNN
F 2 "~" V 1380 4750 30  0000 C CNN
F 3 "~" H 1450 4750 30  0000 C CNN
	1    1450 4750
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 528BABDE
P 1800 5300
F 0 "R18" V 1880 5300 40  0000 C CNN
F 1 "1k" V 1807 5301 40  0000 C CNN
F 2 "~" V 1730 5300 30  0000 C CNN
F 3 "~" H 1800 5300 30  0000 C CNN
	1    1800 5300
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 528BABE6
P 2650 4400
F 0 "R11" V 2730 4400 40  0000 C CNN
F 1 "60k" V 2657 4401 40  0000 C CNN
F 2 "~" V 2580 4400 30  0000 C CNN
F 3 "~" H 2650 4400 30  0000 C CNN
	1    2650 4400
	0    -1   -1   0   
$EndComp
$Comp
L POT RV3
U 1 1 528BABEC
P 3250 4400
F 0 "RV3" H 3250 4300 50  0000 C CNN
F 1 "50k" H 3250 4400 50  0000 C CNN
F 2 "~" H 3250 4400 60  0000 C CNN
F 3 "~" H 3250 4400 60  0000 C CNN
	1    3250 4400
	-1   0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 528BABF9
P 3950 4850
F 0 "R16" V 4030 4850 40  0000 C CNN
F 1 "100k" V 3957 4851 40  0000 C CNN
F 2 "~" V 3880 4850 30  0000 C CNN
F 3 "~" H 3950 4850 30  0000 C CNN
	1    3950 4850
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 528BABFF
P 4300 5150
F 0 "C4" H 4300 5250 40  0000 L CNN
F 1 "100n" H 4306 5065 40  0000 L CNN
F 2 "~" H 4338 5000 30  0000 C CNN
F 3 "~" H 4300 5150 60  0000 C CNN
	1    4300 5150
	1    0    0    -1  
$EndComp
Text Label 4400 4850 0    60   ~ 0
solder_sens
Text Label 2300 4250 0    60   ~ 0
VCC
Text Label 3150 2600 0    60   ~ 0
VCC
$Comp
L GND #PWR014
U 1 1 528BB3A8
P 7250 3700
F 0 "#PWR014" H 7250 3700 30  0001 C CNN
F 1 "GND" H 7250 3630 30  0001 C CNN
F 2 "" H 7250 3700 60  0000 C CNN
F 3 "" H 7250 3700 60  0000 C CNN
	1    7250 3700
	1    0    0    -1  
$EndComp
Text Label 7350 3550 0    60   ~ 0
VCC
Text Label 7350 3150 0    60   ~ 0
var_pump_heat
Text Label 7350 3050 0    60   ~ 0
var_pump
Text Label 7350 2950 0    60   ~ 0
var_solder
$Comp
L CONN_3 K2
U 1 1 528BB840
P 750 2850
F 0 "K2" V 700 2850 50  0000 C CNN
F 1 "CONN_3" V 800 2850 40  0000 C CNN
F 2 "" H 750 2850 60  0000 C CNN
F 3 "" H 750 2850 60  0000 C CNN
	1    750  2850
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P4
U 1 1 528E2199
P 1900 1650
F 0 "P4" V 1850 1650 40  0000 C CNN
F 1 "CONN_2" V 1950 1650 40  0000 C CNN
F 2 "" H 1900 1650 60  0000 C CNN
F 3 "" H 1900 1650 60  0000 C CNN
	1    1900 1650
	-1   0    0    1   
$EndComp
$Comp
L CONN_2X2 P6
U 1 1 528E25BA
P 1600 2800
F 0 "P6" H 1600 2950 50  0000 C CNN
F 1 "CONN_2X2" H 1610 2670 40  0000 C CNN
F 2 "" H 1600 2800 60  0000 C CNN
F 3 "" H 1600 2800 60  0000 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1050 1750 1250
Wire Wire Line
	800  1150 2650 1150
Connection ~ 1750 1150
Wire Wire Line
	800  750  1350 750 
Wire Wire Line
	800  1200 800  1150
Connection ~ 1150 1150
Connection ~ 1150 750 
Connection ~ 2350 750 
Wire Wire Line
	9100 950  9100 700 
Wire Wire Line
	9100 4000 9100 3850
Wire Wire Line
	4700 1150 5450 1150
Wire Wire Line
	6300 900  6300 1150
Wire Wire Line
	6300 1150 6250 1150
Wire Wire Line
	6100 700  6200 700 
Wire Wire Line
	6200 700  6200 1000
Wire Wire Line
	6200 1000 6300 1000
Connection ~ 6300 1000
Wire Wire Line
	4700 700  5600 700 
Wire Wire Line
	5850 850  5850 900 
Wire Wire Line
	5850 900  5400 900 
Wire Wire Line
	5400 900  5400 1250
Wire Wire Line
	5400 1250 5450 1250
Wire Wire Line
	4700 700  4700 2100
Connection ~ 4700 1350
Connection ~ 4700 1150
Wire Wire Line
	4700 1350 5450 1350
Wire Wire Line
	5200 1550 5200 1450
Wire Wire Line
	5200 1450 5450 1450
Wire Wire Line
	4700 1750 5250 1750
Wire Wire Line
	5250 1750 5250 1550
Wire Wire Line
	5250 1550 5450 1550
Wire Wire Line
	4700 1550 4700 1750
Connection ~ 4700 1750
Connection ~ 4700 1550
Wire Wire Line
	6250 1450 7150 1450
Wire Wire Line
	6650 1650 6650 1550
Wire Wire Line
	6650 1550 6250 1550
Wire Wire Line
	7150 1450 7150 1850
Wire Wire Line
	7150 1850 4250 1850
Connection ~ 7150 1650
Connection ~ 4700 1850
Wire Wire Line
	6250 1250 6400 1250
Wire Wire Line
	6250 1350 6850 1350
Wire Wire Line
	6850 1350 6850 1250
Wire Wire Line
	6250 1750 6250 2100
Wire Wire Line
	6250 1650 6600 1650
Wire Wire Line
	6600 1650 6600 2200
Wire Wire Line
	5450 1750 5450 2100
Wire Wire Line
	5450 1650 5350 1650
Wire Wire Line
	5350 1650 5350 2200
Wire Wire Line
	10100 1350 10300 1350
Wire Wire Line
	10100 1450 10300 1450
Wire Wire Line
	10300 3250 10100 3250
Wire Wire Line
	10300 3050 10100 3050
Wire Wire Line
	10300 3150 10100 3150
Wire Wire Line
	10100 1550 10650 1550
Wire Wire Line
	10100 1650 10650 1650
Wire Wire Line
	10100 1750 10650 1750
Wire Wire Line
	7850 1750 7850 1450
Wire Wire Line
	7850 1450 7800 1450
Wire Wire Line
	8200 1650 7850 1650
Connection ~ 7850 1650
Wire Wire Line
	7800 1250 8200 1250
Wire Wire Line
	8200 1450 8100 1450
Wire Wire Line
	8100 1450 8100 850 
Wire Wire Line
	8100 850  9100 850 
Connection ~ 9100 850 
Wire Wire Line
	1050 1550 1250 1550
Wire Wire Line
	2250 1550 2450 1550
Wire Wire Line
	10300 6450 10300 6850
Wire Wire Line
	8250 5950 8450 5950
Wire Wire Line
	8250 6150 8550 6150
Wire Wire Line
	8400 6150 8400 6250
Wire Wire Line
	9200 5800 9200 6100
Wire Wire Line
	9200 5950 8950 5950
Wire Wire Line
	8700 6700 8550 6700
Wire Wire Line
	8400 6900 9200 6900
Wire Wire Line
	8400 6900 8400 6750
Wire Wire Line
	9200 6750 9200 7050
Wire Wire Line
	9700 6550 9700 6400
Wire Wire Line
	9700 5900 9700 5800
Wire Wire Line
	9200 5800 10300 5800
Connection ~ 9200 5950
Wire Wire Line
	9700 6950 9700 7050
Wire Wire Line
	9200 7050 9800 7050
Connection ~ 9200 6900
Wire Wire Line
	7450 5950 7550 5950
Wire Wire Line
	7450 6350 7450 6150
Wire Wire Line
	7450 6150 7550 6150
Wire Wire Line
	6500 5950 6950 5950
Connection ~ 9700 7050
Wire Wire Line
	10300 5800 10300 6250
Connection ~ 9700 5800
Wire Wire Line
	10300 5050 10300 5450
Wire Wire Line
	8250 4550 8450 4550
Wire Wire Line
	8250 4750 8550 4750
Wire Wire Line
	8400 4750 8400 4850
Wire Wire Line
	9200 4400 9200 4700
Wire Wire Line
	9200 4550 8950 4550
Wire Wire Line
	8700 5300 8550 5300
Wire Wire Line
	8400 5500 9200 5500
Wire Wire Line
	8400 5500 8400 5350
Wire Wire Line
	9200 5350 9200 5650
Wire Wire Line
	9700 5150 9700 5000
Wire Wire Line
	9700 4500 9700 4400
Wire Wire Line
	9200 4400 10300 4400
Connection ~ 9200 4550
Wire Wire Line
	9700 5550 9700 5650
Wire Wire Line
	9200 5650 9800 5650
Connection ~ 9200 5500
Wire Wire Line
	7450 4550 7550 4550
Wire Wire Line
	7450 4950 7450 4750
Wire Wire Line
	7450 4750 7550 4750
Wire Wire Line
	6500 4550 6950 4550
Connection ~ 9700 5650
Wire Wire Line
	10300 4400 10300 4850
Connection ~ 9700 4400
Wire Wire Line
	5850 7650 5850 7450
Wire Wire Line
	5350 7250 5550 7250
Wire Wire Line
	5850 7050 5850 6900
Wire Wire Line
	5850 6900 6350 6900
Wire Wire Line
	6350 6900 6350 7000
Wire Wire Line
	6300 7550 6300 7200
Wire Wire Line
	6300 7200 6350 7200
Wire Wire Line
	4450 7250 4850 7250
Wire Wire Line
	5450 7150 5450 7250
Connection ~ 5450 7250
Wire Wire Line
	5450 6550 5450 6650
Wire Wire Line
	6150 7000 6150 6900
Connection ~ 6150 6900
Wire Wire Line
	6150 7400 6150 7450
Wire Wire Line
	6150 7450 6300 7450
Connection ~ 6300 7450
Wire Wire Line
	1400 7650 2500 7650
Wire Wire Line
	2500 7100 2500 7750
Wire Wire Line
	2200 6900 2050 6900
Wire Wire Line
	2500 6000 2500 6100
Wire Wire Line
	1400 6000 2500 6000
Wire Wire Line
	2500 6700 2500 6600
Wire Wire Line
	2800 6650 2500 6650
Connection ~ 2500 6650
Wire Wire Line
	700  6900 700  6750
Wire Wire Line
	700  6750 1000 6750
Wire Wire Line
	1000 6750 1000 6900
Connection ~ 850  6750
Wire Wire Line
	700  7300 700  7400
Wire Wire Line
	700  7400 1000 7400
Wire Wire Line
	1000 7400 1000 7300
Wire Wire Line
	1650 6900 1550 6900
Wire Wire Line
	1400 6650 1400 6000
Wire Wire Line
	1400 7150 1400 7650
Wire Wire Line
	850  6050 850  6250
Wire Wire Line
	850  7600 850  7400
Connection ~ 850  7400
Connection ~ 2500 7650
Wire Wire Line
	3150 3600 3150 4000
Wire Wire Line
	2750 3300 2650 3300
Wire Wire Line
	2650 2750 2650 3400
Wire Wire Line
	4100 2600 4100 2550
Wire Wire Line
	4100 2550 4400 2550
Wire Wire Line
	3850 2750 3750 2750
Connection ~ 2650 3300
Wire Wire Line
	2550 3100 2750 3100
Wire Wire Line
	3250 2750 2650 2750
Wire Wire Line
	3750 3200 4550 3200
Connection ~ 4400 3200
Wire Wire Line
	5050 3200 5250 3200
Wire Wire Line
	5150 3200 5150 3300
Wire Wire Line
	2650 3900 2650 4000
Wire Wire Line
	1200 4000 5150 4000
Wire Wire Line
	5150 4000 5150 3700
Connection ~ 3150 4000
Connection ~ 2650 4000
Wire Wire Line
	2200 4100 2200 4000
Connection ~ 2200 4000
Connection ~ 5150 3200
Wire Wire Line
	1100 4750 1200 4750
Wire Wire Line
	1100 4950 1200 4950
Wire Wire Line
	1200 4950 1200 5650
Wire Wire Line
	2300 5250 2300 5650
Wire Wire Line
	1900 4950 1800 4950
Wire Wire Line
	1800 4400 1800 5050
Wire Wire Line
	3250 4250 3250 4200
Wire Wire Line
	3550 4200 3550 4850
Wire Wire Line
	3000 4400 2900 4400
Connection ~ 1800 4950
Wire Wire Line
	1700 4750 1900 4750
Wire Wire Line
	2400 4400 1800 4400
Wire Wire Line
	2900 4850 3700 4850
Connection ~ 3550 4850
Wire Wire Line
	4200 4850 4400 4850
Wire Wire Line
	4300 4850 4300 4950
Wire Wire Line
	1800 5550 1800 5650
Wire Wire Line
	1200 5650 4300 5650
Wire Wire Line
	4300 5650 4300 5350
Connection ~ 2300 5650
Connection ~ 1800 5650
Wire Wire Line
	1350 5750 1350 5650
Connection ~ 1350 5650
Connection ~ 4300 4850
Wire Wire Line
	3250 4200 3550 4200
Wire Wire Line
	2300 4250 2300 4450
Wire Wire Line
	3150 2600 3150 2800
Wire Wire Line
	8550 6700 8550 6150
Connection ~ 8400 6150
Wire Wire Line
	8550 5300 8550 4750
Connection ~ 8400 4750
Wire Wire Line
	1150 1550 1150 1750
Wire Wire Line
	1150 1750 1050 1750
Connection ~ 1150 1550
Wire Wire Line
	2350 1550 2350 1750
Wire Wire Line
	2350 1750 2250 1750
Connection ~ 2350 1550
Text Label 10300 1950 0    60   ~ 0
pump_sens
Text Label 10300 2350 0    60   ~ 0
solder_sens
Wire Wire Line
	10300 1950 10100 1950
Wire Wire Line
	10100 2350 10300 2350
Text Label 10300 2150 0    60   ~ 0
var_pump
Text Label 10300 2250 0    60   ~ 0
var_pump_heat
Text Label 10300 2050 0    60   ~ 0
var_solder
Wire Wire Line
	10300 2150 10100 2150
Wire Wire Line
	10100 2250 10300 2250
Wire Wire Line
	10300 2050 10100 2050
Text Label 10300 2850 0    60   ~ 0
phase_sync
Wire Wire Line
	10300 2850 10100 2850
Text Label 10300 1350 0    60   ~ 0
solder
Text Label 10300 1450 0    60   ~ 0
pump_heat
Wire Wire Line
	10300 3350 10100 3350
Text Label 10300 1550 0    60   ~ 0
pump
$Comp
L CONN_2 P5
U 1 1 528E391A
P 3900 1750
F 0 "P5" V 3850 1750 40  0000 C CNN
F 1 "CONN_2" V 3950 1750 40  0000 C CNN
F 2 "" H 3900 1750 60  0000 C CNN
F 3 "" H 3900 1750 60  0000 C CNN
	1    3900 1750
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 528E3A49
P 4400 1300
F 0 "R1" V 4480 1300 40  0000 C CNN
F 1 "300" V 4407 1301 40  0000 C CNN
F 2 "~" V 4330 1300 30  0000 C CNN
F 3 "~" H 4400 1300 30  0000 C CNN
	1    4400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1550 4400 1650
Wire Wire Line
	4400 1650 4250 1650
Text Label 4400 800  0    60   ~ 0
VCC
Wire Wire Line
	4400 800  4400 1050
Wire Wire Line
	7250 3450 7100 3450
Wire Wire Line
	7100 3550 7650 3550
Wire Wire Line
	7350 2950 7100 2950
Wire Wire Line
	7100 3050 7350 3050
Wire Wire Line
	7350 3150 7100 3150
NoConn ~ 7100 3250
Text Notes 3500 1550 0    60   ~ 0
Подсветка экрана
Text Notes 400  4650 0    60   ~ 0
Датчик паяльника
Wire Wire Line
	2000 2750 2050 2750
Wire Wire Line
	2050 2750 2050 3100
Wire Wire Line
	2000 2850 2050 2850
Connection ~ 2050 2850
Wire Wire Line
	1200 2750 1100 2750
Wire Wire Line
	1100 2850 1200 2850
Wire Wire Line
	1100 2950 1200 2950
Wire Wire Line
	1200 2950 1200 4000
Text Notes 550  2650 0    60   ~ 0
Датчики фена
Text Notes 6550 2850 0    60   ~ 0
Регуляторы
NoConn ~ 8200 1550
NoConn ~ 8200 1950
NoConn ~ 8200 2150
NoConn ~ 10100 2950
NoConn ~ 10100 2750
NoConn ~ 10100 2650
$Comp
L PWR_FLAG #FLG015
U 1 1 528E54C5
P 1150 750
F 0 "#FLG015" H 1150 845 30  0001 C CNN
F 1 "PWR_FLAG" H 1150 930 30  0000 C CNN
F 2 "" H 1150 750 60  0000 C CNN
F 3 "" H 1150 750 60  0000 C CNN
	1    1150 750 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG016
U 1 1 528E54D4
P 1150 1150
F 0 "#FLG016" H 1150 1245 30  0001 C CNN
F 1 "PWR_FLAG" H 1150 1330 30  0000 C CNN
F 2 "" H 1150 1150 60  0000 C CNN
F 3 "" H 1150 1150 60  0000 C CNN
	1    1150 1150
	-1   0    0    1   
$EndComp
$Comp
L C C7
U 1 1 528E3262
P 2650 950
F 0 "C7" H 2650 1050 40  0000 L CNN
F 1 "100n" H 2656 865 40  0000 L CNN
F 2 "~" H 2688 800 30  0000 C CNN
F 3 "~" H 2650 950 60  0000 C CNN
	1    2650 950 
	1    0    0    -1  
$EndComp
Connection ~ 2350 1150
Wire Wire Line
	2150 750  2900 750 
Connection ~ 2650 750 
Wire Wire Line
	6650 1650 7150 1650
Wire Wire Line
	5200 1550 4700 1550
Wire Wire Line
	10300 1250 10100 1250
Wire Wire Line
	7250 3700 7250 3450
NoConn ~ 3500 4400
$Comp
L CONN_2 P12
U 1 1 528E5B5D
P 700 2150
F 0 "P12" V 650 2150 40  0000 C CNN
F 1 "CONN_2" V 750 2150 40  0000 C CNN
F 2 "" H 700 2150 60  0000 C CNN
F 3 "" H 700 2150 60  0000 C CNN
	1    700  2150
	-1   0    0    1   
$EndComp
Text Label 1250 2050 0    60   ~ 0
HV
Wire Wire Line
	1250 2050 1050 2050
$Comp
L GND #PWR017
U 1 1 528E5C63
P 1250 2350
F 0 "#PWR017" H 1250 2350 30  0001 C CNN
F 1 "GND" H 1250 2280 30  0001 C CNN
F 2 "" H 1250 2350 60  0000 C CNN
F 3 "" H 1250 2350 60  0000 C CNN
	1    1250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2350 1250 2250
Wire Wire Line
	1250 2250 1050 2250
Text Label 10300 2450 0    60   ~ 0
buttons
Wire Wire Line
	10300 2450 10100 2450
$Comp
L CONN_7 P7
U 1 1 528F20DE
P 6750 3250
F 0 "P7" V 6720 3250 60  0000 C CNN
F 1 "CONN_7" V 6820 3250 60  0000 C CNN
F 2 "" H 6750 3250 60  0000 C CNN
F 3 "" H 6750 3250 60  0000 C CNN
	1    6750 3250
	-1   0    0    1   
$EndComp
Text Label 7350 3350 0    60   ~ 0
buttons
Wire Wire Line
	7100 3350 7900 3350
$Comp
L R R2
U 1 1 528F3570
P 7900 3600
F 0 "R2" V 7980 3600 40  0000 C CNN
F 1 "1k" V 7907 3601 40  0000 C CNN
F 2 "~" V 7830 3600 30  0000 C CNN
F 3 "~" H 7900 3600 30  0000 C CNN
	1    7900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3550 7650 3850
Wire Wire Line
	7650 3850 7900 3850
Wire Wire Line
	4400 2550 4400 3200
$EndSCHEMATC
