EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 8500 11000 portrait
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED D1
U 1 1 6037CCAA
P 4350 3050
F 0 "D1" H 4343 2795 50  0000 C CNN
F 1 "LED" H 4343 2886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4350 3050 50  0001 C CNN
F 3 "~" H 4350 3050 50  0001 C CNN
	1    4350 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 60382D0C
P 4800 2850
F 0 "D6" H 4793 2595 50  0000 C CNN
F 1 "LED" H 4793 2686 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4800 2850 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
	1    4800 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D11
U 1 1 60383EBB
P 5250 2650
F 0 "D11" H 5243 2395 50  0000 C CNN
F 1 "LED" H 5243 2486 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5250 2650 50  0001 C CNN
F 3 "~" H 5250 2650 50  0001 C CNN
	1    5250 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 603AA9F8
P 3850 3050
F 0 "R1" V 3643 3050 50  0000 C CNN
F 1 "220" V 3734 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3780 3050 50  0001 C CNN
F 3 "~" H 3850 3050 50  0001 C CNN
	1    3850 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 3050 4100 3050
Wire Wire Line
	4650 2850 4100 2850
Wire Wire Line
	4100 2850 4100 3050
Connection ~ 4100 3050
Wire Wire Line
	4100 3050 4200 3050
Connection ~ 4100 2850
$Comp
L Switch:SW_Push SW2
U 1 1 603F74B1
P 2000 5650
F 0 "SW2" H 2000 5935 50  0000 C CNN
F 1 "SW_Push" H 2000 5844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 2000 5850 50  0001 C CNN
F 3 "~" H 2000 5850 50  0001 C CNN
	1    2000 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 603F8A70
P 1800 5650
F 0 "#PWR03" H 1800 5400 50  0001 C CNN
F 1 "GND" H 1805 5477 50  0000 C CNN
F 2 "" H 1800 5650 50  0001 C CNN
F 3 "" H 1800 5650 50  0001 C CNN
	1    1800 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 603FC464
P 1600 5100
F 0 "#PWR02" H 1600 4850 50  0001 C CNN
F 1 "GND" H 1605 4927 50  0000 C CNN
F 2 "" H 1600 5100 50  0001 C CNN
F 3 "" H 1600 5100 50  0001 C CNN
	1    1600 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D16
U 1 1 6040142F
P 5700 2450
F 0 "D16" H 5693 2195 50  0000 C CNN
F 1 "LED" H 5693 2286 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5700 2450 50  0001 C CNN
F 3 "~" H 5700 2450 50  0001 C CNN
	1    5700 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D21
U 1 1 60401AE8
P 6150 2250
F 0 "D21" H 6143 1995 50  0000 C CNN
F 1 "LED" H 6143 2086 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 6150 2250 50  0001 C CNN
F 3 "~" H 6150 2250 50  0001 C CNN
	1    6150 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2850
Wire Wire Line
	5550 2450 4100 2450
Wire Wire Line
	4100 2450 4100 2650
Connection ~ 4100 2650
Wire Wire Line
	6000 2250 4100 2250
Wire Wire Line
	4100 2250 4100 2450
Connection ~ 4100 2450
$Comp
L Device:LED D2
U 1 1 6040CAF1
P 4350 4200
F 0 "D2" H 4343 3945 50  0000 C CNN
F 1 "LED" H 4343 4036 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4350 4200 50  0001 C CNN
F 3 "~" H 4350 4200 50  0001 C CNN
	1    4350 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 6040CAF7
P 4800 4000
F 0 "D7" H 4793 3745 50  0000 C CNN
F 1 "LED" H 4793 3836 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4800 4000 50  0001 C CNN
F 3 "~" H 4800 4000 50  0001 C CNN
	1    4800 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D12
U 1 1 6040CAFD
P 5250 3800
F 0 "D12" H 5243 3545 50  0000 C CNN
F 1 "LED" H 5243 3636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5250 3800 50  0001 C CNN
F 3 "~" H 5250 3800 50  0001 C CNN
	1    5250 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 6040CB03
P 3850 4200
F 0 "R2" V 3643 4200 50  0000 C CNN
F 1 "220" V 3734 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3780 4200 50  0001 C CNN
F 3 "~" H 3850 4200 50  0001 C CNN
	1    3850 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4200 4100 4200
Wire Wire Line
	4650 4000 4100 4000
Wire Wire Line
	4100 4000 4100 4200
Connection ~ 4100 4200
Wire Wire Line
	4100 4200 4200 4200
Connection ~ 4100 4000
$Comp
L Device:LED D17
U 1 1 6040CB11
P 5700 3600
F 0 "D17" H 5693 3345 50  0000 C CNN
F 1 "LED" H 5693 3436 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5700 3600 50  0001 C CNN
F 3 "~" H 5700 3600 50  0001 C CNN
	1    5700 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D22
U 1 1 6040CB17
P 6150 3400
F 0 "D22" H 6143 3145 50  0000 C CNN
F 1 "LED" H 6143 3236 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 6150 3400 50  0001 C CNN
F 3 "~" H 6150 3400 50  0001 C CNN
	1    6150 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3800 4100 3800
Wire Wire Line
	4100 3800 4100 4000
Wire Wire Line
	5550 3600 4100 3600
Wire Wire Line
	4100 3600 4100 3800
Connection ~ 4100 3800
Wire Wire Line
	6000 3400 4100 3400
Wire Wire Line
	4100 3400 4100 3600
Connection ~ 4100 3600
$Comp
L Device:LED D3
U 1 1 6040E89E
P 4350 5400
F 0 "D3" H 4343 5145 50  0000 C CNN
F 1 "LED" H 4343 5236 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4350 5400 50  0001 C CNN
F 3 "~" H 4350 5400 50  0001 C CNN
	1    4350 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 6040E8A4
P 4800 5200
F 0 "D8" H 4793 4945 50  0000 C CNN
F 1 "LED" H 4793 5036 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4800 5200 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D13
U 1 1 6040E8AA
P 5250 5000
F 0 "D13" H 5243 4745 50  0000 C CNN
F 1 "LED" H 5243 4836 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5250 5000 50  0001 C CNN
F 3 "~" H 5250 5000 50  0001 C CNN
	1    5250 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 6040E8B0
P 3850 5400
F 0 "R3" V 3643 5400 50  0000 C CNN
F 1 "220" V 3734 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3780 5400 50  0001 C CNN
F 3 "~" H 3850 5400 50  0001 C CNN
	1    3850 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 5400 4100 5400
Wire Wire Line
	4650 5200 4100 5200
Wire Wire Line
	4100 5200 4100 5400
Connection ~ 4100 5400
Wire Wire Line
	4100 5400 4200 5400
Connection ~ 4100 5200
$Comp
L Device:LED D18
U 1 1 6040E8BE
P 5700 4800
F 0 "D18" H 5693 4545 50  0000 C CNN
F 1 "LED" H 5693 4636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5700 4800 50  0001 C CNN
F 3 "~" H 5700 4800 50  0001 C CNN
	1    5700 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D23
U 1 1 6040E8C4
P 6150 4600
F 0 "D23" H 6143 4345 50  0000 C CNN
F 1 "LED" H 6143 4436 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 6150 4600 50  0001 C CNN
F 3 "~" H 6150 4600 50  0001 C CNN
	1    6150 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 5000 4100 5000
Wire Wire Line
	4100 5000 4100 5200
Wire Wire Line
	5550 4800 4100 4800
Wire Wire Line
	4100 4800 4100 5000
Connection ~ 4100 5000
Wire Wire Line
	6000 4600 4100 4600
Wire Wire Line
	4100 4600 4100 4800
Connection ~ 4100 4800
$Comp
L Device:LED D4
U 1 1 60411901
P 4350 6550
F 0 "D4" H 4343 6295 50  0000 C CNN
F 1 "LED" H 4343 6386 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4350 6550 50  0001 C CNN
F 3 "~" H 4350 6550 50  0001 C CNN
	1    4350 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 60411907
P 4800 6350
F 0 "D9" H 4793 6095 50  0000 C CNN
F 1 "LED" H 4793 6186 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4800 6350 50  0001 C CNN
F 3 "~" H 4800 6350 50  0001 C CNN
	1    4800 6350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D14
U 1 1 6041190D
P 5250 6150
F 0 "D14" H 5243 5895 50  0000 C CNN
F 1 "LED" H 5243 5986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5250 6150 50  0001 C CNN
F 3 "~" H 5250 6150 50  0001 C CNN
	1    5250 6150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 60411913
P 3850 6550
F 0 "R4" V 3643 6550 50  0000 C CNN
F 1 "220" V 3734 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3780 6550 50  0001 C CNN
F 3 "~" H 3850 6550 50  0001 C CNN
	1    3850 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 6550 4100 6550
Wire Wire Line
	4650 6350 4100 6350
Wire Wire Line
	4100 6350 4100 6550
Connection ~ 4100 6550
Wire Wire Line
	4100 6550 4200 6550
Connection ~ 4100 6350
$Comp
L Device:LED D19
U 1 1 60411921
P 5700 5950
F 0 "D19" H 5693 5695 50  0000 C CNN
F 1 "LED" H 5693 5786 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5700 5950 50  0001 C CNN
F 3 "~" H 5700 5950 50  0001 C CNN
	1    5700 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D24
U 1 1 60411927
P 6150 5750
F 0 "D24" H 6143 5495 50  0000 C CNN
F 1 "LED" H 6143 5586 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 6150 5750 50  0001 C CNN
F 3 "~" H 6150 5750 50  0001 C CNN
	1    6150 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 6150 4100 6150
Wire Wire Line
	4100 6150 4100 6350
Wire Wire Line
	5550 5950 4100 5950
Wire Wire Line
	4100 5950 4100 6150
Connection ~ 4100 6150
Wire Wire Line
	6000 5750 4100 5750
Wire Wire Line
	4100 5750 4100 5950
Connection ~ 4100 5950
$Comp
L Device:LED D5
U 1 1 604149AE
P 4350 7750
F 0 "D5" H 4343 7495 50  0000 C CNN
F 1 "LED" H 4343 7586 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4350 7750 50  0001 C CNN
F 3 "~" H 4350 7750 50  0001 C CNN
	1    4350 7750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D10
U 1 1 604149B4
P 4800 7550
F 0 "D10" H 4793 7295 50  0000 C CNN
F 1 "LED" H 4793 7386 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4800 7550 50  0001 C CNN
F 3 "~" H 4800 7550 50  0001 C CNN
	1    4800 7550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D15
U 1 1 604149BA
P 5250 7350
F 0 "D15" H 5243 7095 50  0000 C CNN
F 1 "LED" H 5243 7186 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5250 7350 50  0001 C CNN
F 3 "~" H 5250 7350 50  0001 C CNN
	1    5250 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 604149C0
P 3850 7750
F 0 "R5" V 3643 7750 50  0000 C CNN
F 1 "220" V 3734 7750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3780 7750 50  0001 C CNN
F 3 "~" H 3850 7750 50  0001 C CNN
	1    3850 7750
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 7750 4100 7750
Wire Wire Line
	4650 7550 4100 7550
Wire Wire Line
	4100 7550 4100 7750
Connection ~ 4100 7750
Wire Wire Line
	4100 7750 4200 7750
Connection ~ 4100 7550
$Comp
L Device:LED D20
U 1 1 604149CE
P 5700 7150
F 0 "D20" H 5693 6895 50  0000 C CNN
F 1 "LED" H 5693 6986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5700 7150 50  0001 C CNN
F 3 "~" H 5700 7150 50  0001 C CNN
	1    5700 7150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D25
U 1 1 604149D4
P 6150 6950
F 0 "D25" H 6143 6695 50  0000 C CNN
F 1 "LED" H 6143 6786 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 6150 6950 50  0001 C CNN
F 3 "~" H 6150 6950 50  0001 C CNN
	1    6150 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 7350 4100 7350
Wire Wire Line
	4100 7350 4100 7550
Wire Wire Line
	5550 7150 4100 7150
Wire Wire Line
	4100 7150 4100 7350
Connection ~ 4100 7350
Wire Wire Line
	6000 6950 4100 6950
Wire Wire Line
	4100 6950 4100 7150
Connection ~ 4100 7150
Wire Wire Line
	3400 3050 3700 3050
Wire Wire Line
	2900 4000 2900 6800
Wire Wire Line
	3100 7750 3700 7750
Text Label 2300 3600 0    50   ~ 0
row0
Text Label 2300 3700 0    50   ~ 0
row1
Text Label 2300 3800 0    50   ~ 0
row2
Text Label 2300 4500 0    50   ~ 0
row3
Text Label 2300 4600 0    50   ~ 0
row4
Wire Wire Line
	6550 3050 6550 4200
Wire Wire Line
	6550 8000 3000 8000
Wire Wire Line
	4500 3050 6550 3050
Wire Wire Line
	6750 8150 2900 8150
Wire Wire Line
	4950 2850 6750 2850
Wire Wire Line
	5400 2650 6950 2650
Wire Wire Line
	6950 2650 6950 3800
Wire Wire Line
	6950 8350 2800 8350
Wire Wire Line
	5850 2450 7150 2450
Wire Wire Line
	7150 2450 7150 3600
Wire Wire Line
	7150 8500 2700 8500
Wire Wire Line
	6300 2250 7350 2250
Wire Wire Line
	7350 2250 7350 3400
Wire Wire Line
	7350 8650 2600 8650
Text Label 2300 4300 0    50   ~ 0
col4
Text Label 2300 4200 0    50   ~ 0
col3
Text Label 2300 4100 0    50   ~ 0
col2
Text Label 2300 4000 0    50   ~ 0
col1
Text Label 2300 3900 0    50   ~ 0
col0
Wire Wire Line
	6300 3400 7350 3400
Connection ~ 7350 3400
Wire Wire Line
	7350 3400 7350 4600
Wire Wire Line
	6300 4600 7350 4600
Connection ~ 7350 4600
Wire Wire Line
	7350 4600 7350 5750
Wire Wire Line
	6300 5750 7350 5750
Connection ~ 7350 5750
Wire Wire Line
	7350 5750 7350 6950
Wire Wire Line
	6300 6950 7350 6950
Connection ~ 7350 6950
Wire Wire Line
	7350 6950 7350 8650
Wire Wire Line
	5850 3600 7150 3600
Connection ~ 7150 3600
Wire Wire Line
	7150 3600 7150 4800
Wire Wire Line
	5850 4800 7150 4800
Connection ~ 7150 4800
Wire Wire Line
	7150 4800 7150 5950
Wire Wire Line
	5850 5950 7150 5950
Connection ~ 7150 5950
Wire Wire Line
	5850 7150 7150 7150
Wire Wire Line
	7150 5950 7150 7150
Connection ~ 7150 7150
Wire Wire Line
	7150 7150 7150 8500
Wire Wire Line
	5400 3800 6950 3800
Connection ~ 6950 3800
Wire Wire Line
	5400 5000 6950 5000
Wire Wire Line
	6950 3800 6950 5000
Connection ~ 6950 5000
Wire Wire Line
	6950 5000 6950 6150
Wire Wire Line
	5400 6150 6950 6150
Connection ~ 6950 6150
Wire Wire Line
	6950 6150 6950 7350
Wire Wire Line
	5400 7350 6950 7350
Connection ~ 6950 7350
Wire Wire Line
	6950 7350 6950 8350
Wire Wire Line
	4950 4000 6750 4000
Wire Wire Line
	6750 2850 6750 4000
Connection ~ 6750 4000
Wire Wire Line
	6750 4000 6750 5200
Wire Wire Line
	4950 5200 6750 5200
Connection ~ 6750 5200
Wire Wire Line
	6750 5200 6750 6350
Wire Wire Line
	4950 6350 6750 6350
Connection ~ 6750 6350
Wire Wire Line
	6750 6350 6750 7550
Wire Wire Line
	4950 7550 6750 7550
Connection ~ 6750 7550
Wire Wire Line
	6750 7550 6750 8150
Wire Wire Line
	4500 7750 6550 7750
Connection ~ 6550 7750
Wire Wire Line
	6550 7750 6550 8000
Wire Wire Line
	4500 6550 6550 6550
Connection ~ 6550 6550
Wire Wire Line
	6550 6550 6550 7750
Wire Wire Line
	4500 5400 6550 5400
Connection ~ 6550 5400
Wire Wire Line
	6550 5400 6550 6550
Wire Wire Line
	4500 4200 6550 4200
Connection ~ 6550 4200
Wire Wire Line
	6550 4200 6550 5400
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 604CDC9D
P 1900 6800
F 0 "J1" H 1571 6896 50  0000 R CNN
F 1 "AVR-ISP-6" H 1571 6805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 1650 6850 50  0001 C CNN
F 3 " ~" H 625 6250 50  0001 C CNN
	1    1900 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 604D06F3
P 1800 7200
F 0 "#PWR05" H 1800 6950 50  0001 C CNN
F 1 "GND" H 1805 7027 50  0000 C CNN
F 2 "" H 1800 7200 50  0001 C CNN
F 3 "" H 1800 7200 50  0001 C CNN
	1    1800 7200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 604D0E8D
P 1800 6300
F 0 "#PWR04" H 1800 6150 50  0001 C CNN
F 1 "VCC" H 1815 6473 50  0000 C CNN
F 2 "" H 1800 6300 50  0001 C CNN
F 3 "" H 1800 6300 50  0001 C CNN
	1    1800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5650 2200 5650
Text Label 2250 5650 0    50   ~ 0
sw
Text Label 2350 6900 0    50   ~ 0
rst
Wire Wire Line
	2300 6600 2800 6600
Wire Wire Line
	2800 6600 2800 4100
Wire Wire Line
	2300 6700 2700 6700
Wire Wire Line
	2700 6700 2700 4200
Wire Wire Line
	2300 6800 2900 6800
$Comp
L MCU_Microchip_ATtiny:ATtiny84A-PU U1
U 1 1 6037B303
P 1600 4200
F 0 "U1" H 1071 4246 50  0000 R CNN
F 1 "ATtiny84A-PU" H 1071 4155 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1600 4200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3600 3400 3600
Wire Wire Line
	2200 3700 3400 3700
Wire Wire Line
	2200 3800 3300 3800
Wire Wire Line
	2200 3900 3000 3900
Wire Wire Line
	2200 4000 2900 4000
Wire Wire Line
	2200 4100 2800 4100
Wire Wire Line
	2200 4200 2700 4200
Wire Wire Line
	2400 4700 2200 4700
Wire Wire Line
	2400 4700 2400 5650
Wire Wire Line
	2200 4800 2500 4800
Wire Wire Line
	2500 4800 2500 6900
Wire Wire Line
	2300 6900 2500 6900
$Comp
L Device:C C1
U 1 1 605A20EE
P 1450 3100
F 0 "C1" V 1198 3100 50  0000 C CNN
F 1 ".1uF" V 1289 3100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1488 2950 50  0001 C CNN
F 3 "~" H 1450 3100 50  0001 C CNN
	1    1450 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 605A2F58
P 1300 3100
F 0 "#PWR01" H 1300 2850 50  0001 C CNN
F 1 "GND" H 1305 2927 50  0000 C CNN
F 2 "" H 1300 3100 50  0001 C CNN
F 3 "" H 1300 3100 50  0001 C CNN
	1    1300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3300 1600 3100
$Comp
L Device:Battery BT1
U 1 1 605B260F
P 2300 3000
F 0 "BT1" V 2545 3000 50  0000 C CNN
F 1 "Battery" V 2454 3000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 2300 3060 50  0001 C CNN
F 3 "~" V 2300 3060 50  0001 C CNN
	1    2300 3000
	0    -1   -1   0   
$EndComp
Connection ~ 1600 3100
$Comp
L power:GND #PWR06
U 1 1 605B44DE
P 2500 3000
F 0 "#PWR06" H 2500 2750 50  0001 C CNN
F 1 "GND" H 2505 2827 50  0000 C CNN
F 2 "" H 2500 3000 50  0001 C CNN
F 3 "" H 2500 3000 50  0001 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3100 1600 3100
Wire Wire Line
	2100 3000 2050 3000
NoConn ~ 1650 2900
$Comp
L Switch:SW_SPDT SW1
U 1 1 605FF4DB
P 1850 3000
F 0 "SW1" H 1850 2675 50  0000 C CNN
F 1 "SW_SPDT" H 1850 2766 50  0000 C CNN
F 2 "digikey:Switch_Slide_11.6x4mm_EG1218" H 1850 3000 50  0001 C CNN
F 3 "~" H 1850 3000 50  0001 C CNN
	1    1850 3000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 60624BD2
P 1600 3100
F 0 "#PWR0101" H 1600 2950 50  0001 C CNN
F 1 "VCC" H 1615 3273 50  0000 C CNN
F 2 "" H 1600 3100 50  0001 C CNN
F 3 "" H 1600 3100 50  0001 C CNN
	1    1600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 8650 2600 4300
Wire Wire Line
	2200 4300 2600 4300
Wire Wire Line
	2700 8500 2700 6700
Connection ~ 2700 6700
Wire Wire Line
	2800 8350 2800 6600
Connection ~ 2800 6600
Wire Wire Line
	2900 8150 2900 6800
Connection ~ 2900 6800
Wire Wire Line
	3000 3900 3000 8000
Wire Wire Line
	3400 3050 3400 3600
Wire Wire Line
	3400 3700 3400 4200
Wire Wire Line
	3400 4200 3700 4200
Wire Wire Line
	3300 3800 3300 5400
Wire Wire Line
	3300 5400 3700 5400
Wire Wire Line
	3200 4500 3200 6550
Wire Wire Line
	3200 6550 3700 6550
Wire Wire Line
	2200 4500 3200 4500
Wire Wire Line
	3100 4600 3100 7750
Wire Wire Line
	2200 4600 3100 4600
$EndSCHEMATC
