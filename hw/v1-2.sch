EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Регулятор фена"
Date "2022-08-20"
Rev "3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x07_Odd_Even P2
U 1 1 51FCB1D6
P 7100 1500
F 0 "P2" H 7100 1900 60  0000 C CNN
F 1 "lcd" V 7150 1500 60  0000 C CNN
F 2 "connectors_new:Pin_Header_Straight_2x07_Pitch2.54mm_bare" H 7100 1500 60  0001 C CNN
F 3 "" H 7100 1500 60  0000 C CNN
	1    7100 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 51FCC010
P 2000 950
F 0 "C1" H 2050 1050 40  0000 L CNN
F 1 "100uf" H 2050 850 40  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D8.0mm_P2.50mm" H 2100 800 30  0000 C CNN
F 3 "~" H 2000 950 300 0000 C CNN
	1    2000 950 
	1    0    0    -1  
$EndComp
Text Label 9100 700  0    60   ~ 0
+5
Text Label 7400 1400 0    60   ~ 0
LCD_PWR
Text Label 7400 1800 0    60   ~ 0
LCD_CLK
Text Label 7400 1700 0    60   ~ 0
LCD_CS
Text Label 6900 1800 2    60   ~ 0
LCD_SDA
Text Label 6900 1700 2    60   ~ 0
LCD_RST
$Comp
L Connector:Conn_01x02_Male P10
U 1 1 51FCD16A
P 10600 5550
F 0 "P10" V 10550 5550 40  0000 C CNN
F 1 "heater" V 10450 5550 40  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-41791-02_02x3.96mm_Straight" H 10600 5550 60  0001 C CNN
F 3 "" H 10600 5550 60  0000 C CNN
	1    10600 5550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male P3
U 1 1 51FCD183
P 900 1950
F 0 "P3" V 850 1950 40  0000 C CNN
F 1 "AC IN" V 750 1950 40  0000 C CNN
F 2 "EDGVC:15EDGVC-3.5_2" H 900 1950 60  0001 C CNN
F 3 "" H 900 1950 60  0000 C CNN
	1    900  1950
	1    0    0    -1  
$EndComp
Text Label 1100 2550 0    60   ~ 0
220_PHASE
Text Label 1100 1950 0    60   ~ 0
220_NULL
Text Label 10400 6050 0    60   ~ 0
220_NULL
Text Label 9900 6250 0    60   ~ 0
220_PHASE
$Comp
L Relay_SolidState:MOC3023M IC3
U 1 1 528902EB
P 8000 5250
F 0 "IC3" H 7786 5429 40  0000 C CNN
F 1 "MOC3023" H 8100 5065 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7836 5075 29  0001 C CNN
F 3 "" H 8000 5250 60  0000 C CNN
	1    8000 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5289124A
P 8800 5150
F 0 "R20" V 8880 5150 40  0000 C CNN
F 1 "360" V 8807 5151 40  0000 C CNN
F 2 "resistors:R1-MLT_0.5_13" V 8730 5150 30  0001 C CNN
F 3 "~" H 8800 5150 30  0000 C CNN
	1    8800 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R24
U 1 1 52891265
P 8500 5700
F 0 "R24" V 8580 5700 40  0000 C CNN
F 1 "330" V 8507 5701 40  0000 C CNN
F 2 "resistors:R1-MLT_0.5_13" V 8430 5700 30  0001 C CNN
F 3 "~" H 8500 5700 30  0000 C CNN
	1    8500 5700
	1    0    0    -1  
$EndComp
$Comp
L Triac_Thyristor:BT139-600 U4
U 1 1 528913A0
P 9300 5700
F 0 "U4" H 9050 6050 70  0000 C CNN
F 1 "BT139" H 9000 5450 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 9300 5700 60  0001 C CNN
F 3 "~" H 9300 5700 60  0000 C CNN
	1    9300 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 52891649
P 9800 5350
F 0 "R21" V 9880 5350 40  0000 C CNN
F 1 "39" V 9807 5351 40  0000 C CNN
F 2 "resistors:R1-MLT_0.5_13" V 9730 5350 30  0001 C CNN
F 3 "~" H 9800 5350 30  0000 C CNN
	1    9800 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 52891662
P 9800 5950
F 0 "C6" H 9800 6050 40  0000 L CNN
F 1 "0.01" H 9806 5865 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L13.0mm_W5.0mm_P10.00mm_FKS3_FKP3_MKS4" H 9838 5800 30  0000 C CNN
F 3 "~" H 9800 5950 60  0000 C CNN
	1    9800 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 528918F8
P 7300 5150
F 0 "R19" V 7380 5150 40  0000 C CNN
F 1 "180" V 7307 5151 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 7230 5150 30  0001 C CNN
F 3 "~" H 7300 5150 30  0000 C CNN
	1    7300 5150
	0    -1   -1   0   
$EndComp
Text Label 6600 5150 0    60   ~ 0
pump_heat
Text Notes 10450 5350 0    60   ~ 0
Нагрев фена
$Comp
L Device:R R26
U 1 1 52891EB1
P 4400 7200
F 0 "R26" V 4480 7200 40  0000 C CNN
F 1 "10k" V 4407 7201 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 4330 7200 30  0001 C CNN
F 3 "~" H 4400 7200 30  0000 C CNN
	1    4400 7200
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC849 Q2
U 1 1 52891FE1
P 5050 7200
F 0 "Q2" H 5050 7051 40  0000 R CNN
F 1 "BC849" H 5050 7350 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4950 7302 29  0000 C CNN
F 3 "~" H 5050 7200 60  0000 C CNN
	1    5050 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male P11
U 1 1 52891FFC
P 5850 6950
F 0 "P11" V 5800 6950 40  0000 C CNN
F 1 "turbine" V 5700 6950 40  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 5850 6950 60  0001 C CNN
F 3 "" H 5850 6950 60  0000 C CNN
	1    5850 6950
	-1   0    0    -1  
$EndComp
Text Label 5600 7500 0    60   ~ 0
gnd
Text Label 3750 7200 0    60   ~ 0
pump
Text Notes 5850 6750 0    60   ~ 0
Компрессор фена
$Comp
L Device:D D4
U 1 1 528B580D
P 5450 7150
F 0 "D4" H 5450 7250 40  0000 C CNN
F 1 "DIODE" H 5450 7050 40  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 5450 7150 60  0001 C CNN
F 3 "~" H 5450 7150 60  0000 C CNN
	1    5450 7150
	0    1    1    0   
$EndComp
Text Label 2500 6900 0    60   ~ 0
phase_sync
$Comp
L Amplifier_Operational:LM358 U2
U 2 1 528B9C07
P 3250 3600
F 0 "U2" H 3400 3750 60  0000 C CNN
F 1 "LM358" H 3450 3400 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3250 3600 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3250 3600 60  0000 C CNN
	2    3250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 528B9C94
P 2300 3500
F 0 "R8" V 2380 3500 40  0000 C CNN
F 1 "1k" V 2307 3501 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 2230 3500 30  0001 C CNN
F 3 "~" H 2300 3500 30  0000 C CNN
	1    2300 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 528B9F40
P 2650 4050
F 0 "R10" V 2730 4050 40  0000 C CNN
F 1 "1k" V 2657 4051 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 2580 4050 30  0001 C CNN
F 3 "~" H 2650 4050 30  0000 C CNN
	1    2650 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 528BA0C7
P 3500 3150
F 0 "R7" V 3580 3150 40  0000 C CNN
F 1 "220k" V 3507 3151 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 3430 3150 30  0001 C CNN
F 3 "~" H 3500 3150 30  0000 C CNN
	1    3500 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 528BA3BD
P 4800 3600
F 0 "R9" V 4880 3600 40  0000 C CNN
F 1 "100k" V 4807 3601 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 4730 3600 30  0001 C CNN
F 3 "~" H 4800 3600 30  0000 C CNN
	1    4800 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 528BA48A
P 5150 3900
F 0 "C3" H 5150 4000 40  0000 L CNN
F 1 "100n" H 5156 3815 40  0000 L CNN
F 2 "capacitors:CC-ceramic_5" H 5188 3750 30  0000 C CNN
F 3 "~" H 5150 3900 60  0000 C CNN
	1    5150 3900
	1    0    0    -1  
$EndComp
Text Label 5250 3600 0    60   ~ 0
pump_sens
Text Label 1600 3550 0    60   ~ 0
+5
Text Label 7400 1500 0    60   ~ 0
+5
Text Label 6900 1300 2    60   ~ 0
var_pump_heat
Text Label 7400 1200 0    60   ~ 0
var_pump
Text Label 6900 1200 2    60   ~ 0
var_solder
$Comp
L Connector:Conn_01x03_Male K2
U 1 1 528BB840
P 900 3250
F 0 "K2" V 850 3250 50  0000 C CNN
F 1 "turbine-sens" V 750 3250 40  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 900 3250 60  0001 C CNN
F 3 "" H 900 3250 60  0000 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 950  9100 850 
Connection ~ 9100 850 
Wire Wire Line
	10400 5650 10400 6050
Wire Wire Line
	9300 5000 9300 5150
Wire Wire Line
	8500 6100 9300 6100
Wire Wire Line
	9300 5000 9800 5000
Connection ~ 9300 5150
Wire Wire Line
	9300 6250 9800 6250
Connection ~ 9300 6100
Connection ~ 9800 6250
Connection ~ 9800 5000
Wire Wire Line
	5600 7500 5600 7400
Wire Wire Line
	5450 7400 5600 7400
Connection ~ 5600 7400
Wire Wire Line
	2650 3150 2650 3700
Connection ~ 2650 3700
Connection ~ 4400 3600
Wire Wire Line
	1200 4400 1600 4400
Connection ~ 2650 4400
Connection ~ 5150 3600
Wire Wire Line
	1600 3550 1600 3700
Connection ~ 8500 5350
Text Notes 550  3050 0    60   ~ 0
Датчики фена
$Comp
L power:PWR_FLAG #FLG015
U 1 1 528E54C5
P 1100 800
F 0 "#FLG015" H 1100 895 30  0001 C CNN
F 1 "PWR_FLAG" H 1100 980 30  0000 C CNN
F 2 "" H 1100 800 60  0000 C CNN
F 3 "" H 1100 800 60  0000 C CNN
	1    1100 800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG016
U 1 1 528E54D4
P 1100 1500
F 0 "#FLG016" H 1100 1595 30  0001 C CNN
F 1 "PWR_FLAG" H 1100 1680 30  0000 C CNN
F 2 "" H 1100 1500 60  0000 C CNN
F 3 "" H 1100 1500 60  0000 C CNN
	1    1100 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 528E3262
P 9750 800
F 0 "C7" H 9750 900 40  0000 L CNN
F 1 "100n" H 9756 715 40  0000 L CNN
F 2 "capacitors:CC-ceramic_5" H 9788 650 30  0000 C CNN
F 3 "~" H 9750 800 60  0000 C CNN
	1    9750 800 
	1    0    0    -1  
$EndComp
Text Label 7400 1300 0    60   ~ 0
buttons
$Comp
L Device:R R2
U 1 1 528F3570
P 7100 2350
F 0 "R2" V 7180 2350 40  0000 C CNN
F 1 "1k" V 7107 2351 40  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 7030 2350 30  0001 C CNN
F 3 "~" H 7100 2350 30  0000 C CNN
	1    7100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 850  9100 700 
Wire Wire Line
	9300 6100 9300 6250
Wire Wire Line
	9800 6250 9900 6250
Wire Wire Line
	9800 5000 10400 5000
Wire Wire Line
	5450 6850 5550 6850
Wire Wire Line
	5150 3600 5250 3600
Wire Wire Line
	8500 5350 8650 5350
Text Label 9800 3050 0    60   ~ 0
LCD_RST
Text Label 9800 3150 0    60   ~ 0
LCD_CS
Text Label 9800 3250 0    60   ~ 0
LCD_SDA
Text Label 9800 3350 0    60   ~ 0
LCD_CLK
Text Label 9800 1250 0    60   ~ 0
LCD_PWR
Wire Wire Line
	9600 1450 9800 1450
Wire Wire Line
	9800 3250 9600 3250
Wire Wire Line
	9800 3050 9600 3050
Wire Wire Line
	9800 3150 9600 3150
Wire Wire Line
	9600 1550 10150 1550
Wire Wire Line
	9600 1650 10150 1650
Wire Wire Line
	9600 1750 10150 1750
Text Label 9800 1950 0    60   ~ 0
pump_sens
Wire Wire Line
	9800 1950 9600 1950
Text Label 9800 2150 0    60   ~ 0
var_pump
Text Label 9800 2250 0    60   ~ 0
var_pump_heat
Text Label 9800 2050 0    60   ~ 0
var_solder
Wire Wire Line
	9800 2150 9600 2150
Wire Wire Line
	9600 2250 9800 2250
Wire Wire Line
	9800 2050 9600 2050
Text Label 9800 2850 0    60   ~ 0
phase_sync
Wire Wire Line
	9800 2850 9600 2850
Text Label 9800 1450 0    60   ~ 0
pump_heat
Wire Wire Line
	9800 3350 9600 3350
Text Label 9800 1550 0    60   ~ 0
pump
Wire Wire Line
	9800 1250 9600 1250
Text Label 9800 2450 0    60   ~ 0
buttons
Wire Wire Line
	9800 2450 9600 2450
NoConn ~ 9600 2650
NoConn ~ 9600 2750
Wire Wire Line
	9100 3850 9000 3850
Wire Wire Line
	9000 3850 9000 3750
Wire Wire Line
	9100 3850 9100 3750
Wire Wire Line
	9000 950  9000 850 
Wire Wire Line
	9000 850  9100 850 
NoConn ~ 8400 1850
NoConn ~ 8400 1650
NoConn ~ 8400 1450
Wire Wire Line
	5650 7050 5600 7050
Wire Wire Line
	5600 7050 5600 7400
Wire Wire Line
	10400 5000 10400 5550
Wire Wire Line
	9150 5800 8650 5800
Wire Wire Line
	8650 5800 8650 5350
Wire Wire Line
	9300 5150 9300 5550
Wire Wire Line
	9300 5850 9300 6100
Wire Wire Line
	8300 5350 8500 5350
Wire Wire Line
	7550 5350 7700 5350
Wire Wire Line
	5450 7300 5450 7400
Wire Wire Line
	5450 6850 5450 7000
Wire Wire Line
	3750 7200 4250 7200
Wire Wire Line
	1100 3150 1250 3150
$Comp
L Amplifier_Operational:LM358 U2
U 3 1 63835FBB
P 1700 4050
F 0 "U2" H 1658 4096 50  0000 L CNN
F 1 "LM358" H 1658 4005 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1700 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 1700 4050 50  0001 C CNN
	3    1700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3700 2950 3700
Wire Wire Line
	3550 3600 4400 3600
Wire Wire Line
	1600 4350 1600 4400
Connection ~ 1600 4400
Wire Wire Line
	2650 4400 5150 4400
Wire Wire Line
	9800 5500 9800 5800
Wire Wire Line
	9800 5000 9800 5200
Wire Wire Line
	8950 5150 9300 5150
Wire Wire Line
	8300 5150 8650 5150
Wire Wire Line
	8500 5350 8500 5550
Wire Wire Line
	8500 5850 8500 6100
Wire Wire Line
	9800 6100 9800 6250
Wire Wire Line
	7450 5150 7700 5150
Wire Wire Line
	6600 5150 7150 5150
Wire Wire Line
	2450 3500 2950 3500
Wire Wire Line
	2150 3500 2050 3500
Wire Wire Line
	2650 3700 2650 3900
Wire Wire Line
	2650 4200 2650 4400
Wire Wire Line
	2650 3150 3350 3150
Wire Wire Line
	4400 3600 4650 3600
Wire Wire Line
	4950 3600 5150 3600
Wire Wire Line
	5150 3600 5150 3750
Wire Wire Line
	5150 4050 5150 4400
Wire Wire Line
	7100 2100 7100 2200
Wire Wire Line
	7100 2500 7100 2600
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 63CB2CA5
P 1550 6700
F 0 "D1" H 1894 6746 50  0000 L CNN
F 1 "D_Bridge_+-AA" H 1894 6655 50  0000 L CNN
F 2 "misc:MB10S" H 1550 6700 50  0001 C CNN
F 3 "~" H 1550 6700 50  0001 C CNN
	1    1550 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 63CB4CC1
P 1350 6250
F 0 "R3" V 1143 6250 50  0000 C CNN
F 1 "100k" V 1234 6250 50  0000 C CNN
F 2 "resistors:R1-MLT_0.5_13" V 1280 6250 50  0001 C CNN
F 3 "~" H 1350 6250 50  0001 C CNN
	1    1350 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 63CCA9DE
P 1350 7150
F 0 "R4" V 1143 7150 50  0000 C CNN
F 1 "100k" V 1234 7150 50  0000 C CNN
F 2 "resistors:R1-MLT_0.5_13" V 1280 7150 50  0001 C CNN
F 3 "~" H 1350 7150 50  0001 C CNN
	1    1350 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 7150 1550 7150
Wire Wire Line
	1550 7150 1550 7000
Wire Wire Line
	1500 6250 1550 6250
Wire Wire Line
	1550 6250 1550 6400
Text Label 1200 7150 2    50   ~ 0
220_NULL
Text Label 1200 6250 2    50   ~ 0
220_PHASE
$Comp
L Isolator:EL817 U7
U 1 1 63CF5BDA
P 2200 7150
F 0 "U7" H 2200 7475 50  0000 C CNN
F 1 "EL817" H 2200 7384 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2000 6950 50  0001 L CIN
F 3 "http://www.everlight.com/file/ProductFile/EL817.pdf" H 2200 7150 50  0001 L CNN
	1    2200 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6700 1850 7050
Wire Wire Line
	1850 7050 1900 7050
Wire Wire Line
	1250 6700 800  6700
Wire Wire Line
	800  6700 800  7250
Wire Wire Line
	800  7250 1900 7250
Text Notes 1550 7350 0    50   ~ 0
1.2v@20mA
$Comp
L Device:R R5
U 1 1 63D659D5
P 2500 6500
F 0 "R5" H 2570 6546 50  0000 L CNN
F 1 "27k" H 2570 6455 50  0000 L CNN
F 2 "resistors:R1-MLT_0.125_10" V 2430 6500 50  0001 C CNN
F 3 "~" H 2500 6500 50  0001 C CNN
	1    2500 6500
	1    0    0    -1  
$EndComp
Text Label 2500 6350 0    50   ~ 0
+5
Wire Wire Line
	2500 6650 2500 7050
Text Label 2500 7250 0    50   ~ 0
gnd
Wire Wire Line
	4550 7200 4850 7200
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 63D7D50E
P 900 1100
F 0 "J1" H 792 1585 50  0000 C CNN
F 1 "power" H 792 1494 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MicroLatch-53253-0870_08x2.00mm_Straight" H 900 1100 50  0001 C CNN
F 3 "~" H 900 1100 50  0001 C CNN
	1    900  1100
	-1   0    0    -1  
$EndComp
Text Label 1250 800  0    50   ~ 0
+42
Wire Wire Line
	1250 800  1100 800 
Wire Wire Line
	1100 900  1100 800 
Connection ~ 1100 800 
Text Label 1250 1000 0    50   ~ 0
gnd
Wire Wire Line
	1250 1000 1100 1000
Wire Wire Line
	1100 1000 1100 1100
Connection ~ 1100 1000
Text Label 1100 1500 0    50   ~ 0
+5
Text Label 1250 1400 0    50   ~ 0
gnd
Wire Wire Line
	1250 1400 1100 1400
Wire Wire Line
	1100 1300 1100 1400
Connection ~ 1100 1400
Text Label 1100 1200 0    50   ~ 0
pwr_on
Wire Wire Line
	1100 1300 1100 1200
Connection ~ 1100 1300
Text Label 2000 1100 3    50   ~ 0
gnd
Text Label 2000 800  0    50   ~ 0
+5
$Comp
L Device:C C4
U 1 1 63F07276
P 2400 950
F 0 "C4" H 2515 996 50  0000 L CNN
F 1 "100n" H 2515 905 50  0000 L CNN
F 2 "capacitors:CC-ceramic_5" H 2438 800 50  0001 C CNN
F 3 "~" H 2400 950 50  0001 C CNN
	1    2400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 800  2400 800 
Wire Wire Line
	2400 1100 2300 1100
Text Label 2900 4400 0    50   ~ 0
gnd
Wire Wire Line
	1600 4400 2100 4400
Text Label 5150 7550 0    50   ~ 0
gnd
Wire Wire Line
	5150 7550 5150 7400
Text Label 7550 5350 2    50   ~ 0
gnd
Text Label 7400 1600 0    50   ~ 0
gnd
Text Label 9100 3850 0    50   ~ 0
gnd
Text Label 9900 650  0    50   ~ 0
+5
Text Label 9900 1050 0    50   ~ 0
gnd
$Comp
L Device:C C2
U 1 1 63F3E6EF
P 2100 4050
F 0 "C2" H 2215 4096 50  0000 L CNN
F 1 "100n" H 2215 4005 50  0000 L CNN
F 2 "capacitors:CC-ceramic_5" H 2138 3900 50  0001 C CNN
F 3 "~" H 2100 4050 50  0001 C CNN
	1    2100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3900 2100 3700
Wire Wire Line
	2100 3700 1600 3700
Connection ~ 1600 3700
Wire Wire Line
	1600 3700 1600 3750
Wire Wire Line
	2100 4200 2100 4400
Connection ~ 2100 4400
Wire Wire Line
	2100 4400 2650 4400
$Comp
L Device:R R11
U 1 1 63F5FEB6
P 5150 6600
F 0 "R11" H 5220 6646 50  0000 L CNN
F 1 "22k" H 5220 6555 50  0000 L CNN
F 2 "resistors:R1-MLT_0.125_10" V 5080 6600 50  0001 C CNN
F 3 "~" H 5150 6600 50  0001 C CNN
	1    5150 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_CBE Q1
U 1 1 63F62C63
P 5450 5950
F 0 "Q1" H 5641 5904 50  0000 L CNN
F 1 "KT209" H 5641 5995 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5650 6050 50  0001 C CNN
F 3 "~" H 5450 5950 50  0001 C CNN
	1    5450 5950
	1    0    0    1   
$EndComp
Text Label 5550 5750 0    50   ~ 0
+42
Wire Wire Line
	5150 6450 5150 5950
Wire Wire Line
	5150 5950 5250 5950
Wire Wire Line
	5150 6750 5150 7000
Wire Wire Line
	5550 6150 5550 6850
Connection ~ 5550 6850
Wire Wire Line
	5550 6850 5650 6850
Wire Wire Line
	5650 6950 5650 6850
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 63FA0511
P 900 2450
F 0 "J2" H 1008 2631 50  0000 C CNN
F 1 "fuse" H 1008 2540 50  0000 C CNN
F 2 "EDGVC:15EDGVC-3.5_2" H 900 2450 50  0001 C CNN
F 3 "~" H 900 2450 50  0001 C CNN
	1    900  2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2450 1100 2450
Wire Wire Line
	1100 2050 1250 2050
Wire Wire Line
	1250 2050 1250 2450
$Comp
L Device:R R6
U 1 1 63FCCE4C
P 1500 3150
F 0 "R6" V 1293 3150 50  0000 C CNN
F 1 "4k7" V 1384 3150 50  0000 C CNN
F 2 "resistors:R1-MLT_0.125_10" V 1430 3150 50  0001 C CNN
F 3 "~" H 1500 3150 50  0001 C CNN
	1    1500 3150
	0    1    1    0   
$EndComp
Text Label 1650 3150 0    50   ~ 0
+5
Text Label 1350 2850 0    50   ~ 0
idle
Wire Wire Line
	1350 2850 1250 2850
Wire Wire Line
	1250 2850 1250 3150
Connection ~ 1250 3150
Wire Wire Line
	1250 3150 1350 3150
$Comp
L Device:C C5
U 1 1 63FDA7D2
P 10050 800
F 0 "C5" H 10165 846 50  0000 L CNN
F 1 "100n" H 10165 755 50  0000 L CNN
F 2 "capacitors:CC-ceramic_5" H 10088 650 50  0001 C CNN
F 3 "~" H 10050 800 50  0001 C CNN
	1    10050 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 950  9900 950 
Wire Wire Line
	9750 650  10050 650 
Wire Wire Line
	9900 1050 9900 950 
Connection ~ 9900 950 
Wire Wire Line
	9900 950  10050 950 
Wire Wire Line
	1100 3250 1200 3250
Wire Wire Line
	1200 3250 1200 4400
Wire Wire Line
	1100 3350 2050 3350
Wire Wire Line
	2050 3350 2050 3500
Wire Wire Line
	4400 3150 4400 3600
Wire Wire Line
	3650 3150 4400 3150
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 6401E0C2
P 4800 1500
F 0 "J3" H 4471 1596 50  0000 R CNN
F 1 "AVR-ISP-6" H 4471 1505 50  0000 R CNN
F 2 "misc:AVR_ISP_TH_6" V 4550 1550 50  0001 C CNN
F 3 " ~" H 3525 950 50  0001 C CNN
	1    4800 1500
	1    0    0    -1  
$EndComp
Text Label 4700 1000 0    50   ~ 0
+5
Text Label 4700 1900 0    50   ~ 0
gnd
Text Label 5200 1600 0    50   ~ 0
reset
Text Label 5200 1300 0    50   ~ 0
prog-miso
Text Label 5200 1400 0    50   ~ 0
prog-mosi
Text Label 5200 1500 0    50   ~ 0
prog-sck
Text Label 8400 1250 2    50   ~ 0
reset
Text Label 10150 1550 0    50   ~ 0
prog-mosi
Text Label 10150 1650 0    50   ~ 0
prog-miso
Text Label 10150 1750 0    50   ~ 0
prog-sck
NoConn ~ 9600 1350
NoConn ~ 9600 2350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 64049DA2
P 2300 1100
F 0 "#FLG0101" H 2300 1195 30  0001 C CNN
F 1 "PWR_FLAG" H 2300 1280 30  0000 C CNN
F 2 "" H 2300 1100 60  0000 C CNN
F 3 "" H 2300 1100 60  0000 C CNN
	1    2300 1100
	-1   0    0    1   
$EndComp
Connection ~ 2300 1100
Wire Wire Line
	2300 1100 2000 1100
NoConn ~ 6900 1500
NoConn ~ 6900 1600
NoConn ~ 6900 1400
Text Label 7100 2600 0    50   ~ 0
buttons
Text Label 7100 2100 0    50   ~ 0
+5
$Comp
L MCU_Microchip_ATmega:ATmega8A-PU U6
U 1 1 63023851
P 9000 2350
F 0 "U6" H 9000 3931 50  0000 C CNN
F 1 "ATmega8A-PU" H 9400 3750 50  0000 C CNN
F 2 "misc:atmega8-DIL28-3_panel" H 9000 2350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Microchip%208bit%20mcu%20AVR%20ATmega8A%20data%20sheet%2040001974A.pdf" H 9000 2350 50  0001 C CNN
	1    9000 2350
	1    0    0    -1  
$EndComp
Text Label 9600 2950 0    50   ~ 0
idle
$Comp
L Amplifier_Operational:LM358 U2
U 1 1 635D31E0
P 3250 5050
F 0 "U2" H 3250 5417 50  0000 C CNN
F 1 "LM358" H 3250 5326 50  0000 C CNN
F 2 "" H 3250 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3250 5050 50  0001 C CNN
	1    3250 5050
	1    0    0    -1  
$EndComp
NoConn ~ 3550 5050
Text Label 2750 5150 0    50   ~ 0
gnd
Wire Wire Line
	2750 5150 2900 5150
Wire Wire Line
	2900 5150 2900 4950
Wire Wire Line
	2900 4950 2950 4950
Connection ~ 2900 5150
Wire Wire Line
	2900 5150 2950 5150
$EndSCHEMATC
