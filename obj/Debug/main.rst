                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _table
                                     12 	.globl _main
                                     13 	.globl _delayms
                                     14 	.globl _delay
                                     15 	.globl _timer1
                                     16 	.globl _timer0
                                     17 	.globl _show_dig
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _key_enable
                                    115 	.globl _power
                                    116 	.globl _dig3
                                    117 	.globl _dig2
                                    118 	.globl _dig1
                                    119 	.globl _count_prg
                                    120 	.globl _PWM
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 G$P0$0_0$0 == 0x0080
                           000080   127 _P0	=	0x0080
                           000081   128 G$SP$0_0$0 == 0x0081
                           000081   129 _SP	=	0x0081
                           000082   130 G$DPL$0_0$0 == 0x0082
                           000082   131 _DPL	=	0x0082
                           000083   132 G$DPH$0_0$0 == 0x0083
                           000083   133 _DPH	=	0x0083
                           000087   134 G$PCON$0_0$0 == 0x0087
                           000087   135 _PCON	=	0x0087
                           000088   136 G$TCON$0_0$0 == 0x0088
                           000088   137 _TCON	=	0x0088
                           000089   138 G$TMOD$0_0$0 == 0x0089
                           000089   139 _TMOD	=	0x0089
                           00008A   140 G$TL0$0_0$0 == 0x008a
                           00008A   141 _TL0	=	0x008a
                           00008B   142 G$TL1$0_0$0 == 0x008b
                           00008B   143 _TL1	=	0x008b
                           00008C   144 G$TH0$0_0$0 == 0x008c
                           00008C   145 _TH0	=	0x008c
                           00008D   146 G$TH1$0_0$0 == 0x008d
                           00008D   147 _TH1	=	0x008d
                           000090   148 G$P1$0_0$0 == 0x0090
                           000090   149 _P1	=	0x0090
                           000098   150 G$SCON$0_0$0 == 0x0098
                           000098   151 _SCON	=	0x0098
                           000099   152 G$SBUF$0_0$0 == 0x0099
                           000099   153 _SBUF	=	0x0099
                           0000A0   154 G$P2$0_0$0 == 0x00a0
                           0000A0   155 _P2	=	0x00a0
                           0000A8   156 G$IE$0_0$0 == 0x00a8
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 G$P3$0_0$0 == 0x00b0
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 G$IP$0_0$0 == 0x00b8
                           0000B8   161 _IP	=	0x00b8
                           0000D0   162 G$PSW$0_0$0 == 0x00d0
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 G$ACC$0_0$0 == 0x00e0
                           0000E0   165 _ACC	=	0x00e0
                           0000F0   166 G$B$0_0$0 == 0x00f0
                           0000F0   167 _B	=	0x00f0
                                    168 ;--------------------------------------------------------
                                    169 ; special function bits
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 G$P0_0$0_0$0 == 0x0080
                           000080   174 _P0_0	=	0x0080
                           000081   175 G$P0_1$0_0$0 == 0x0081
                           000081   176 _P0_1	=	0x0081
                           000082   177 G$P0_2$0_0$0 == 0x0082
                           000082   178 _P0_2	=	0x0082
                           000083   179 G$P0_3$0_0$0 == 0x0083
                           000083   180 _P0_3	=	0x0083
                           000084   181 G$P0_4$0_0$0 == 0x0084
                           000084   182 _P0_4	=	0x0084
                           000085   183 G$P0_5$0_0$0 == 0x0085
                           000085   184 _P0_5	=	0x0085
                           000086   185 G$P0_6$0_0$0 == 0x0086
                           000086   186 _P0_6	=	0x0086
                           000087   187 G$P0_7$0_0$0 == 0x0087
                           000087   188 _P0_7	=	0x0087
                           000088   189 G$IT0$0_0$0 == 0x0088
                           000088   190 _IT0	=	0x0088
                           000089   191 G$IE0$0_0$0 == 0x0089
                           000089   192 _IE0	=	0x0089
                           00008A   193 G$IT1$0_0$0 == 0x008a
                           00008A   194 _IT1	=	0x008a
                           00008B   195 G$IE1$0_0$0 == 0x008b
                           00008B   196 _IE1	=	0x008b
                           00008C   197 G$TR0$0_0$0 == 0x008c
                           00008C   198 _TR0	=	0x008c
                           00008D   199 G$TF0$0_0$0 == 0x008d
                           00008D   200 _TF0	=	0x008d
                           00008E   201 G$TR1$0_0$0 == 0x008e
                           00008E   202 _TR1	=	0x008e
                           00008F   203 G$TF1$0_0$0 == 0x008f
                           00008F   204 _TF1	=	0x008f
                           000090   205 G$P1_0$0_0$0 == 0x0090
                           000090   206 _P1_0	=	0x0090
                           000091   207 G$P1_1$0_0$0 == 0x0091
                           000091   208 _P1_1	=	0x0091
                           000092   209 G$P1_2$0_0$0 == 0x0092
                           000092   210 _P1_2	=	0x0092
                           000093   211 G$P1_3$0_0$0 == 0x0093
                           000093   212 _P1_3	=	0x0093
                           000094   213 G$P1_4$0_0$0 == 0x0094
                           000094   214 _P1_4	=	0x0094
                           000095   215 G$P1_5$0_0$0 == 0x0095
                           000095   216 _P1_5	=	0x0095
                           000096   217 G$P1_6$0_0$0 == 0x0096
                           000096   218 _P1_6	=	0x0096
                           000097   219 G$P1_7$0_0$0 == 0x0097
                           000097   220 _P1_7	=	0x0097
                           000098   221 G$RI$0_0$0 == 0x0098
                           000098   222 _RI	=	0x0098
                           000099   223 G$TI$0_0$0 == 0x0099
                           000099   224 _TI	=	0x0099
                           00009A   225 G$RB8$0_0$0 == 0x009a
                           00009A   226 _RB8	=	0x009a
                           00009B   227 G$TB8$0_0$0 == 0x009b
                           00009B   228 _TB8	=	0x009b
                           00009C   229 G$REN$0_0$0 == 0x009c
                           00009C   230 _REN	=	0x009c
                           00009D   231 G$SM2$0_0$0 == 0x009d
                           00009D   232 _SM2	=	0x009d
                           00009E   233 G$SM1$0_0$0 == 0x009e
                           00009E   234 _SM1	=	0x009e
                           00009F   235 G$SM0$0_0$0 == 0x009f
                           00009F   236 _SM0	=	0x009f
                           0000A0   237 G$P2_0$0_0$0 == 0x00a0
                           0000A0   238 _P2_0	=	0x00a0
                           0000A1   239 G$P2_1$0_0$0 == 0x00a1
                           0000A1   240 _P2_1	=	0x00a1
                           0000A2   241 G$P2_2$0_0$0 == 0x00a2
                           0000A2   242 _P2_2	=	0x00a2
                           0000A3   243 G$P2_3$0_0$0 == 0x00a3
                           0000A3   244 _P2_3	=	0x00a3
                           0000A4   245 G$P2_4$0_0$0 == 0x00a4
                           0000A4   246 _P2_4	=	0x00a4
                           0000A5   247 G$P2_5$0_0$0 == 0x00a5
                           0000A5   248 _P2_5	=	0x00a5
                           0000A6   249 G$P2_6$0_0$0 == 0x00a6
                           0000A6   250 _P2_6	=	0x00a6
                           0000A7   251 G$P2_7$0_0$0 == 0x00a7
                           0000A7   252 _P2_7	=	0x00a7
                           0000A8   253 G$EX0$0_0$0 == 0x00a8
                           0000A8   254 _EX0	=	0x00a8
                           0000A9   255 G$ET0$0_0$0 == 0x00a9
                           0000A9   256 _ET0	=	0x00a9
                           0000AA   257 G$EX1$0_0$0 == 0x00aa
                           0000AA   258 _EX1	=	0x00aa
                           0000AB   259 G$ET1$0_0$0 == 0x00ab
                           0000AB   260 _ET1	=	0x00ab
                           0000AC   261 G$ES$0_0$0 == 0x00ac
                           0000AC   262 _ES	=	0x00ac
                           0000AF   263 G$EA$0_0$0 == 0x00af
                           0000AF   264 _EA	=	0x00af
                           0000B0   265 G$P3_0$0_0$0 == 0x00b0
                           0000B0   266 _P3_0	=	0x00b0
                           0000B1   267 G$P3_1$0_0$0 == 0x00b1
                           0000B1   268 _P3_1	=	0x00b1
                           0000B2   269 G$P3_2$0_0$0 == 0x00b2
                           0000B2   270 _P3_2	=	0x00b2
                           0000B3   271 G$P3_3$0_0$0 == 0x00b3
                           0000B3   272 _P3_3	=	0x00b3
                           0000B4   273 G$P3_4$0_0$0 == 0x00b4
                           0000B4   274 _P3_4	=	0x00b4
                           0000B5   275 G$P3_5$0_0$0 == 0x00b5
                           0000B5   276 _P3_5	=	0x00b5
                           0000B6   277 G$P3_6$0_0$0 == 0x00b6
                           0000B6   278 _P3_6	=	0x00b6
                           0000B7   279 G$P3_7$0_0$0 == 0x00b7
                           0000B7   280 _P3_7	=	0x00b7
                           0000B0   281 G$RXD$0_0$0 == 0x00b0
                           0000B0   282 _RXD	=	0x00b0
                           0000B1   283 G$TXD$0_0$0 == 0x00b1
                           0000B1   284 _TXD	=	0x00b1
                           0000B2   285 G$INT0$0_0$0 == 0x00b2
                           0000B2   286 _INT0	=	0x00b2
                           0000B3   287 G$INT1$0_0$0 == 0x00b3
                           0000B3   288 _INT1	=	0x00b3
                           0000B4   289 G$T0$0_0$0 == 0x00b4
                           0000B4   290 _T0	=	0x00b4
                           0000B5   291 G$T1$0_0$0 == 0x00b5
                           0000B5   292 _T1	=	0x00b5
                           0000B6   293 G$WR$0_0$0 == 0x00b6
                           0000B6   294 _WR	=	0x00b6
                           0000B7   295 G$RD$0_0$0 == 0x00b7
                           0000B7   296 _RD	=	0x00b7
                           0000B8   297 G$PX0$0_0$0 == 0x00b8
                           0000B8   298 _PX0	=	0x00b8
                           0000B9   299 G$PT0$0_0$0 == 0x00b9
                           0000B9   300 _PT0	=	0x00b9
                           0000BA   301 G$PX1$0_0$0 == 0x00ba
                           0000BA   302 _PX1	=	0x00ba
                           0000BB   303 G$PT1$0_0$0 == 0x00bb
                           0000BB   304 _PT1	=	0x00bb
                           0000BC   305 G$PS$0_0$0 == 0x00bc
                           0000BC   306 _PS	=	0x00bc
                           0000D0   307 G$P$0_0$0 == 0x00d0
                           0000D0   308 _P	=	0x00d0
                           0000D1   309 G$F1$0_0$0 == 0x00d1
                           0000D1   310 _F1	=	0x00d1
                           0000D2   311 G$OV$0_0$0 == 0x00d2
                           0000D2   312 _OV	=	0x00d2
                           0000D3   313 G$RS0$0_0$0 == 0x00d3
                           0000D3   314 _RS0	=	0x00d3
                           0000D4   315 G$RS1$0_0$0 == 0x00d4
                           0000D4   316 _RS1	=	0x00d4
                           0000D5   317 G$F0$0_0$0 == 0x00d5
                           0000D5   318 _F0	=	0x00d5
                           0000D6   319 G$AC$0_0$0 == 0x00d6
                           0000D6   320 _AC	=	0x00d6
                           0000D7   321 G$CY$0_0$0 == 0x00d7
                           0000D7   322 _CY	=	0x00d7
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable register banks
                                    325 ;--------------------------------------------------------
                                    326 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        327 	.ds 8
                                    328 ;--------------------------------------------------------
                                    329 ; internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area DSEG    (DATA)
                           000000   332 G$PWM$0_0$0==.
      000008                        333 _PWM::
      000008                        334 	.ds 2
                           000002   335 G$count_prg$0_0$0==.
      00000A                        336 _count_prg::
      00000A                        337 	.ds 1
                           000003   338 G$dig1$0_0$0==.
      00000B                        339 _dig1::
      00000B                        340 	.ds 1
                           000004   341 G$dig2$0_0$0==.
      00000C                        342 _dig2::
      00000C                        343 	.ds 1
                           000005   344 G$dig3$0_0$0==.
      00000D                        345 _dig3::
      00000D                        346 	.ds 1
                           000006   347 G$power$0_0$0==.
      00000E                        348 _power::
      00000E                        349 	.ds 1
                           000007   350 G$key_enable$0_0$0==.
      00000F                        351 _key_enable::
      00000F                        352 	.ds 1
                                    353 ;--------------------------------------------------------
                                    354 ; overlayable items in internal ram 
                                    355 ;--------------------------------------------------------
                                    356 	.area	OSEG    (OVR,DATA)
                                    357 	.area	OSEG    (OVR,DATA)
                                    358 ;--------------------------------------------------------
                                    359 ; Stack segment in internal ram 
                                    360 ;--------------------------------------------------------
                                    361 	.area	SSEG
      000012                        362 __start__stack:
      000012                        363 	.ds	1
                                    364 
                                    365 ;--------------------------------------------------------
                                    366 ; indirectly addressable internal ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area ISEG    (DATA)
                                    369 ;--------------------------------------------------------
                                    370 ; absolute internal ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area IABS    (ABS,DATA)
                                    373 	.area IABS    (ABS,DATA)
                                    374 ;--------------------------------------------------------
                                    375 ; bit data
                                    376 ;--------------------------------------------------------
                                    377 	.area BSEG    (BIT)
                                    378 ;--------------------------------------------------------
                                    379 ; paged external ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area PSEG    (PAG,XDATA)
                                    382 ;--------------------------------------------------------
                                    383 ; external ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area XSEG    (XDATA)
                                    386 ;--------------------------------------------------------
                                    387 ; absolute external ram data
                                    388 ;--------------------------------------------------------
                                    389 	.area XABS    (ABS,XDATA)
                                    390 ;--------------------------------------------------------
                                    391 ; external initialized ram data
                                    392 ;--------------------------------------------------------
                                    393 	.area XISEG   (XDATA)
                                    394 	.area HOME    (CODE)
                                    395 	.area GSINIT0 (CODE)
                                    396 	.area GSINIT1 (CODE)
                                    397 	.area GSINIT2 (CODE)
                                    398 	.area GSINIT3 (CODE)
                                    399 	.area GSINIT4 (CODE)
                                    400 	.area GSINIT5 (CODE)
                                    401 	.area GSINIT  (CODE)
                                    402 	.area GSFINAL (CODE)
                                    403 	.area CSEG    (CODE)
                                    404 ;--------------------------------------------------------
                                    405 ; interrupt vector 
                                    406 ;--------------------------------------------------------
                                    407 	.area HOME    (CODE)
      000000                        408 __interrupt_vect:
      000000 02 00 21         [24]  409 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  410 	reti
      000004                        411 	.ds	7
      00000B 02 00 ED         [24]  412 	ljmp	_timer0
      00000E                        413 	.ds	5
      000013 32               [24]  414 	reti
      000014                        415 	.ds	7
      00001B 02 00 FD         [24]  416 	ljmp	_timer1
                                    417 ;--------------------------------------------------------
                                    418 ; global & static initialisations
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area GSINIT  (CODE)
                                    422 	.area GSFINAL (CODE)
                                    423 	.area GSINIT  (CODE)
                                    424 	.globl __sdcc_gsinit_startup
                                    425 	.globl __sdcc_program_startup
                                    426 	.globl __start__stack
                                    427 	.globl __mcs51_genXINIT
                                    428 	.globl __mcs51_genXRAMCLEAR
                                    429 	.globl __mcs51_genRAMCLEAR
                           000000   430 	C$main.c$15$1_0$17 ==.
                                    431 ;	main.c:15: unsigned int PWM = 0xfe;
      00007A 75 08 FE         [24]  432 	mov	_PWM,#0xfe
      00007D 75 09 00         [24]  433 	mov	(_PWM + 1),#0x00
                           000006   434 	C$main.c$16$1_0$17 ==.
                                    435 ;	main.c:16: unsigned char count_prg = 0;
      000080 75 0A 00         [24]  436 	mov	_count_prg,#0x00
                           000009   437 	C$main.c$17$1_0$17 ==.
                                    438 ;	main.c:17: unsigned char dig1 =0;
      000083 75 0B 00         [24]  439 	mov	_dig1,#0x00
                           00000C   440 	C$main.c$18$1_0$17 ==.
                                    441 ;	main.c:18: unsigned char dig2 =0;
      000086 75 0C 00         [24]  442 	mov	_dig2,#0x00
                           00000F   443 	C$main.c$19$1_0$17 ==.
                                    444 ;	main.c:19: unsigned char dig3 =0;
      000089 75 0D 00         [24]  445 	mov	_dig3,#0x00
                           000012   446 	C$main.c$20$1_0$17 ==.
                                    447 ;	main.c:20: unsigned char power =0;
      00008C 75 0E 00         [24]  448 	mov	_power,#0x00
                           000015   449 	C$main.c$21$1_0$17 ==.
                                    450 ;	main.c:21: unsigned char key_enable =0;
      00008F 75 0F 00         [24]  451 	mov	_key_enable,#0x00
                                    452 	.area GSFINAL (CODE)
      000092 02 00 1E         [24]  453 	ljmp	__sdcc_program_startup
                                    454 ;--------------------------------------------------------
                                    455 ; Home
                                    456 ;--------------------------------------------------------
                                    457 	.area HOME    (CODE)
                                    458 	.area HOME    (CODE)
      00001E                        459 __sdcc_program_startup:
      00001E 02 01 1A         [24]  460 	ljmp	_main
                                    461 ;	return from main will return to caller
                                    462 ;--------------------------------------------------------
                                    463 ; code
                                    464 ;--------------------------------------------------------
                                    465 	.area CSEG    (CODE)
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'show_dig'
                                    468 ;------------------------------------------------------------
                           000000   469 	G$show_dig$0$0 ==.
                           000000   470 	C$main.c$25$0_0$2 ==.
                                    471 ;	main.c:25: void show_dig(void)
                                    472 ;	-----------------------------------------
                                    473 ;	 function show_dig
                                    474 ;	-----------------------------------------
      000095                        475 _show_dig:
                           000007   476 	ar7 = 0x07
                           000006   477 	ar6 = 0x06
                           000005   478 	ar5 = 0x05
                           000004   479 	ar4 = 0x04
                           000003   480 	ar3 = 0x03
                           000002   481 	ar2 = 0x02
                           000001   482 	ar1 = 0x01
                           000000   483 	ar0 = 0x00
                           000000   484 	C$main.c$28$1_0$2 ==.
                                    485 ;	main.c:28: count_prg++;
      000095 05 0A            [12]  486 	inc	_count_prg
                           000002   487 	C$main.c$32$1_0$2 ==.
                                    488 ;	main.c:32: if (count_prg > 2) count_prg = 0;
      000097 E5 0A            [12]  489 	mov	a,_count_prg
      000099 24 FD            [12]  490 	add	a,#0xff - 0x02
      00009B 50 03            [24]  491 	jnc	00102$
      00009D 75 0A 00         [24]  492 	mov	_count_prg,#0x00
      0000A0                        493 00102$:
                           00000B   494 	C$main.c$34$1_0$2 ==.
                                    495 ;	main.c:34: if (count_prg==2 && power>99)
      0000A0 74 02            [12]  496 	mov	a,#0x02
      0000A2 B5 0A 17         [24]  497 	cjne	a,_count_prg,00104$
      0000A5 E5 0E            [12]  498 	mov	a,_power
      0000A7 24 9C            [12]  499 	add	a,#0xff - 0x63
      0000A9 50 11            [24]  500 	jnc	00104$
                           000016   501 	C$main.c$37$2_0$3 ==.
                                    502 ;	main.c:37: OUT_SEG =0;
      0000AB 75 90 00         [24]  503 	mov	_P1,#0x00
                           000019   504 	C$main.c$38$2_0$3 ==.
                                    505 ;	main.c:38: KATOD1 = 0;
                                    506 ;	assignBit
      0000AE C2 B3            [12]  507 	clr	_P3_3
                           00001B   508 	C$main.c$39$2_0$3 ==.
                                    509 ;	main.c:39: KATOD2 = 1;
                                    510 ;	assignBit
      0000B0 D2 B4            [12]  511 	setb	_P3_4
                           00001D   512 	C$main.c$40$2_0$3 ==.
                                    513 ;	main.c:40: KATOD3 = 1;
                                    514 ;	assignBit
      0000B2 D2 B5            [12]  515 	setb	_P3_5
                           00001F   516 	C$main.c$41$2_0$3 ==.
                                    517 ;	main.c:41: OUT_SEG = table[dig1];
      0000B4 E5 0B            [12]  518 	mov	a,_dig1
      0000B6 90 03 88         [24]  519 	mov	dptr,#_table
      0000B9 93               [24]  520 	movc	a,@a+dptr
      0000BA F5 90            [12]  521 	mov	_P1,a
      0000BC                        522 00104$:
                           000027   523 	C$main.c$44$1_0$2 ==.
                                    524 ;	main.c:44: if (count_prg==1 && power>9 )
      0000BC 74 01            [12]  525 	mov	a,#0x01
      0000BE B5 0A 17         [24]  526 	cjne	a,_count_prg,00107$
      0000C1 E5 0E            [12]  527 	mov	a,_power
      0000C3 24 F6            [12]  528 	add	a,#0xff - 0x09
      0000C5 50 11            [24]  529 	jnc	00107$
                           000032   530 	C$main.c$46$2_0$4 ==.
                                    531 ;	main.c:46: OUT_SEG =0;
      0000C7 75 90 00         [24]  532 	mov	_P1,#0x00
                           000035   533 	C$main.c$47$2_0$4 ==.
                                    534 ;	main.c:47: KATOD1 = 1;
                                    535 ;	assignBit
      0000CA D2 B3            [12]  536 	setb	_P3_3
                           000037   537 	C$main.c$48$2_0$4 ==.
                                    538 ;	main.c:48: KATOD2 = 0;
                                    539 ;	assignBit
      0000CC C2 B4            [12]  540 	clr	_P3_4
                           000039   541 	C$main.c$49$2_0$4 ==.
                                    542 ;	main.c:49: KATOD3 = 1;
                                    543 ;	assignBit
      0000CE D2 B5            [12]  544 	setb	_P3_5
                           00003B   545 	C$main.c$50$2_0$4 ==.
                                    546 ;	main.c:50: OUT_SEG = table[dig2];
      0000D0 E5 0C            [12]  547 	mov	a,_dig2
      0000D2 90 03 88         [24]  548 	mov	dptr,#_table
      0000D5 93               [24]  549 	movc	a,@a+dptr
      0000D6 F5 90            [12]  550 	mov	_P1,a
      0000D8                        551 00107$:
                           000043   552 	C$main.c$53$1_0$2 ==.
                                    553 ;	main.c:53: if (count_prg==0 )
      0000D8 E5 0A            [12]  554 	mov	a,_count_prg
                           000045   555 	C$main.c$55$2_0$5 ==.
                                    556 ;	main.c:55: OUT_SEG =0;
      0000DA 70 10            [24]  557 	jnz	00111$
      0000DC F5 90            [12]  558 	mov	_P1,a
                           000049   559 	C$main.c$56$2_0$5 ==.
                                    560 ;	main.c:56: KATOD1 = 1;
                                    561 ;	assignBit
      0000DE D2 B3            [12]  562 	setb	_P3_3
                           00004B   563 	C$main.c$57$2_0$5 ==.
                                    564 ;	main.c:57: KATOD2 = 1;
                                    565 ;	assignBit
      0000E0 D2 B4            [12]  566 	setb	_P3_4
                           00004D   567 	C$main.c$58$2_0$5 ==.
                                    568 ;	main.c:58: KATOD3 = 0;
                                    569 ;	assignBit
      0000E2 C2 B5            [12]  570 	clr	_P3_5
                           00004F   571 	C$main.c$59$2_0$5 ==.
                                    572 ;	main.c:59: OUT_SEG = table[dig3];
      0000E4 E5 0D            [12]  573 	mov	a,_dig3
      0000E6 90 03 88         [24]  574 	mov	dptr,#_table
      0000E9 93               [24]  575 	movc	a,@a+dptr
      0000EA F5 90            [12]  576 	mov	_P1,a
      0000EC                        577 00111$:
                           000057   578 	C$main.c$63$1_0$2 ==.
                                    579 ;	main.c:63: }
                           000057   580 	C$main.c$63$1_0$2 ==.
                           000057   581 	XG$show_dig$0$0 ==.
      0000EC 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'timer0'
                                    585 ;------------------------------------------------------------
                           000058   586 	G$timer0$0$0 ==.
                           000058   587 	C$main.c$65$1_0$7 ==.
                                    588 ;	main.c:65: void timer0(void) __interrupt(1)
                                    589 ;	-----------------------------------------
                                    590 ;	 function timer0
                                    591 ;	-----------------------------------------
      0000ED                        592 _timer0:
                           000058   593 	C$main.c$67$1_0$7 ==.
                                    594 ;	main.c:67: TR1 = 0;
                                    595 ;	assignBit
      0000ED C2 8E            [12]  596 	clr	_TR1
                           00005A   597 	C$main.c$68$1_0$7 ==.
                                    598 ;	main.c:68: TH0 = 0xfe;
      0000EF 75 8C FE         [24]  599 	mov	_TH0,#0xfe
                           00005D   600 	C$main.c$69$1_0$7 ==.
                                    601 ;	main.c:69: TL0 = 0xff;
      0000F2 75 8A FF         [24]  602 	mov	_TL0,#0xff
                           000060   603 	C$main.c$70$1_0$7 ==.
                                    604 ;	main.c:70: TH1= PWM;
      0000F5 85 08 8D         [24]  605 	mov	_TH1,_PWM
                           000063   606 	C$main.c$71$1_0$7 ==.
                                    607 ;	main.c:71: TR1 = 1;
                                    608 ;	assignBit
      0000F8 D2 8E            [12]  609 	setb	_TR1
                           000065   610 	C$main.c$72$1_0$7 ==.
                                    611 ;	main.c:72: PWM_OUT = 1;
                                    612 ;	assignBit
      0000FA D2 B7            [12]  613 	setb	_P3_7
                           000067   614 	C$main.c$73$1_0$7 ==.
                                    615 ;	main.c:73: }
                           000067   616 	C$main.c$73$1_0$7 ==.
                           000067   617 	XG$timer0$0$0 ==.
      0000FC 32               [24]  618 	reti
                                    619 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    620 ;	eliminated unneeded push/pop not_psw
                                    621 ;	eliminated unneeded push/pop dpl
                                    622 ;	eliminated unneeded push/pop dph
                                    623 ;	eliminated unneeded push/pop b
                                    624 ;	eliminated unneeded push/pop acc
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'timer1'
                                    627 ;------------------------------------------------------------
                           000068   628 	G$timer1$0$0 ==.
                           000068   629 	C$main.c$75$1_0$9 ==.
                                    630 ;	main.c:75: void timer1(void) __interrupt(3)
                                    631 ;	-----------------------------------------
                                    632 ;	 function timer1
                                    633 ;	-----------------------------------------
      0000FD                        634 _timer1:
                           000068   635 	C$main.c$77$1_0$9 ==.
                                    636 ;	main.c:77: TR1 = 0;
                                    637 ;	assignBit
      0000FD C2 8E            [12]  638 	clr	_TR1
                           00006A   639 	C$main.c$78$1_0$9 ==.
                                    640 ;	main.c:78: PWM_OUT = 0;
                                    641 ;	assignBit
      0000FF C2 B7            [12]  642 	clr	_P3_7
                           00006C   643 	C$main.c$80$1_0$9 ==.
                                    644 ;	main.c:80: }
                           00006C   645 	C$main.c$80$1_0$9 ==.
                           00006C   646 	XG$timer1$0$0 ==.
      000101 32               [24]  647 	reti
                                    648 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    649 ;	eliminated unneeded push/pop not_psw
                                    650 ;	eliminated unneeded push/pop dpl
                                    651 ;	eliminated unneeded push/pop dph
                                    652 ;	eliminated unneeded push/pop b
                                    653 ;	eliminated unneeded push/pop acc
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'delay'
                                    656 ;------------------------------------------------------------
                                    657 ;t                         Allocated to registers 
                                    658 ;------------------------------------------------------------
                           00006D   659 	G$delay$0$0 ==.
                           00006D   660 	C$main.c$82$1_0$11 ==.
                                    661 ;	main.c:82: void delay(unsigned char t)
                                    662 ;	-----------------------------------------
                                    663 ;	 function delay
                                    664 ;	-----------------------------------------
      000102                        665 _delay:
      000102 AF 82            [24]  666 	mov	r7,dpl
                           00006F   667 	C$main.c$84$1_0$11 ==.
                                    668 ;	main.c:84: while (t--);
      000104                        669 00101$:
      000104 8F 06            [24]  670 	mov	ar6,r7
      000106 1F               [12]  671 	dec	r7
      000107 EE               [12]  672 	mov	a,r6
      000108 70 FA            [24]  673 	jnz	00101$
                           000075   674 	C$main.c$85$1_0$11 ==.
                                    675 ;	main.c:85: }
                           000075   676 	C$main.c$85$1_0$11 ==.
                           000075   677 	XG$delay$0$0 ==.
      00010A 22               [24]  678 	ret
                                    679 ;------------------------------------------------------------
                                    680 ;Allocation info for local variables in function 'delayms'
                                    681 ;------------------------------------------------------------
                                    682 ;ms                        Allocated to registers 
                                    683 ;i                         Allocated to registers r6 
                                    684 ;------------------------------------------------------------
                           000076   685 	G$delayms$0$0 ==.
                           000076   686 	C$main.c$87$1_0$13 ==.
                                    687 ;	main.c:87: void delayms(unsigned char ms)
                                    688 ;	-----------------------------------------
                                    689 ;	 function delayms
                                    690 ;	-----------------------------------------
      00010B                        691 _delayms:
      00010B AF 82            [24]  692 	mov	r7,dpl
                           000078   693 	C$main.c$91$1_0$13 ==.
                                    694 ;	main.c:91: while (ms--) {
      00010D                        695 00102$:
      00010D 8F 06            [24]  696 	mov	ar6,r7
      00010F 1F               [12]  697 	dec	r7
      000110 EE               [12]  698 	mov	a,r6
      000111 60 06            [24]  699 	jz	00108$
                           00007E   700 	C$main.c$92$1_0$13 ==.
                                    701 ;	main.c:92: for (i = 0; i < 120; i++);
      000113 7E 78            [12]  702 	mov	r6,#0x78
      000115                        703 00107$:
      000115 DE FE            [24]  704 	djnz	r6,00107$
      000117 80 F4            [24]  705 	sjmp	00102$
      000119                        706 00108$:
                           000084   707 	C$main.c$94$1_0$13 ==.
                                    708 ;	main.c:94: }
                           000084   709 	C$main.c$94$1_0$13 ==.
                           000084   710 	XG$delayms$0$0 ==.
      000119 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'main'
                                    714 ;------------------------------------------------------------
                           000085   715 	G$main$0$0 ==.
                           000085   716 	C$main.c$98$1_0$17 ==.
                                    717 ;	main.c:98: void main(void)
                                    718 ;	-----------------------------------------
                                    719 ;	 function main
                                    720 ;	-----------------------------------------
      00011A                        721 _main:
                           000085   722 	C$main.c$102$1_0$17 ==.
                                    723 ;	main.c:102: PWM_OUT = 0;
                                    724 ;	assignBit
      00011A C2 B7            [12]  725 	clr	_P3_7
                           000087   726 	C$main.c$103$1_0$17 ==.
                                    727 ;	main.c:103: TMOD = 0x21;
      00011C 75 89 21         [24]  728 	mov	_TMOD,#0x21
                           00008A   729 	C$main.c$104$1_0$17 ==.
                                    730 ;	main.c:104: TH0 = 0xfe;
      00011F 75 8C FE         [24]  731 	mov	_TH0,#0xfe
                           00008D   732 	C$main.c$105$1_0$17 ==.
                                    733 ;	main.c:105: TL0 = 0x00;
      000122 75 8A 00         [24]  734 	mov	_TL0,#0x00
                           000090   735 	C$main.c$106$1_0$17 ==.
                                    736 ;	main.c:106: TH1 = 0xfe;
      000125 75 8D FE         [24]  737 	mov	_TH1,#0xfe
                           000093   738 	C$main.c$107$1_0$17 ==.
                                    739 ;	main.c:107: TL1 = 0x01;
      000128 75 8B 01         [24]  740 	mov	_TL1,#0x01
                           000096   741 	C$main.c$109$1_0$17 ==.
                                    742 ;	main.c:109: EA = 1;
                                    743 ;	assignBit
      00012B D2 AF            [12]  744 	setb	_EA
                           000098   745 	C$main.c$110$1_0$17 ==.
                                    746 ;	main.c:110: ET0 = 1;
                                    747 ;	assignBit
      00012D D2 A9            [12]  748 	setb	_ET0
                           00009A   749 	C$main.c$111$1_0$17 ==.
                                    750 ;	main.c:111: ET1 = 1;
                                    751 ;	assignBit
      00012F D2 AB            [12]  752 	setb	_ET1
                           00009C   753 	C$main.c$113$1_0$17 ==.
                                    754 ;	main.c:113: TR0 = 1;
                                    755 ;	assignBit
      000131 D2 8C            [12]  756 	setb	_TR0
                           00009E   757 	C$main.c$115$1_0$17 ==.
                                    758 ;	main.c:115: while (1)
      000133                        759 00118$:
                           00009E   760 	C$main.c$117$2_0$18 ==.
                                    761 ;	main.c:117: show_dig();
      000133 12 00 95         [24]  762 	lcall	_show_dig
                           0000A1   763 	C$main.c$118$2_0$18 ==.
                                    764 ;	main.c:118: key_enable=0;
      000136 75 0F 00         [24]  765 	mov	_key_enable,#0x00
                           0000A4   766 	C$main.c$119$2_0$18 ==.
                                    767 ;	main.c:119: delayms(5);
      000139 75 82 05         [24]  768 	mov	dpl,#0x05
      00013C 12 01 0B         [24]  769 	lcall	_delayms
                           0000AA   770 	C$main.c$120$2_0$18 ==.
                                    771 ;	main.c:120: while (K1 == 0 )
      00013F                        772 00106$:
      00013F 30 B1 03         [24]  773 	jnb	_P3_1,00166$
      000142 02 01 E2         [24]  774 	ljmp	00114$
      000145                        775 00166$:
                           0000B0   776 	C$main.c$123$3_0$19 ==.
                                    777 ;	main.c:123: show_dig();
      000145 12 00 95         [24]  778 	lcall	_show_dig
                           0000B3   779 	C$main.c$124$3_0$19 ==.
                                    780 ;	main.c:124: key_enable++;
      000148 05 0F            [12]  781 	inc	_key_enable
                           0000B5   782 	C$main.c$125$3_0$19 ==.
                                    783 ;	main.c:125: if(key_enable>254)key_enable=0;
      00014A E5 0F            [12]  784 	mov	a,_key_enable
      00014C 24 01            [12]  785 	add	a,#0xff - 0xfe
      00014E 50 03            [24]  786 	jnc	00102$
      000150 75 0F 00         [24]  787 	mov	_key_enable,#0x00
      000153                        788 00102$:
                           0000BE   789 	C$main.c$126$3_0$19 ==.
                                    790 ;	main.c:126: if (power != 100 && key_enable==0)
      000153 74 64            [12]  791 	mov	a,#0x64
      000155 B5 0E 02         [24]  792 	cjne	a,_power,00168$
      000158 80 E5            [24]  793 	sjmp	00106$
      00015A                        794 00168$:
      00015A E5 0F            [12]  795 	mov	a,_key_enable
      00015C 70 E1            [24]  796 	jnz	00106$
                           0000C9   797 	C$main.c$129$4_0$20 ==.
                                    798 ;	main.c:129: power++;
      00015E 05 0E            [12]  799 	inc	_power
                           0000CB   800 	C$main.c$131$4_0$20 ==.
                                    801 ;	main.c:131: dig3= power%10;
      000160 AE 0E            [24]  802 	mov	r6,_power
      000162 7F 00            [12]  803 	mov	r7,#0x00
      000164 75 10 0A         [24]  804 	mov	__modsint_PARM_2,#0x0a
                                    805 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000167 8F 11            [24]  806 	mov	(__modsint_PARM_2 + 1),r7
      000169 8E 82            [24]  807 	mov	dpl,r6
      00016B 8F 83            [24]  808 	mov	dph,r7
      00016D C0 07            [24]  809 	push	ar7
      00016F C0 06            [24]  810 	push	ar6
      000171 12 03 16         [24]  811 	lcall	__modsint
      000174 AC 82            [24]  812 	mov	r4,dpl
      000176 D0 06            [24]  813 	pop	ar6
      000178 D0 07            [24]  814 	pop	ar7
      00017A 8C 0D            [24]  815 	mov	_dig3,r4
                           0000E7   816 	C$main.c$132$1_0$17 ==.
                                    817 ;	main.c:132: dig2= (power/10)%10;
      00017C 75 10 0A         [24]  818 	mov	__divsint_PARM_2,#0x0a
      00017F 75 11 00         [24]  819 	mov	(__divsint_PARM_2 + 1),#0x00
      000182 8E 82            [24]  820 	mov	dpl,r6
      000184 8F 83            [24]  821 	mov	dph,r7
      000186 C0 07            [24]  822 	push	ar7
      000188 C0 06            [24]  823 	push	ar6
      00018A 12 03 4C         [24]  824 	lcall	__divsint
      00018D 75 10 0A         [24]  825 	mov	__modsint_PARM_2,#0x0a
      000190 75 11 00         [24]  826 	mov	(__modsint_PARM_2 + 1),#0x00
      000193 12 03 16         [24]  827 	lcall	__modsint
      000196 AC 82            [24]  828 	mov	r4,dpl
      000198 D0 06            [24]  829 	pop	ar6
      00019A D0 07            [24]  830 	pop	ar7
      00019C 8C 0C            [24]  831 	mov	_dig2,r4
                           000109   832 	C$main.c$133$1_0$17 ==.
                                    833 ;	main.c:133: dig1= (power/100)%10;
      00019E 75 10 64         [24]  834 	mov	__divsint_PARM_2,#0x64
      0001A1 75 11 00         [24]  835 	mov	(__divsint_PARM_2 + 1),#0x00
      0001A4 8E 82            [24]  836 	mov	dpl,r6
      0001A6 8F 83            [24]  837 	mov	dph,r7
      0001A8 C0 07            [24]  838 	push	ar7
      0001AA C0 06            [24]  839 	push	ar6
      0001AC 12 03 4C         [24]  840 	lcall	__divsint
      0001AF 75 10 0A         [24]  841 	mov	__modsint_PARM_2,#0x0a
      0001B2 75 11 00         [24]  842 	mov	(__modsint_PARM_2 + 1),#0x00
      0001B5 12 03 16         [24]  843 	lcall	__modsint
      0001B8 AC 82            [24]  844 	mov	r4,dpl
      0001BA D0 06            [24]  845 	pop	ar6
      0001BC D0 07            [24]  846 	pop	ar7
      0001BE 8C 0B            [24]  847 	mov	_dig1,r4
                           00012B   848 	C$main.c$134$1_0$17 ==.
                                    849 ;	main.c:134: PWM= 0xff^(power * 0xff)/100;
      0001C0 8E 10            [24]  850 	mov	__mulint_PARM_2,r6
      0001C2 8F 11            [24]  851 	mov	(__mulint_PARM_2 + 1),r7
      0001C4 90 00 FF         [24]  852 	mov	dptr,#0x00ff
      0001C7 12 02 83         [24]  853 	lcall	__mulint
      0001CA 75 10 64         [24]  854 	mov	__divsint_PARM_2,#0x64
      0001CD 75 11 00         [24]  855 	mov	(__divsint_PARM_2 + 1),#0x00
      0001D0 12 03 4C         [24]  856 	lcall	__divsint
      0001D3 E5 82            [12]  857 	mov	a,dpl
      0001D5 85 83 F0         [24]  858 	mov	b,dph
      0001D8 64 FF            [12]  859 	xrl	a,#0xff
      0001DA F5 08            [12]  860 	mov	_PWM,a
      0001DC 85 F0 09         [24]  861 	mov	(_PWM + 1),b
      0001DF 02 01 3F         [24]  862 	ljmp	00106$
                           00014D   863 	C$main.c$143$2_0$18 ==.
                                    864 ;	main.c:143: while (K2 == 0)
      0001E2                        865 00114$:
      0001E2 30 B0 03         [24]  866 	jnb	_P3_0,00170$
      0001E5 02 01 33         [24]  867 	ljmp	00118$
      0001E8                        868 00170$:
                           000153   869 	C$main.c$146$3_0$21 ==.
                                    870 ;	main.c:146: show_dig();
      0001E8 12 00 95         [24]  871 	lcall	_show_dig
                           000156   872 	C$main.c$147$3_0$21 ==.
                                    873 ;	main.c:147: key_enable++;
      0001EB 05 0F            [12]  874 	inc	_key_enable
                           000158   875 	C$main.c$148$3_0$21 ==.
                                    876 ;	main.c:148: if(key_enable>254)key_enable=0;
      0001ED E5 0F            [12]  877 	mov	a,_key_enable
      0001EF 24 01            [12]  878 	add	a,#0xff - 0xfe
      0001F1 50 03            [24]  879 	jnc	00110$
      0001F3 75 0F 00         [24]  880 	mov	_key_enable,#0x00
      0001F6                        881 00110$:
                           000161   882 	C$main.c$149$3_0$21 ==.
                                    883 ;	main.c:149: if (power != 0  && key_enable ==0)
      0001F6 E5 0E            [12]  884 	mov	a,_power
      0001F8 60 E8            [24]  885 	jz	00114$
      0001FA E5 0F            [12]  886 	mov	a,_key_enable
      0001FC 70 E4            [24]  887 	jnz	00114$
                           000169   888 	C$main.c$153$4_0$22 ==.
                                    889 ;	main.c:153: power--;
      0001FE 15 0E            [12]  890 	dec	_power
                           00016B   891 	C$main.c$156$4_0$22 ==.
                                    892 ;	main.c:156: dig3= power%10;
      000200 AE 0E            [24]  893 	mov	r6,_power
      000202 7F 00            [12]  894 	mov	r7,#0x00
      000204 75 10 0A         [24]  895 	mov	__modsint_PARM_2,#0x0a
                                    896 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000207 8F 11            [24]  897 	mov	(__modsint_PARM_2 + 1),r7
      000209 8E 82            [24]  898 	mov	dpl,r6
      00020B 8F 83            [24]  899 	mov	dph,r7
      00020D C0 07            [24]  900 	push	ar7
      00020F C0 06            [24]  901 	push	ar6
      000211 12 03 16         [24]  902 	lcall	__modsint
      000214 AC 82            [24]  903 	mov	r4,dpl
      000216 D0 06            [24]  904 	pop	ar6
      000218 D0 07            [24]  905 	pop	ar7
      00021A 8C 0D            [24]  906 	mov	_dig3,r4
                           000187   907 	C$main.c$157$1_0$17 ==.
                                    908 ;	main.c:157: dig2= (power/10)%10;
      00021C 75 10 0A         [24]  909 	mov	__divsint_PARM_2,#0x0a
      00021F 75 11 00         [24]  910 	mov	(__divsint_PARM_2 + 1),#0x00
      000222 8E 82            [24]  911 	mov	dpl,r6
      000224 8F 83            [24]  912 	mov	dph,r7
      000226 C0 07            [24]  913 	push	ar7
      000228 C0 06            [24]  914 	push	ar6
      00022A 12 03 4C         [24]  915 	lcall	__divsint
      00022D 75 10 0A         [24]  916 	mov	__modsint_PARM_2,#0x0a
      000230 75 11 00         [24]  917 	mov	(__modsint_PARM_2 + 1),#0x00
      000233 12 03 16         [24]  918 	lcall	__modsint
      000236 AC 82            [24]  919 	mov	r4,dpl
      000238 D0 06            [24]  920 	pop	ar6
      00023A D0 07            [24]  921 	pop	ar7
      00023C 8C 0C            [24]  922 	mov	_dig2,r4
                           0001A9   923 	C$main.c$158$1_0$17 ==.
                                    924 ;	main.c:158: dig1= (power/100)%10;
      00023E 75 10 64         [24]  925 	mov	__divsint_PARM_2,#0x64
      000241 75 11 00         [24]  926 	mov	(__divsint_PARM_2 + 1),#0x00
      000244 8E 82            [24]  927 	mov	dpl,r6
      000246 8F 83            [24]  928 	mov	dph,r7
      000248 C0 07            [24]  929 	push	ar7
      00024A C0 06            [24]  930 	push	ar6
      00024C 12 03 4C         [24]  931 	lcall	__divsint
      00024F 75 10 0A         [24]  932 	mov	__modsint_PARM_2,#0x0a
      000252 75 11 00         [24]  933 	mov	(__modsint_PARM_2 + 1),#0x00
      000255 12 03 16         [24]  934 	lcall	__modsint
      000258 AC 82            [24]  935 	mov	r4,dpl
      00025A D0 06            [24]  936 	pop	ar6
      00025C D0 07            [24]  937 	pop	ar7
      00025E 8C 0B            [24]  938 	mov	_dig1,r4
                           0001CB   939 	C$main.c$159$1_0$17 ==.
                                    940 ;	main.c:159: PWM= 0xff^(power * 0xff)/100;
      000260 8E 10            [24]  941 	mov	__mulint_PARM_2,r6
      000262 8F 11            [24]  942 	mov	(__mulint_PARM_2 + 1),r7
      000264 90 00 FF         [24]  943 	mov	dptr,#0x00ff
      000267 12 02 83         [24]  944 	lcall	__mulint
      00026A 75 10 64         [24]  945 	mov	__divsint_PARM_2,#0x64
      00026D 75 11 00         [24]  946 	mov	(__divsint_PARM_2 + 1),#0x00
      000270 12 03 4C         [24]  947 	lcall	__divsint
      000273 E5 82            [12]  948 	mov	a,dpl
      000275 85 83 F0         [24]  949 	mov	b,dph
      000278 64 FF            [12]  950 	xrl	a,#0xff
      00027A F5 08            [12]  951 	mov	_PWM,a
      00027C 85 F0 09         [24]  952 	mov	(_PWM + 1),b
      00027F 02 01 E2         [24]  953 	ljmp	00114$
                           0001ED   954 	C$main.c$166$1_0$17 ==.
                                    955 ;	main.c:166: }
                           0001ED   956 	C$main.c$166$1_0$17 ==.
                           0001ED   957 	XG$main$0$0 ==.
      000282 22               [24]  958 	ret
                                    959 	.area CSEG    (CODE)
                                    960 	.area CONST   (CODE)
                           000000   961 G$table$0_0$0 == .
      000388                        962 _table:
      000388 3F                     963 	.db #0x3f	; 63
      000389 06                     964 	.db #0x06	; 6
      00038A 5B                     965 	.db #0x5b	; 91
      00038B 4F                     966 	.db #0x4f	; 79	'O'
      00038C 66                     967 	.db #0x66	; 102	'f'
      00038D 6D                     968 	.db #0x6d	; 109	'm'
      00038E 7D                     969 	.db #0x7d	; 125
      00038F 07                     970 	.db #0x07	; 7
      000390 7F                     971 	.db #0x7f	; 127
      000391 6F                     972 	.db #0x6f	; 111	'o'
                                    973 	.area XINIT   (CODE)
                                    974 	.area CABS    (ABS,CODE)
