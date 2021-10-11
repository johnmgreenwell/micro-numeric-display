EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "7-Seg Bubble Display Test Schematic"
Date ""
Rev ""
Comp "John Greenwell"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L teensy:Teensy3.1 U1
U 1 1 5FD2FC87
P 3550 4000
F 0 "U1" H 4350 5550 60  0000 C CNN
F 1 "Teensy3.1" H 4450 2450 60  0000 C CNN
F 2 "" H 3550 3250 60  0000 C CNN
F 3 "" H 3550 3250 60  0000 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 5FD31567
P 6050 4100
F 0 "U2" H 6250 4700 50  0000 C CNN
F 1 "74HC595" H 6350 3400 50  0000 C CNN
F 2 "" H 6050 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FD32663
P 6050 4900
F 0 "#PWR04" H 6050 4650 50  0001 C CNN
F 1 "GND" H 6055 4727 50  0000 C CNN
F 2 "" H 6050 4900 50  0001 C CNN
F 3 "" H 6050 4900 50  0001 C CNN
	1    6050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4800 6050 4900
$Comp
L Device:R R1
U 1 1 5FD33576
P 6750 3700
F 0 "R1" V 6700 3850 50  0000 C CNN
F 1 "330" V 6750 3700 50  0000 C CNN
F 2 "" V 6680 3700 50  0001 C CNN
F 3 "~" H 6750 3700 50  0001 C CNN
	1    6750 3700
	0    1    1    0   
$EndComp
$Comp
L custom:7-Seg_Bubble U3
U 1 1 5FD36AC2
P 7450 4100
F 0 "U3" H 7700 4750 50  0000 C CNN
F 1 "7-Seg_Bubble" H 7800 3450 50  0000 C CNN
F 2 "" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FD3A6A6
P 6750 3800
F 0 "R2" V 6700 3950 50  0000 C CNN
F 1 "330" V 6750 3800 50  0000 C CNN
F 2 "" V 6680 3800 50  0001 C CNN
F 3 "~" H 6750 3800 50  0001 C CNN
	1    6750 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FD3A844
P 6750 3900
F 0 "R3" V 6700 4050 50  0000 C CNN
F 1 "330" V 6750 3900 50  0000 C CNN
F 2 "" V 6680 3900 50  0001 C CNN
F 3 "~" H 6750 3900 50  0001 C CNN
	1    6750 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FD3AA07
P 6750 4000
F 0 "R4" V 6700 4150 50  0000 C CNN
F 1 "330" V 6750 4000 50  0000 C CNN
F 2 "" V 6680 4000 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FD3ABA0
P 6750 4100
F 0 "R5" V 6700 4250 50  0000 C CNN
F 1 "330" V 6750 4100 50  0000 C CNN
F 2 "" V 6680 4100 50  0001 C CNN
F 3 "~" H 6750 4100 50  0001 C CNN
	1    6750 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FD3ADC4
P 6750 4200
F 0 "R6" V 6700 4350 50  0000 C CNN
F 1 "330" V 6750 4200 50  0000 C CNN
F 2 "" V 6680 4200 50  0001 C CNN
F 3 "~" H 6750 4200 50  0001 C CNN
	1    6750 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5FD3AF62
P 6750 4300
F 0 "R7" V 6700 4450 50  0000 C CNN
F 1 "330" V 6750 4300 50  0000 C CNN
F 2 "" V 6680 4300 50  0001 C CNN
F 3 "~" H 6750 4300 50  0001 C CNN
	1    6750 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FD3B1EC
P 6750 4400
F 0 "R8" V 6700 4550 50  0000 C CNN
F 1 "330" V 6750 4400 50  0000 C CNN
F 2 "" V 6680 4400 50  0001 C CNN
F 3 "~" H 6750 4400 50  0001 C CNN
	1    6750 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3700 6600 3700
Wire Wire Line
	6900 3700 7050 3700
Wire Wire Line
	6450 3800 6600 3800
Wire Wire Line
	6900 3800 7050 3800
Wire Wire Line
	6450 3900 6600 3900
Wire Wire Line
	6900 3900 7050 3900
Wire Wire Line
	6450 4000 6600 4000
Wire Wire Line
	6900 4000 7050 4000
Wire Wire Line
	6450 4100 6600 4100
Wire Wire Line
	6900 4100 7050 4100
Wire Wire Line
	6450 4200 6600 4200
Wire Wire Line
	6900 4200 7050 4200
Wire Wire Line
	6450 4300 6600 4300
Wire Wire Line
	6900 4300 7050 4300
Wire Wire Line
	6450 4400 6600 4400
Wire Wire Line
	6900 4400 7050 4400
NoConn ~ 6450 4600
$Comp
L power:+3.3V #PWR02
U 1 1 5FD3E904
P 4900 4900
F 0 "#PWR02" H 4900 4750 50  0001 C CNN
F 1 "+3.3V" H 4915 5073 50  0000 C CNN
F 2 "" H 4900 4900 50  0001 C CNN
F 3 "" H 4900 4900 50  0001 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4950 4900 4950
Wire Wire Line
	4900 4950 4900 4900
$Comp
L power:GND #PWR01
U 1 1 5FD4024E
P 2050 4300
F 0 "#PWR01" H 2050 4050 50  0001 C CNN
F 1 "GND" H 2055 4127 50  0000 C CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3850 2200 3850
Wire Wire Line
	2450 4550 2200 4550
Wire Wire Line
	2450 4250 2050 4250
Wire Wire Line
	2050 4250 2050 4300
Text Label 2200 3850 0    50   ~ 0
DAT
Text Label 2200 4550 0    50   ~ 0
SCK
$Comp
L power:GND #PWR05
U 1 1 5FD39584
P 5400 4350
F 0 "#PWR05" H 5400 4100 50  0001 C CNN
F 1 "GND" H 5405 4177 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4300 5400 4300
Wire Wire Line
	5400 4300 5400 4350
Wire Wire Line
	5650 3700 5400 3700
Text Label 5400 3700 0    50   ~ 0
DAT
Wire Wire Line
	5650 3900 5400 3900
Text Label 5400 3900 0    50   ~ 0
SCK
$Comp
L Device:CP1_Small C1
U 1 1 5FD3BE44
P 6550 3050
F 0 "C1" H 6641 3096 50  0000 L CNN
F 1 "CP1_Small" H 6641 3005 50  0000 L CNN
F 2 "" H 6550 3050 50  0001 C CNN
F 3 "~" H 6550 3050 50  0001 C CNN
	1    6550 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FD3D24E
P 6550 3250
F 0 "#PWR07" H 6550 3000 50  0001 C CNN
F 1 "GND" H 6555 3077 50  0000 C CNN
F 2 "" H 6550 3250 50  0001 C CNN
F 3 "" H 6550 3250 50  0001 C CNN
	1    6550 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3150 6550 3250
$Comp
L power:+3.3V #PWR06
U 1 1 5FD3E908
P 6050 2650
F 0 "#PWR06" H 6050 2500 50  0001 C CNN
F 1 "+3.3V" H 6065 2823 50  0000 C CNN
F 2 "" H 6050 2650 50  0001 C CNN
F 3 "" H 6050 2650 50  0001 C CNN
	1    6050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2650 6050 2800
Wire Wire Line
	6550 2950 6550 2800
Wire Wire Line
	6550 2800 6050 2800
Connection ~ 6050 2800
Wire Wire Line
	6050 2800 6050 3500
Wire Wire Line
	2450 3750 2200 3750
Text Label 2200 3750 0    50   ~ 0
LAT
Wire Wire Line
	5650 4200 5400 4200
Text Label 5400 4200 0    50   ~ 0
LAT
$Comp
L power:+3.3V #PWR03
U 1 1 5FD41903
P 5150 3900
F 0 "#PWR03" H 5150 3750 50  0001 C CNN
F 1 "+3.3V" H 5165 4073 50  0000 C CNN
F 2 "" H 5150 3900 50  0001 C CNN
F 3 "" H 5150 3900 50  0001 C CNN
	1    5150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4000 5150 4000
Wire Wire Line
	5150 4000 5150 3900
Wire Wire Line
	2450 4650 2200 4650
Wire Wire Line
	2450 4750 2200 4750
Wire Wire Line
	2450 4850 2200 4850
Wire Wire Line
	2450 4950 2200 4950
Text Label 2200 4650 0    50   ~ 0
CC1
Text Label 2200 4750 0    50   ~ 0
CC2
Text Label 2200 4850 0    50   ~ 0
CC3
Text Label 2200 4950 0    50   ~ 0
CC4
Wire Wire Line
	7850 3900 8000 3900
Wire Wire Line
	7850 4000 8000 4000
Wire Wire Line
	7850 4100 8000 4100
Wire Wire Line
	7850 4200 8000 4200
Text Label 8650 3300 0    50   ~ 0
CC1C
Wire Wire Line
	8650 3400 8650 3300
Text Label 8200 3600 0    50   ~ 0
CC1
Text Label 8000 4200 0    50   ~ 0
CC4C
Text Label 8000 4100 0    50   ~ 0
CC3C
Text Label 8000 4000 0    50   ~ 0
CC2C
Text Label 8000 3900 0    50   ~ 0
CC1C
Wire Wire Line
	8350 3600 8200 3600
Wire Wire Line
	8650 3800 8650 3900
$Comp
L power:GND #PWR08
U 1 1 5FD3DC19
P 8650 3900
F 0 "#PWR08" H 8650 3650 50  0001 C CNN
F 1 "GND" H 8655 3727 50  0000 C CNN
F 2 "" H 8650 3900 50  0001 C CNN
F 3 "" H 8650 3900 50  0001 C CNN
	1    8650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 5FD3B49A
P 8550 3600
F 0 "Q1" H 8741 3646 50  0000 L CNN
F 1 "Q_NPN_EBC" H 8700 3350 50  0000 L CNN
F 2 "" H 8750 3700 50  0001 C CNN
F 3 "~" H 8550 3600 50  0001 C CNN
	1    8550 3600
	1    0    0    -1  
$EndComp
Text Label 9500 3300 0    50   ~ 0
CC2C
Wire Wire Line
	9500 3400 9500 3300
Text Label 9050 3600 0    50   ~ 0
CC2
Wire Wire Line
	9200 3600 9050 3600
Wire Wire Line
	9500 3800 9500 3900
$Comp
L power:GND #PWR010
U 1 1 5FD4F94F
P 9500 3900
F 0 "#PWR010" H 9500 3650 50  0001 C CNN
F 1 "GND" H 9505 3727 50  0000 C CNN
F 2 "" H 9500 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0001 C CNN
	1    9500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q3
U 1 1 5FD4F955
P 9400 3600
F 0 "Q3" H 9591 3646 50  0000 L CNN
F 1 "Q_NPN_EBC" H 9550 3350 50  0000 L CNN
F 2 "" H 9600 3700 50  0001 C CNN
F 3 "~" H 9400 3600 50  0001 C CNN
	1    9400 3600
	1    0    0    -1  
$EndComp
Text Label 8650 4300 0    50   ~ 0
CC3C
Wire Wire Line
	8650 4400 8650 4300
Text Label 8200 4600 0    50   ~ 0
CC3
Wire Wire Line
	8350 4600 8200 4600
Wire Wire Line
	8650 4800 8650 4900
$Comp
L power:GND #PWR09
U 1 1 5FD516A0
P 8650 4900
F 0 "#PWR09" H 8650 4650 50  0001 C CNN
F 1 "GND" H 8655 4727 50  0000 C CNN
F 2 "" H 8650 4900 50  0001 C CNN
F 3 "" H 8650 4900 50  0001 C CNN
	1    8650 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q2
U 1 1 5FD516A6
P 8550 4600
F 0 "Q2" H 8741 4646 50  0000 L CNN
F 1 "Q_NPN_EBC" H 8700 4350 50  0000 L CNN
F 2 "" H 8750 4700 50  0001 C CNN
F 3 "~" H 8550 4600 50  0001 C CNN
	1    8550 4600
	1    0    0    -1  
$EndComp
Text Label 9500 4300 0    50   ~ 0
CC4C
Wire Wire Line
	9500 4400 9500 4300
Text Label 9050 4600 0    50   ~ 0
CC4
Wire Wire Line
	9200 4600 9050 4600
Wire Wire Line
	9500 4800 9500 4900
$Comp
L power:GND #PWR011
U 1 1 5FD52C71
P 9500 4900
F 0 "#PWR011" H 9500 4650 50  0001 C CNN
F 1 "GND" H 9505 4727 50  0000 C CNN
F 2 "" H 9500 4900 50  0001 C CNN
F 3 "" H 9500 4900 50  0001 C CNN
	1    9500 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q4
U 1 1 5FD52C77
P 9400 4600
F 0 "Q4" H 9591 4646 50  0000 L CNN
F 1 "Q_NPN_EBC" H 9550 4350 50  0000 L CNN
F 2 "" H 9600 4700 50  0001 C CNN
F 3 "~" H 9400 4600 50  0001 C CNN
	1    9400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3550 2200 3550
Text Label 2200 3550 0    50   ~ 0
LED
$Comp
L Device:LED D?
U 1 1 5FDA8AAC
P 6850 5350
F 0 "D?" H 6843 5095 50  0000 C CNN
F 1 "LED" H 6843 5186 50  0000 C CNN
F 2 "" H 6850 5350 50  0001 C CNN
F 3 "~" H 6850 5350 50  0001 C CNN
	1    6850 5350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDA9645
P 7250 5450
F 0 "#PWR?" H 7250 5200 50  0001 C CNN
F 1 "GND" H 7255 5277 50  0000 C CNN
F 2 "" H 7250 5450 50  0001 C CNN
F 3 "" H 7250 5450 50  0001 C CNN
	1    7250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5350 6450 5350
Text Label 6450 5350 0    50   ~ 0
LED
Wire Wire Line
	7000 5350 7250 5350
Wire Wire Line
	7250 5350 7250 5450
$EndSCHEMATC
