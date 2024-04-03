;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _table
	.globl _main
	.globl _delayms
	.globl _delay
	.globl _timer1
	.globl _timer0
	.globl _show_dig
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _key_enable
	.globl _power
	.globl _dig3
	.globl _dig2
	.globl _dig1
	.globl _count_prg
	.globl _PWM
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$PWM$0_0$0==.
_PWM::
	.ds 2
G$count_prg$0_0$0==.
_count_prg::
	.ds 1
G$dig1$0_0$0==.
_dig1::
	.ds 1
G$dig2$0_0$0==.
_dig2::
	.ds 1
G$dig3$0_0$0==.
_dig3::
	.ds 1
G$power$0_0$0==.
_power::
	.ds 1
G$key_enable$0_0$0==.
_key_enable::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0
	.ds	5
	reti
	.ds	7
	ljmp	_timer1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$main.c$15$1_0$17 ==.
;	main.c:15: unsigned int PWM = 0xfe;
	mov	_PWM,#0xfe
	mov	(_PWM + 1),#0x00
	C$main.c$16$1_0$17 ==.
;	main.c:16: unsigned char count_prg = 0;
	mov	_count_prg,#0x00
	C$main.c$17$1_0$17 ==.
;	main.c:17: unsigned char dig1 =0;
	mov	_dig1,#0x00
	C$main.c$18$1_0$17 ==.
;	main.c:18: unsigned char dig2 =0;
	mov	_dig2,#0x00
	C$main.c$19$1_0$17 ==.
;	main.c:19: unsigned char dig3 =0;
	mov	_dig3,#0x00
	C$main.c$20$1_0$17 ==.
;	main.c:20: unsigned char power =0;
	mov	_power,#0x00
	C$main.c$21$1_0$17 ==.
;	main.c:21: unsigned char key_enable =0;
	mov	_key_enable,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'show_dig'
;------------------------------------------------------------
	G$show_dig$0$0 ==.
	C$main.c$25$0_0$2 ==.
;	main.c:25: void show_dig(void)
;	-----------------------------------------
;	 function show_dig
;	-----------------------------------------
_show_dig:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$28$1_0$2 ==.
;	main.c:28: count_prg++;
	inc	_count_prg
	C$main.c$32$1_0$2 ==.
;	main.c:32: if (count_prg > 2) count_prg = 0;
	mov	a,_count_prg
	add	a,#0xff - 0x02
	jnc	00102$
	mov	_count_prg,#0x00
00102$:
	C$main.c$34$1_0$2 ==.
;	main.c:34: if (count_prg==2 && power>99)
	mov	a,#0x02
	cjne	a,_count_prg,00104$
	mov	a,_power
	add	a,#0xff - 0x63
	jnc	00104$
	C$main.c$37$2_0$3 ==.
;	main.c:37: OUT_SEG =0;
	mov	_P1,#0x00
	C$main.c$38$2_0$3 ==.
;	main.c:38: KATOD1 = 0;
;	assignBit
	clr	_P3_3
	C$main.c$39$2_0$3 ==.
;	main.c:39: KATOD2 = 1;
;	assignBit
	setb	_P3_4
	C$main.c$40$2_0$3 ==.
;	main.c:40: KATOD3 = 1;
;	assignBit
	setb	_P3_5
	C$main.c$41$2_0$3 ==.
;	main.c:41: OUT_SEG = table[dig1];
	mov	a,_dig1
	mov	dptr,#_table
	movc	a,@a+dptr
	mov	_P1,a
00104$:
	C$main.c$44$1_0$2 ==.
;	main.c:44: if (count_prg==1 && power>9 )
	mov	a,#0x01
	cjne	a,_count_prg,00107$
	mov	a,_power
	add	a,#0xff - 0x09
	jnc	00107$
	C$main.c$46$2_0$4 ==.
;	main.c:46: OUT_SEG =0;
	mov	_P1,#0x00
	C$main.c$47$2_0$4 ==.
;	main.c:47: KATOD1 = 1;
;	assignBit
	setb	_P3_3
	C$main.c$48$2_0$4 ==.
;	main.c:48: KATOD2 = 0;
;	assignBit
	clr	_P3_4
	C$main.c$49$2_0$4 ==.
;	main.c:49: KATOD3 = 1;
;	assignBit
	setb	_P3_5
	C$main.c$50$2_0$4 ==.
;	main.c:50: OUT_SEG = table[dig2];
	mov	a,_dig2
	mov	dptr,#_table
	movc	a,@a+dptr
	mov	_P1,a
00107$:
	C$main.c$53$1_0$2 ==.
;	main.c:53: if (count_prg==0 )
	mov	a,_count_prg
	C$main.c$55$2_0$5 ==.
;	main.c:55: OUT_SEG =0;
	jnz	00111$
	mov	_P1,a
	C$main.c$56$2_0$5 ==.
;	main.c:56: KATOD1 = 1;
;	assignBit
	setb	_P3_3
	C$main.c$57$2_0$5 ==.
;	main.c:57: KATOD2 = 1;
;	assignBit
	setb	_P3_4
	C$main.c$58$2_0$5 ==.
;	main.c:58: KATOD3 = 0;
;	assignBit
	clr	_P3_5
	C$main.c$59$2_0$5 ==.
;	main.c:59: OUT_SEG = table[dig3];
	mov	a,_dig3
	mov	dptr,#_table
	movc	a,@a+dptr
	mov	_P1,a
00111$:
	C$main.c$63$1_0$2 ==.
;	main.c:63: }
	C$main.c$63$1_0$2 ==.
	XG$show_dig$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
	G$timer0$0$0 ==.
	C$main.c$65$1_0$7 ==.
;	main.c:65: void timer0(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	C$main.c$67$1_0$7 ==.
;	main.c:67: TR1 = 0;
;	assignBit
	clr	_TR1
	C$main.c$68$1_0$7 ==.
;	main.c:68: TH0 = 0xfe;
	mov	_TH0,#0xfe
	C$main.c$69$1_0$7 ==.
;	main.c:69: TL0 = 0xff;
	mov	_TL0,#0xff
	C$main.c$70$1_0$7 ==.
;	main.c:70: TH1= PWM;
	mov	_TH1,_PWM
	C$main.c$71$1_0$7 ==.
;	main.c:71: TR1 = 1;
;	assignBit
	setb	_TR1
	C$main.c$72$1_0$7 ==.
;	main.c:72: PWM_OUT = 1;
;	assignBit
	setb	_P3_7
	C$main.c$73$1_0$7 ==.
;	main.c:73: }
	C$main.c$73$1_0$7 ==.
	XG$timer0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1'
;------------------------------------------------------------
	G$timer1$0$0 ==.
	C$main.c$75$1_0$9 ==.
;	main.c:75: void timer1(void) __interrupt(3)
;	-----------------------------------------
;	 function timer1
;	-----------------------------------------
_timer1:
	C$main.c$77$1_0$9 ==.
;	main.c:77: TR1 = 0;
;	assignBit
	clr	_TR1
	C$main.c$78$1_0$9 ==.
;	main.c:78: PWM_OUT = 0;
;	assignBit
	clr	_P3_7
	C$main.c$80$1_0$9 ==.
;	main.c:80: }
	C$main.c$80$1_0$9 ==.
	XG$timer1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$main.c$82$1_0$11 ==.
;	main.c:82: void delay(unsigned char t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
	C$main.c$84$1_0$11 ==.
;	main.c:84: while (t--);
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
	C$main.c$85$1_0$11 ==.
;	main.c:85: }
	C$main.c$85$1_0$11 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayms'
;------------------------------------------------------------
;ms                        Allocated to registers 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$delayms$0$0 ==.
	C$main.c$87$1_0$13 ==.
;	main.c:87: void delayms(unsigned char ms)
;	-----------------------------------------
;	 function delayms
;	-----------------------------------------
_delayms:
	mov	r7,dpl
	C$main.c$91$1_0$13 ==.
;	main.c:91: while (ms--) {
00102$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00108$
	C$main.c$92$1_0$13 ==.
;	main.c:92: for (i = 0; i < 120; i++);
	mov	r6,#0x78
00107$:
	djnz	r6,00107$
	sjmp	00102$
00108$:
	C$main.c$94$1_0$13 ==.
;	main.c:94: }
	C$main.c$94$1_0$13 ==.
	XG$delayms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$98$1_0$17 ==.
;	main.c:98: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$102$1_0$17 ==.
;	main.c:102: PWM_OUT = 0;
;	assignBit
	clr	_P3_7
	C$main.c$103$1_0$17 ==.
;	main.c:103: TMOD = 0x21;
	mov	_TMOD,#0x21
	C$main.c$104$1_0$17 ==.
;	main.c:104: TH0 = 0xfe;
	mov	_TH0,#0xfe
	C$main.c$105$1_0$17 ==.
;	main.c:105: TL0 = 0x00;
	mov	_TL0,#0x00
	C$main.c$106$1_0$17 ==.
;	main.c:106: TH1 = 0xfe;
	mov	_TH1,#0xfe
	C$main.c$107$1_0$17 ==.
;	main.c:107: TL1 = 0x01;
	mov	_TL1,#0x01
	C$main.c$109$1_0$17 ==.
;	main.c:109: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$110$1_0$17 ==.
;	main.c:110: ET0 = 1;
;	assignBit
	setb	_ET0
	C$main.c$111$1_0$17 ==.
;	main.c:111: ET1 = 1;
;	assignBit
	setb	_ET1
	C$main.c$113$1_0$17 ==.
;	main.c:113: TR0 = 1;
;	assignBit
	setb	_TR0
	C$main.c$115$1_0$17 ==.
;	main.c:115: while (1)
00118$:
	C$main.c$117$2_0$18 ==.
;	main.c:117: show_dig();
	lcall	_show_dig
	C$main.c$118$2_0$18 ==.
;	main.c:118: key_enable=0;
	mov	_key_enable,#0x00
	C$main.c$119$2_0$18 ==.
;	main.c:119: delayms(5);
	mov	dpl,#0x05
	lcall	_delayms
	C$main.c$120$2_0$18 ==.
;	main.c:120: while (K1 == 0 )
00106$:
	jnb	_P3_1,00166$
	ljmp	00114$
00166$:
	C$main.c$123$3_0$19 ==.
;	main.c:123: show_dig();
	lcall	_show_dig
	C$main.c$124$3_0$19 ==.
;	main.c:124: key_enable++;
	inc	_key_enable
	C$main.c$125$3_0$19 ==.
;	main.c:125: if(key_enable>254)key_enable=0;
	mov	a,_key_enable
	add	a,#0xff - 0xfe
	jnc	00102$
	mov	_key_enable,#0x00
00102$:
	C$main.c$126$3_0$19 ==.
;	main.c:126: if (power != 100 && key_enable==0)
	mov	a,#0x64
	cjne	a,_power,00168$
	sjmp	00106$
00168$:
	mov	a,_key_enable
	jnz	00106$
	C$main.c$129$4_0$20 ==.
;	main.c:129: power++;
	inc	_power
	C$main.c$131$4_0$20 ==.
;	main.c:131: dig3= power%10;
	mov	r6,_power
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_dig3,r4
	C$main.c$132$1_0$17 ==.
;	main.c:132: dig2= (power/10)%10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_dig2,r4
	C$main.c$133$1_0$17 ==.
;	main.c:133: dig1= (power/100)%10;
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_dig1,r4
	C$main.c$134$1_0$17 ==.
;	main.c:134: PWM= 0xff^(power * 0xff)/100;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x00ff
	lcall	__mulint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	xrl	a,#0xff
	mov	_PWM,a
	mov	(_PWM + 1),b
	ljmp	00106$
	C$main.c$143$2_0$18 ==.
;	main.c:143: while (K2 == 0)
00114$:
	jnb	_P3_0,00170$
	ljmp	00118$
00170$:
	C$main.c$146$3_0$21 ==.
;	main.c:146: show_dig();
	lcall	_show_dig
	C$main.c$147$3_0$21 ==.
;	main.c:147: key_enable++;
	inc	_key_enable
	C$main.c$148$3_0$21 ==.
;	main.c:148: if(key_enable>254)key_enable=0;
	mov	a,_key_enable
	add	a,#0xff - 0xfe
	jnc	00110$
	mov	_key_enable,#0x00
00110$:
	C$main.c$149$3_0$21 ==.
;	main.c:149: if (power != 0  && key_enable ==0)
	mov	a,_power
	jz	00114$
	mov	a,_key_enable
	jnz	00114$
	C$main.c$153$4_0$22 ==.
;	main.c:153: power--;
	dec	_power
	C$main.c$156$4_0$22 ==.
;	main.c:156: dig3= power%10;
	mov	r6,_power
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_dig3,r4
	C$main.c$157$1_0$17 ==.
;	main.c:157: dig2= (power/10)%10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_dig2,r4
	C$main.c$158$1_0$17 ==.
;	main.c:158: dig1= (power/100)%10;
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_dig1,r4
	C$main.c$159$1_0$17 ==.
;	main.c:159: PWM= 0xff^(power * 0xff)/100;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x00ff
	lcall	__mulint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	xrl	a,#0xff
	mov	_PWM,a
	mov	(_PWM + 1),b
	ljmp	00114$
	C$main.c$166$1_0$17 ==.
;	main.c:166: }
	C$main.c$166$1_0$17 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$table$0_0$0 == .
_table:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
