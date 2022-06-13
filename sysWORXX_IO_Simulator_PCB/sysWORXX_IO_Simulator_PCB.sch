EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "sysWORXX IO Simulator"
Date "2022-05-29"
Rev "1.0"
Comp "Ronald Sieber"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push SW0
U 1 1 625B1E76
P 1500 5300
F 0 "SW0" V 1454 5448 50  0000 L CNN
F 1 "DI0" V 1545 5448 50  0000 L CNN
F 2 "APEM_Multimec_5E:Multimec_5E_TH9" H 1500 5500 50  0001 C CNN
F 3 "~" H 1500 5500 50  0001 C CNN
	1    1500 5300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 625B23EB
P 2000 5300
F 0 "SW1" V 1954 5448 50  0000 L CNN
F 1 "DI1" V 2045 5448 50  0000 L CNN
F 2 "APEM_Multimec_5E:Multimec_5E_TH9" H 2000 5500 50  0001 C CNN
F 3 "~" H 2000 5500 50  0001 C CNN
	1    2000 5300
	0    1    1    0   
$EndComp
$Comp
L Sensor_Proximity:CNY70 OPT2
U 1 1 625B4D26
P 10200 5100
F 0 "OPT2" H 10200 5417 50  0000 C CNN
F 1 "CNY70" H 10200 5326 50  0000 C CNN
F 2 "CNY70:CNY70_DIP" H 10200 4900 50  0001 C CNN
F 3 "" H 10200 5200 50  0001 C CNN
	1    10200 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D100
U 1 1 625B819E
P 5000 5350
F 0 "D100" V 5039 5428 50  0000 L CNN
F 1 "DO0" V 4948 5428 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" H 5000 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	0    1    -1   0   
$EndComp
Wire Wire Line
	3800 1200 3800 2000
$Comp
L Device:R R100
U 1 1 625C2E54
P 5000 4850
F 0 "R100" H 5070 4896 50  0000 L CNN
F 1 "2k4" H 5070 4805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4930 4850 50  0001 C CNN
F 3 "~" H 5000 4850 50  0001 C CNN
	1    5000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2150 1500 1850
Wire Wire Line
	3900 1200 3900 2150
$Comp
L Device:R R202
U 1 1 625D0F4E
P 9000 5600
F 0 "R202" H 9070 5646 50  0000 L CNN
F 1 "20k" H 9070 5555 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8930 5600 50  0001 C CNN
F 3 "~" H 9000 5600 50  0001 C CNN
	1    9000 5600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 625D03A8
P 2500 5300
F 0 "SW2" V 2454 5448 50  0000 L CNN
F 1 "DI2" V 2545 5448 50  0000 L CNN
F 2 "APEM_Multimec_5E:Multimec_5E_TH9" H 2500 5500 50  0001 C CNN
F 3 "~" H 2500 5500 50  0001 C CNN
	1    2500 5300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 625D03AE
P 3000 5300
F 0 "SW3" V 2954 5448 50  0000 L CNN
F 1 "DI3" V 3045 5448 50  0000 L CNN
F 2 "APEM_Multimec_5E:Multimec_5E_TH9" H 3000 5500 50  0001 C CNN
F 3 "~" H 3000 5500 50  0001 C CNN
	1    3000 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 5500 1500 5750
Wire Wire Line
	1500 5750 2000 5750
Wire Wire Line
	3000 5750 3000 5500
Wire Wire Line
	2500 5500 2500 5750
Connection ~ 2500 5750
Wire Wire Line
	2500 5750 3000 5750
Wire Wire Line
	2000 5500 2000 5750
Connection ~ 2000 5750
Wire Wire Line
	2000 5750 2500 5750
Wire Wire Line
	5000 5000 5000 5200
Wire Wire Line
	750  2150 750  6000
Wire Wire Line
	1500 5750 1000 5750
Connection ~ 1500 5750
Wire Wire Line
	1500 2150 750  2150
Connection ~ 1500 2150
$Comp
L Device:R R101
U 1 1 625E3A26
P 5500 4850
F 0 "R101" H 5570 4896 50  0000 L CNN
F 1 "2k4" H 5570 4805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5430 4850 50  0001 C CNN
F 3 "~" H 5500 4850 50  0001 C CNN
	1    5500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5000 5500 5200
$Comp
L Device:LED D102
U 1 1 625E65A0
P 6000 5350
F 0 "D102" V 6039 5428 50  0000 L CNN
F 1 "DO2" V 5948 5428 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" H 6000 5350 50  0001 C CNN
F 3 "~" H 6000 5350 50  0001 C CNN
	1    6000 5350
	0    1    -1   0   
$EndComp
Wire Wire Line
	6000 5000 6000 5200
$Comp
L Device:LED D103
U 1 1 625E77DC
P 6500 5350
F 0 "D103" V 6539 5428 50  0000 L CNN
F 1 "DO3" V 6448 5428 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" H 6500 5350 50  0001 C CNN
F 3 "~" H 6500 5350 50  0001 C CNN
	1    6500 5350
	0    1    -1   0   
$EndComp
$Comp
L Device:R R103
U 1 1 625E77E2
P 6500 4850
F 0 "R103" H 6570 4896 50  0000 L CNN
F 1 "4k7" H 6570 4805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6430 4850 50  0001 C CNN
F 3 "~" H 6500 4850 50  0001 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5000 6500 5200
Wire Wire Line
	5500 4700 5500 4050
Wire Wire Line
	6000 4700 6000 3950
Wire Wire Line
	6500 4700 6500 3850
$Comp
L Device:R R200
U 1 1 62601C9A
P 7500 4850
F 0 "R200" H 7570 4896 50  0000 L CNN
F 1 "1k" H 7570 4805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7430 4850 50  0001 C CNN
F 3 "~" H 7500 4850 50  0001 C CNN
	1    7500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5000 7500 5200
Wire Wire Line
	6500 5500 6500 6000
Wire Wire Line
	6500 6000 6000 6000
Wire Wire Line
	5000 5500 5000 6000
Wire Wire Line
	5500 5500 5500 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 6000 5000 6000
Wire Wire Line
	6000 5500 6000 6000
Connection ~ 6000 6000
Wire Wire Line
	6000 6000 5500 6000
$Comp
L Device:R R201
U 1 1 62609562
P 8250 4850
F 0 "R201" H 8320 4896 50  0000 L CNN
F 1 "1k" H 8320 4805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8180 4850 50  0001 C CNN
F 3 "~" H 8250 4850 50  0001 C CNN
	1    8250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5000 8250 5200
Wire Wire Line
	8250 2700 8250 4700
Wire Wire Line
	7500 4700 7500 2700
Connection ~ 7500 2700
Wire Wire Line
	7500 2700 8250 2700
$Comp
L Device:R_POT P0
U 1 1 6260F928
P 7500 5350
F 0 "P0" H 7430 5396 50  0000 R CNN
F 1 "22k" H 7430 5305 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA14v_Horizontal_Px15.0mm_Py10.0mm" H 7500 5350 50  0001 C CNN
F 3 "~" H 7500 5350 50  0001 C CNN
	1    7500 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT P1
U 1 1 62610E55
P 8250 5350
F 0 "P1" H 8180 5396 50  0000 R CNN
F 1 "22k" H 8180 5305 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA14v_Horizontal_Px15.0mm_Py10.0mm" H 8250 5350 50  0001 C CNN
F 3 "~" H 8250 5350 50  0001 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3750 7800 5350
Wire Wire Line
	7800 5350 7650 5350
Wire Wire Line
	8550 3650 8550 5350
Wire Wire Line
	8550 5350 8400 5350
Wire Wire Line
	8250 5500 8250 6000
Wire Wire Line
	8250 6000 7500 6000
Connection ~ 6500 6000
Wire Wire Line
	7500 5500 7500 6000
Connection ~ 7500 6000
Wire Wire Line
	7500 6000 6500 6000
Wire Wire Line
	9000 5750 9000 6000
Wire Wire Line
	9000 6000 8250 6000
Connection ~ 8250 6000
Connection ~ 8250 2700
Wire Wire Line
	9300 3550 9300 5350
Wire Wire Line
	9300 5350 9000 5350
Wire Wire Line
	9000 5350 9000 5450
$Comp
L Device:R R223
U 1 1 6262CE8F
P 9800 4700
F 0 "R223" H 9870 4746 50  0000 L CNN
F 1 "1k" H 9870 4655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9730 4700 50  0001 C CNN
F 3 "~" H 9800 4700 50  0001 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4850 9800 5000
Wire Wire Line
	9800 5000 9900 5000
Wire Wire Line
	9900 5200 9800 5200
Connection ~ 9000 6000
$Comp
L Device:R R203
U 1 1 6263E334
P 10600 5600
F 0 "R203" H 10670 5646 50  0000 L CNN
F 1 "47k" H 10670 5555 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10530 5600 50  0001 C CNN
F 3 "~" H 10600 5600 50  0001 C CNN
	1    10600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4550 9800 2700
Wire Wire Line
	9800 6000 9000 6000
Wire Wire Line
	9800 5200 9800 6000
Wire Wire Line
	10500 5200 10600 5200
Wire Wire Line
	10600 5200 10600 5350
Wire Wire Line
	10600 5750 10600 6000
Wire Wire Line
	10600 6000 9800 6000
Connection ~ 9800 6000
Wire Wire Line
	10600 5350 10900 5350
Wire Wire Line
	10900 5350 10900 3450
Wire Wire Line
	5300 3450 5300 1200
Connection ~ 10600 5350
Wire Wire Line
	10600 5350 10600 5450
Wire Wire Line
	9800 2700 10600 2700
Wire Wire Line
	10600 5000 10500 5000
Connection ~ 9800 2700
$Comp
L Device:LED D101
U 1 1 625E3A1C
P 5500 5350
F 0 "D101" V 5539 5428 50  0000 L CNN
F 1 "DO1" V 5448 5428 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" H 5500 5350 50  0001 C CNN
F 3 "~" H 5500 5350 50  0001 C CNN
	1    5500 5350
	0    1    -1   0   
$EndComp
$Comp
L Device:R R102
U 1 1 625E65A6
P 6000 4850
F 0 "R102" H 6070 4896 50  0000 L CNN
F 1 "2k4" H 6070 4805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5930 4850 50  0001 C CNN
F 3 "~" H 6000 4850 50  0001 C CNN
	1    6000 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder ENC1
U 1 1 625F2A12
P 4000 5300
F 0 "ENC1" V 4350 5200 50  0000 L CNN
F 1 "EC12E" V 4250 5300 50  0000 C CNN
F 2 "Alps_EC12E:RotaryEncoder_Alps_EC12E_Vertical_H20mm" H 3850 5460 50  0001 C CNN
F 3 "~" H 4000 5560 50  0001 C CNN
	1    4000 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4150 5000 4700
Wire Wire Line
	4500 1200 4500 4150
Wire Wire Line
	3000 5750 3500 5750
Connection ~ 3000 5750
Wire Wire Line
	750  6000 5000 6000
Connection ~ 5000 6000
Wire Notes Line
	6850 3150 6850 6300
Wire Notes Line
	6850 6300 1250 6300
Wire Notes Line
	1250 6300 1250 3150
Wire Notes Line
	1250 3150 6850 3150
Wire Notes Line
	7200 3150 7200 6300
Wire Notes Line
	11050 6300 11050 3150
Wire Notes Line
	11050 6300 7200 6300
Wire Notes Line
	11050 3150 7200 3150
Text Notes 7250 3100 0    50   ~ 0
Analog Part / 12V
Text Notes 1300 3100 0    50   ~ 0
Digital Part / 24V
Wire Wire Line
	1200 2700 1000 2700
Connection ~ 1000 2700
Wire Wire Line
	1000 2700 1000 5750
Wire Wire Line
	1500 2400 1500 2150
Wire Wire Line
	1800 2700 7500 2700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6268487F
P 1500 1850
F 0 "#FLG0101" H 1500 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 2023 50  0000 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Text Notes 1550 1800 0    50   ~ 0
GND
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 62685E1D
P 1000 1850
F 0 "#FLG0102" H 1000 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 2023 50  0000 C CNN
F 2 "" H 1000 1850 50  0001 C CNN
F 3 "~" H 1000 1850 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
Text Notes 1050 1800 0    50   ~ 0
+24V
$Comp
L Device:R R213
U 1 1 6268A0A7
P 10600 4700
F 0 "R213" H 10670 4746 50  0000 L CNN
F 1 "470R" H 10670 4655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10530 4700 50  0001 C CNN
F 3 "~" H 10600 4700 50  0001 C CNN
	1    10600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 4850 10600 5000
Wire Wire Line
	10600 2700 10600 4550
$Comp
L L78L12:L78L12 VR1
U 1 1 62649BEF
P 1500 2650
F 0 "VR1" H 1650 2450 50  0000 C CNN
F 1 "L78L12" H 1500 2850 50  0000 C CNN
F 2 "L78L12:TO92" H 1600 2400 50  0001 L BNN
F 3 "" H 1500 2650 50  0001 L BNN
	1    1500 2650
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 6264E41A
P 4200 1000
F 0 "J1" V 4400 1000 50  0000 R CNN
F 1 "Conn_01x08" V 4300 1200 50  0000 R CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-8pol" H 4200 1000 50  0001 C CNN
F 3 "~" H 4200 1000 50  0001 C CNN
	1    4200 1000
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 62651A72
P 5000 1000
F 0 "J2" V 5200 1000 50  0000 R CNN
F 1 "Conn_01x08" V 5100 1200 50  0000 R CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-8pol" H 5000 1000 50  0001 C CNN
F 3 "~" H 5000 1000 50  0001 C CNN
	1    5000 1000
	0    1    -1   0   
$EndComp
Wire Wire Line
	8250 2700 9000 2700
$Comp
L Device:R R212
U 1 1 6271BA39
P 9000 4700
F 0 "R212" H 9070 4746 50  0000 L CNN
F 1 "470R" H 9070 4655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8930 4700 50  0001 C CNN
F 3 "~" H 9000 4700 50  0001 C CNN
	1    9000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4550 9000 2700
Connection ~ 9000 2700
Wire Wire Line
	9000 2700 9800 2700
Wire Wire Line
	4000 5000 4000 4850
Wire Wire Line
	4000 4850 3500 4850
Wire Wire Line
	3500 5750 3500 4850
Wire Wire Line
	4000 3650 4000 1200
Wire Wire Line
	4100 3750 4100 1200
Wire Wire Line
	4200 3850 4200 1200
Wire Wire Line
	4300 3950 4300 1200
Wire Wire Line
	4400 4050 4400 1200
Wire Wire Line
	4100 4150 4100 5000
Wire Wire Line
	3900 4050 3900 5000
Wire Wire Line
	3000 5100 3000 3950
Wire Wire Line
	2500 5100 2500 3850
Wire Wire Line
	2000 5100 2000 3750
Wire Wire Line
	1500 5100 1500 3650
Wire Wire Line
	4600 4150 5000 4150
Wire Wire Line
	4700 4050 5500 4050
Wire Wire Line
	4800 3950 6000 3950
Wire Wire Line
	4900 3850 6500 3850
Wire Wire Line
	5000 3750 7800 3750
Wire Wire Line
	5100 3650 8550 3650
Wire Wire Line
	5200 3550 9300 3550
Wire Wire Line
	5300 3450 10900 3450
Wire Wire Line
	5200 1200 5200 3550
Wire Wire Line
	5100 1200 5100 3650
Wire Wire Line
	5000 1200 5000 3750
Wire Wire Line
	4900 1200 4900 3850
Wire Wire Line
	4800 1200 4800 3950
Wire Wire Line
	4700 1200 4700 4050
Wire Wire Line
	4600 1200 4600 4150
Wire Wire Line
	4100 4150 4500 4150
Wire Wire Line
	3900 4050 4400 4050
Wire Wire Line
	3000 3950 4300 3950
Wire Wire Line
	2500 3850 4200 3850
Wire Wire Line
	2000 3750 4100 3750
Wire Wire Line
	1500 3650 4000 3650
Wire Wire Line
	1500 2150 3900 2150
Wire Wire Line
	1000 1850 1000 2000
Wire Wire Line
	3800 2000 1000 2000
Connection ~ 1000 2000
Wire Wire Line
	1000 2000 1000 2700
Text Notes 8500 2650 0    50   ~ 0
+12V
Text Notes 5100 5550 0    50   ~ 0
red
Text Notes 5600 5550 0    50   ~ 0
green
Text Notes 6100 5550 0    50   ~ 0
yellow
Text Notes 6600 5550 0    50   ~ 0
blue
$Comp
L Device:R_PHOTO OPT1
U 1 1 6293EF99
P 9000 5100
F 0 "OPT1" H 9050 5050 50  0000 L CNN
F 1 "PDV-P8104" H 9050 5150 50  0000 L CNN
F 2 "BPW34_PDV-P8104_CombiShape:BPW34_PDV-P8104_CombiShape" V 9050 4850 50  0001 L CNN
F 3 "~" H 9000 5050 50  0001 C CNN
	1    9000 5100
	1    0    0    1   
$EndComp
Connection ~ 9000 5350
Wire Wire Line
	9000 5250 9000 5350
Wire Wire Line
	9000 4850 9000 4950
$EndSCHEMATC
