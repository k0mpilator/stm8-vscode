                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _GPIO_WriteReverse
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_DeInit
                                     15 	.globl _assert_failed
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; Stack segment in internal ram 
                                     26 ;--------------------------------------------------------
                                     27 	.area	SSEG
      FFFFFF                         28 __start__stack:
      FFFFFF                         29 	.ds	1
                                     30 
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; interrupt vector 
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
      008000                         48 __interrupt_vect:
      008000 82 00 80 07             49 	int s_GSINIT ; reset
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
      008007                         57 __sdcc_gs_init_startup:
      008007                         58 __sdcc_init_data:
                                     59 ; stm8_genXINIT() start
      008007 AE 00 00         [ 2]   60 	ldw x, #l_DATA
      00800A 27 07            [ 1]   61 	jreq	00002$
      00800C                         62 00001$:
      00800C 72 4F 00 00      [ 1]   63 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   64 	decw x
      008011 26 F9            [ 1]   65 	jrne	00001$
      008013                         66 00002$:
      008013 AE 00 00         [ 2]   67 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   68 	jreq	00004$
      008018                         69 00003$:
      008018 D6 80 4D         [ 1]   70 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 00         [ 1]   71 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]   72 	decw	x
      00801F 26 F7            [ 1]   73 	jrne	00003$
      008021                         74 00004$:
                                     75 ; stm8_genXINIT() end
                                     76 	.area GSFINAL
      008021 CC 80 04         [ 2]   77 	jp	__sdcc_program_startup
                                     78 ;--------------------------------------------------------
                                     79 ; Home
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME
                                     82 	.area HOME
      008004                         83 __sdcc_program_startup:
      008004 CC 80 7D         [ 2]   84 	jp	_main
                                     85 ;	return from main will return to caller
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CODE
                           000000    90 	Smain$delay$0 ==.
                                     91 ;	./src/main.c: 39: static void delay(uint32_t t) {
                                     92 ; genLabel
                                     93 ;	-----------------------------------------
                                     94 ;	 function delay
                                     95 ;	-----------------------------------------
                                     96 ;	Register assignment is optimal.
                                     97 ;	Stack space usage: 0 bytes.
      008062                         98 _delay:
                           000000    99 	Smain$delay$1 ==.
                           000000   100 	Smain$delay$2 ==.
                                    101 ;	./src/main.c: 40: while (--t);
                                    102 ; genAssign
      008062 16 05            [ 2]  103 	ldw	y, (0x05, sp)
      008064 1E 03            [ 2]  104 	ldw	x, (0x03, sp)
                                    105 ; genLabel
      008066                        106 00101$:
                                    107 ; genMinus
      008066 72 A2 00 01      [ 2]  108 	subw	y, #0x0001
      00806A 9F               [ 1]  109 	ld	a, xl
      00806B A2 00            [ 1]  110 	sbc	a, #0x00
      00806D 97               [ 1]  111 	ld	xl, a
      00806E 9E               [ 1]  112 	ld	a, xh
      00806F A2 00            [ 1]  113 	sbc	a, #0x00
      008071 95               [ 1]  114 	ld	xh, a
                                    115 ; genIfx
      008072 90 5D            [ 2]  116 	tnzw	y
      008074 26 03            [ 1]  117 	jrne	00112$
      008076 5D               [ 2]  118 	tnzw	x
      008077 27 03            [ 1]  119 	jreq	00113$
      008079                        120 00112$:
      008079 CC 80 66         [ 2]  121 	jp	00101$
      00807C                        122 00113$:
                                    123 ; genLabel
      00807C                        124 00104$:
                           00001A   125 	Smain$delay$3 ==.
                                    126 ;	./src/main.c: 41: }
                                    127 ; genEndFunction
                           00001A   128 	Smain$delay$4 ==.
                           00001A   129 	XFmain$delay$0$0 ==.
      00807C 81               [ 4]  130 	ret
                           00001B   131 	Smain$delay$5 ==.
                           00001B   132 	Smain$main$6 ==.
                                    133 ;	./src/main.c: 43: void main(void){
                                    134 ; genLabel
                                    135 ;	-----------------------------------------
                                    136 ;	 function main
                                    137 ;	-----------------------------------------
                                    138 ;	Register assignment is optimal.
                                    139 ;	Stack space usage: 0 bytes.
      00807D                        140 _main:
                           00001B   141 	Smain$main$7 ==.
                           00001B   142 	Smain$main$8 ==.
                                    143 ;	./src/main.c: 45: GPIO_DeInit(LED_PORT);
                                    144 ; genIPush
      00807D 4B 05            [ 1]  145 	push	#0x05
                           00001D   146 	Smain$main$9 ==.
      00807F 4B 50            [ 1]  147 	push	#0x50
                           00001F   148 	Smain$main$10 ==.
                                    149 ; genCall
      008081 CD 80 B1         [ 4]  150 	call	_GPIO_DeInit
      008084 5B 02            [ 2]  151 	addw	sp, #2
                           000024   152 	Smain$main$11 ==.
                           000024   153 	Smain$main$12 ==.
                                    154 ;	./src/main.c: 46: GPIO_Init(LED_PORT, LED, GPIO_MODE_OUT_PP_LOW_FAST);
                                    155 ; genIPush
      008086 4B E0            [ 1]  156 	push	#0xe0
                           000026   157 	Smain$main$13 ==.
                                    158 ; genIPush
      008088 4B 20            [ 1]  159 	push	#0x20
                           000028   160 	Smain$main$14 ==.
                                    161 ; genIPush
      00808A 4B 05            [ 1]  162 	push	#0x05
                           00002A   163 	Smain$main$15 ==.
      00808C 4B 50            [ 1]  164 	push	#0x50
                           00002C   165 	Smain$main$16 ==.
                                    166 ; genCall
      00808E CD 80 C4         [ 4]  167 	call	_GPIO_Init
      008091 5B 04            [ 2]  168 	addw	sp, #4
                           000031   169 	Smain$main$17 ==.
                                    170 ; genLabel
      008093                        171 00102$:
                           000031   172 	Smain$main$18 ==.
                           000031   173 	Smain$main$19 ==.
                                    174 ;	./src/main.c: 49: delay(60000);
                                    175 ; genIPush
      008093 4B 60            [ 1]  176 	push	#0x60
                           000033   177 	Smain$main$20 ==.
      008095 4B EA            [ 1]  178 	push	#0xea
                           000035   179 	Smain$main$21 ==.
      008097 5F               [ 1]  180 	clrw	x
      008098 89               [ 2]  181 	pushw	x
                           000037   182 	Smain$main$22 ==.
                                    183 ; genCall
      008099 CD 80 62         [ 4]  184 	call	_delay
      00809C 5B 04            [ 2]  185 	addw	sp, #4
                           00003C   186 	Smain$main$23 ==.
                           00003C   187 	Smain$main$24 ==.
                                    188 ;	./src/main.c: 50: GPIO_WriteReverse(LED_PORT, LED);
                                    189 ; genIPush
      00809E 4B 20            [ 1]  190 	push	#0x20
                           00003E   191 	Smain$main$25 ==.
                                    192 ; genIPush
      0080A0 4B 05            [ 1]  193 	push	#0x05
                           000040   194 	Smain$main$26 ==.
      0080A2 4B 50            [ 1]  195 	push	#0x50
                           000042   196 	Smain$main$27 ==.
                                    197 ; genCall
      0080A4 CD 81 F5         [ 4]  198 	call	_GPIO_WriteReverse
      0080A7 5B 03            [ 2]  199 	addw	sp, #3
                           000047   200 	Smain$main$28 ==.
                                    201 ; genGoto
      0080A9 CC 80 93         [ 2]  202 	jp	00102$
                           00004A   203 	Smain$main$29 ==.
                                    204 ; genLabel
      0080AC                        205 00104$:
                           00004A   206 	Smain$main$30 ==.
                                    207 ;	./src/main.c: 52: }
                                    208 ; genEndFunction
                           00004A   209 	Smain$main$31 ==.
                           00004A   210 	XG$main$0$0 ==.
      0080AC 81               [ 4]  211 	ret
                           00004B   212 	Smain$main$32 ==.
                           00004B   213 	Smain$assert_failed$33 ==.
                                    214 ;	./src/main.c: 65: void assert_failed(uint8_t* file, uint32_t line)
                                    215 ; genLabel
                                    216 ;	-----------------------------------------
                                    217 ;	 function assert_failed
                                    218 ;	-----------------------------------------
                                    219 ;	Register assignment is optimal.
                                    220 ;	Stack space usage: 0 bytes.
      0080AD                        221 _assert_failed:
                           00004B   222 	Smain$assert_failed$34 ==.
                           00004B   223 	Smain$assert_failed$35 ==.
                                    224 ;	./src/main.c: 74: while (1)
                                    225 ; genLabel
      0080AD                        226 00102$:
                                    227 ; genGoto
      0080AD CC 80 AD         [ 2]  228 	jp	00102$
                                    229 ; genLabel
      0080B0                        230 00104$:
                           00004E   231 	Smain$assert_failed$36 ==.
                                    232 ;	./src/main.c: 77: }
                                    233 ; genEndFunction
                           00004E   234 	Smain$assert_failed$37 ==.
                           00004E   235 	XG$assert_failed$0$0 ==.
      0080B0 81               [ 4]  236 	ret
                           00004F   237 	Smain$assert_failed$38 ==.
                                    238 	.area CODE
                                    239 	.area CONST
                                    240 	.area INITIALIZER
                                    241 	.area CABS (ABS)
                                    242 
                                    243 	.area .debug_line (NOLOAD)
      000302 00 00 01 1D            244 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000306                        245 Ldebug_line_start:
      000306 00 02                  246 	.dw	2
      000308 00 00 00 B0            247 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00030C 01                     248 	.db	1
      00030D 01                     249 	.db	1
      00030E FB                     250 	.db	-5
      00030F 0F                     251 	.db	15
      000310 0A                     252 	.db	10
      000311 00                     253 	.db	0
      000312 01                     254 	.db	1
      000313 01                     255 	.db	1
      000314 01                     256 	.db	1
      000315 01                     257 	.db	1
      000316 00                     258 	.db	0
      000317 00                     259 	.db	0
      000318 00                     260 	.db	0
      000319 01                     261 	.db	1
      00031A 2F 75 73 72 2F 6C 6F   262 	.ascii "/usr/local/bin/../share/sdcc/include/stm8"
             63 61 6C 2F 62 69 6E
             2F 2E 2E 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65 2F 73 74 6D 38
      000343 00                     263 	.db	0
      000344 2F 75 73 72 2F 6C 6F   264 	.ascii "/usr/local/share/sdcc/include/stm8"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65 2F 73 74 6D 38
      000366 00                     265 	.db	0
      000367 2F 75 73 72 2F 6C 6F   266 	.ascii "/usr/local/bin/../share/sdcc/include"
             63 61 6C 2F 62 69 6E
             2F 2E 2E 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65
      00038B 00                     267 	.db	0
      00038C 2F 75 73 72 2F 6C 6F   268 	.ascii "/usr/local/share/sdcc/include"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65
      0003A9 00                     269 	.db	0
      0003AA 00                     270 	.db	0
      0003AB 2E 2F 73 72 63 2F 6D   271 	.ascii "./src/main.c"
             61 69 6E 2E 63
      0003B7 00                     272 	.db	0
      0003B8 00                     273 	.uleb128	0
      0003B9 00                     274 	.uleb128	0
      0003BA 00                     275 	.uleb128	0
      0003BB 00                     276 	.db	0
      0003BC                        277 Ldebug_line_stmt:
      0003BC 00                     278 	.db	0
      0003BD 05                     279 	.uleb128	5
      0003BE 02                     280 	.db	2
      0003BF 00 00 80 62            281 	.dw	0,(Smain$delay$0)
      0003C3 03                     282 	.db	3
      0003C4 26                     283 	.sleb128	38
      0003C5 01                     284 	.db	1
      0003C6 09                     285 	.db	9
      0003C7 00 00                  286 	.dw	Smain$delay$2-Smain$delay$0
      0003C9 03                     287 	.db	3
      0003CA 01                     288 	.sleb128	1
      0003CB 01                     289 	.db	1
      0003CC 09                     290 	.db	9
      0003CD 00 1A                  291 	.dw	Smain$delay$3-Smain$delay$2
      0003CF 03                     292 	.db	3
      0003D0 01                     293 	.sleb128	1
      0003D1 01                     294 	.db	1
      0003D2 09                     295 	.db	9
      0003D3 00 01                  296 	.dw	1+Smain$delay$4-Smain$delay$3
      0003D5 00                     297 	.db	0
      0003D6 01                     298 	.uleb128	1
      0003D7 01                     299 	.db	1
      0003D8 00                     300 	.db	0
      0003D9 05                     301 	.uleb128	5
      0003DA 02                     302 	.db	2
      0003DB 00 00 80 7D            303 	.dw	0,(Smain$main$6)
      0003DF 03                     304 	.db	3
      0003E0 2A                     305 	.sleb128	42
      0003E1 01                     306 	.db	1
      0003E2 09                     307 	.db	9
      0003E3 00 00                  308 	.dw	Smain$main$8-Smain$main$6
      0003E5 03                     309 	.db	3
      0003E6 02                     310 	.sleb128	2
      0003E7 01                     311 	.db	1
      0003E8 09                     312 	.db	9
      0003E9 00 09                  313 	.dw	Smain$main$12-Smain$main$8
      0003EB 03                     314 	.db	3
      0003EC 01                     315 	.sleb128	1
      0003ED 01                     316 	.db	1
      0003EE 09                     317 	.db	9
      0003EF 00 0D                  318 	.dw	Smain$main$19-Smain$main$12
      0003F1 03                     319 	.db	3
      0003F2 03                     320 	.sleb128	3
      0003F3 01                     321 	.db	1
      0003F4 09                     322 	.db	9
      0003F5 00 0B                  323 	.dw	Smain$main$24-Smain$main$19
      0003F7 03                     324 	.db	3
      0003F8 01                     325 	.sleb128	1
      0003F9 01                     326 	.db	1
      0003FA 09                     327 	.db	9
      0003FB 00 0E                  328 	.dw	Smain$main$30-Smain$main$24
      0003FD 03                     329 	.db	3
      0003FE 02                     330 	.sleb128	2
      0003FF 01                     331 	.db	1
      000400 09                     332 	.db	9
      000401 00 01                  333 	.dw	1+Smain$main$31-Smain$main$30
      000403 00                     334 	.db	0
      000404 01                     335 	.uleb128	1
      000405 01                     336 	.db	1
      000406 00                     337 	.db	0
      000407 05                     338 	.uleb128	5
      000408 02                     339 	.db	2
      000409 00 00 80 AD            340 	.dw	0,(Smain$assert_failed$33)
      00040D 03                     341 	.db	3
      00040E C0 00                  342 	.sleb128	64
      000410 01                     343 	.db	1
      000411 09                     344 	.db	9
      000412 00 00                  345 	.dw	Smain$assert_failed$35-Smain$assert_failed$33
      000414 03                     346 	.db	3
      000415 09                     347 	.sleb128	9
      000416 01                     348 	.db	1
      000417 09                     349 	.db	9
      000418 00 03                  350 	.dw	Smain$assert_failed$36-Smain$assert_failed$35
      00041A 03                     351 	.db	3
      00041B 03                     352 	.sleb128	3
      00041C 01                     353 	.db	1
      00041D 09                     354 	.db	9
      00041E 00 01                  355 	.dw	1+Smain$assert_failed$37-Smain$assert_failed$36
      000420 00                     356 	.db	0
      000421 01                     357 	.uleb128	1
      000422 01                     358 	.db	1
      000423                        359 Ldebug_line_end:
                                    360 
                                    361 	.area .debug_loc (NOLOAD)
      000190                        362 Ldebug_loc_start:
      000190 00 00 80 AD            363 	.dw	0,(Smain$assert_failed$34)
      000194 00 00 80 B1            364 	.dw	0,(Smain$assert_failed$38)
      000198 00 02                  365 	.dw	2
      00019A 78                     366 	.db	120
      00019B 01                     367 	.sleb128	1
      00019C 00 00 00 00            368 	.dw	0,0
      0001A0 00 00 00 00            369 	.dw	0,0
      0001A4 00 00 80 A9            370 	.dw	0,(Smain$main$28)
      0001A8 00 00 80 AD            371 	.dw	0,(Smain$main$32)
      0001AC 00 02                  372 	.dw	2
      0001AE 78                     373 	.db	120
      0001AF 01                     374 	.sleb128	1
      0001B0 00 00 80 A4            375 	.dw	0,(Smain$main$27)
      0001B4 00 00 80 A9            376 	.dw	0,(Smain$main$28)
      0001B8 00 02                  377 	.dw	2
      0001BA 78                     378 	.db	120
      0001BB 04                     379 	.sleb128	4
      0001BC 00 00 80 A2            380 	.dw	0,(Smain$main$26)
      0001C0 00 00 80 A4            381 	.dw	0,(Smain$main$27)
      0001C4 00 02                  382 	.dw	2
      0001C6 78                     383 	.db	120
      0001C7 03                     384 	.sleb128	3
      0001C8 00 00 80 A0            385 	.dw	0,(Smain$main$25)
      0001CC 00 00 80 A2            386 	.dw	0,(Smain$main$26)
      0001D0 00 02                  387 	.dw	2
      0001D2 78                     388 	.db	120
      0001D3 02                     389 	.sleb128	2
      0001D4 00 00 80 9E            390 	.dw	0,(Smain$main$23)
      0001D8 00 00 80 A0            391 	.dw	0,(Smain$main$25)
      0001DC 00 02                  392 	.dw	2
      0001DE 78                     393 	.db	120
      0001DF 01                     394 	.sleb128	1
      0001E0 00 00 80 99            395 	.dw	0,(Smain$main$22)
      0001E4 00 00 80 9E            396 	.dw	0,(Smain$main$23)
      0001E8 00 02                  397 	.dw	2
      0001EA 78                     398 	.db	120
      0001EB 05                     399 	.sleb128	5
      0001EC 00 00 80 97            400 	.dw	0,(Smain$main$21)
      0001F0 00 00 80 99            401 	.dw	0,(Smain$main$22)
      0001F4 00 02                  402 	.dw	2
      0001F6 78                     403 	.db	120
      0001F7 03                     404 	.sleb128	3
      0001F8 00 00 80 95            405 	.dw	0,(Smain$main$20)
      0001FC 00 00 80 97            406 	.dw	0,(Smain$main$21)
      000200 00 02                  407 	.dw	2
      000202 78                     408 	.db	120
      000203 02                     409 	.sleb128	2
      000204 00 00 80 93            410 	.dw	0,(Smain$main$17)
      000208 00 00 80 95            411 	.dw	0,(Smain$main$20)
      00020C 00 02                  412 	.dw	2
      00020E 78                     413 	.db	120
      00020F 01                     414 	.sleb128	1
      000210 00 00 80 8E            415 	.dw	0,(Smain$main$16)
      000214 00 00 80 93            416 	.dw	0,(Smain$main$17)
      000218 00 02                  417 	.dw	2
      00021A 78                     418 	.db	120
      00021B 05                     419 	.sleb128	5
      00021C 00 00 80 8C            420 	.dw	0,(Smain$main$15)
      000220 00 00 80 8E            421 	.dw	0,(Smain$main$16)
      000224 00 02                  422 	.dw	2
      000226 78                     423 	.db	120
      000227 04                     424 	.sleb128	4
      000228 00 00 80 8A            425 	.dw	0,(Smain$main$14)
      00022C 00 00 80 8C            426 	.dw	0,(Smain$main$15)
      000230 00 02                  427 	.dw	2
      000232 78                     428 	.db	120
      000233 03                     429 	.sleb128	3
      000234 00 00 80 88            430 	.dw	0,(Smain$main$13)
      000238 00 00 80 8A            431 	.dw	0,(Smain$main$14)
      00023C 00 02                  432 	.dw	2
      00023E 78                     433 	.db	120
      00023F 02                     434 	.sleb128	2
      000240 00 00 80 86            435 	.dw	0,(Smain$main$11)
      000244 00 00 80 88            436 	.dw	0,(Smain$main$13)
      000248 00 02                  437 	.dw	2
      00024A 78                     438 	.db	120
      00024B 01                     439 	.sleb128	1
      00024C 00 00 80 81            440 	.dw	0,(Smain$main$10)
      000250 00 00 80 86            441 	.dw	0,(Smain$main$11)
      000254 00 02                  442 	.dw	2
      000256 78                     443 	.db	120
      000257 03                     444 	.sleb128	3
      000258 00 00 80 7F            445 	.dw	0,(Smain$main$9)
      00025C 00 00 80 81            446 	.dw	0,(Smain$main$10)
      000260 00 02                  447 	.dw	2
      000262 78                     448 	.db	120
      000263 02                     449 	.sleb128	2
      000264 00 00 80 7D            450 	.dw	0,(Smain$main$7)
      000268 00 00 80 7F            451 	.dw	0,(Smain$main$9)
      00026C 00 02                  452 	.dw	2
      00026E 78                     453 	.db	120
      00026F 01                     454 	.sleb128	1
      000270 00 00 00 00            455 	.dw	0,0
      000274 00 00 00 00            456 	.dw	0,0
      000278 00 00 80 62            457 	.dw	0,(Smain$delay$1)
      00027C 00 00 80 7D            458 	.dw	0,(Smain$delay$5)
      000280 00 02                  459 	.dw	2
      000282 78                     460 	.db	120
      000283 01                     461 	.sleb128	1
      000284 00 00 00 00            462 	.dw	0,0
      000288 00 00 00 00            463 	.dw	0,0
                                    464 
                                    465 	.area .debug_abbrev (NOLOAD)
      00001F                        466 Ldebug_abbrev:
      00001F 06                     467 	.uleb128	6
      000020 0F                     468 	.uleb128	15
      000021 00                     469 	.db	0
      000022 0B                     470 	.uleb128	11
      000023 0B                     471 	.uleb128	11
      000024 49                     472 	.uleb128	73
      000025 13                     473 	.uleb128	19
      000026 00                     474 	.uleb128	0
      000027 00                     475 	.uleb128	0
      000028 03                     476 	.uleb128	3
      000029 05                     477 	.uleb128	5
      00002A 00                     478 	.db	0
      00002B 02                     479 	.uleb128	2
      00002C 0A                     480 	.uleb128	10
      00002D 03                     481 	.uleb128	3
      00002E 08                     482 	.uleb128	8
      00002F 49                     483 	.uleb128	73
      000030 13                     484 	.uleb128	19
      000031 00                     485 	.uleb128	0
      000032 00                     486 	.uleb128	0
      000033 02                     487 	.uleb128	2
      000034 2E                     488 	.uleb128	46
      000035 01                     489 	.db	1
      000036 01                     490 	.uleb128	1
      000037 13                     491 	.uleb128	19
      000038 03                     492 	.uleb128	3
      000039 08                     493 	.uleb128	8
      00003A 11                     494 	.uleb128	17
      00003B 01                     495 	.uleb128	1
      00003C 12                     496 	.uleb128	18
      00003D 01                     497 	.uleb128	1
      00003E 3F                     498 	.uleb128	63
      00003F 0C                     499 	.uleb128	12
      000040 40                     500 	.uleb128	64
      000041 06                     501 	.uleb128	6
      000042 00                     502 	.uleb128	0
      000043 00                     503 	.uleb128	0
      000044 01                     504 	.uleb128	1
      000045 11                     505 	.uleb128	17
      000046 01                     506 	.db	1
      000047 03                     507 	.uleb128	3
      000048 08                     508 	.uleb128	8
      000049 10                     509 	.uleb128	16
      00004A 06                     510 	.uleb128	6
      00004B 13                     511 	.uleb128	19
      00004C 0B                     512 	.uleb128	11
      00004D 25                     513 	.uleb128	37
      00004E 08                     514 	.uleb128	8
      00004F 00                     515 	.uleb128	0
      000050 00                     516 	.uleb128	0
      000051 05                     517 	.uleb128	5
      000052 0B                     518 	.uleb128	11
      000053 00                     519 	.db	0
      000054 11                     520 	.uleb128	17
      000055 01                     521 	.uleb128	1
      000056 12                     522 	.uleb128	18
      000057 01                     523 	.uleb128	1
      000058 00                     524 	.uleb128	0
      000059 00                     525 	.uleb128	0
      00005A 04                     526 	.uleb128	4
      00005B 24                     527 	.uleb128	36
      00005C 00                     528 	.db	0
      00005D 03                     529 	.uleb128	3
      00005E 08                     530 	.uleb128	8
      00005F 0B                     531 	.uleb128	11
      000060 0B                     532 	.uleb128	11
      000061 3E                     533 	.uleb128	62
      000062 0B                     534 	.uleb128	11
      000063 00                     535 	.uleb128	0
      000064 00                     536 	.uleb128	0
      000065 00                     537 	.uleb128	0
                                    538 
                                    539 	.area .debug_info (NOLOAD)
      000306 00 00 00 DE            540 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00030A                        541 Ldebug_info_start:
      00030A 00 02                  542 	.dw	2
      00030C 00 00 00 1F            543 	.dw	0,(Ldebug_abbrev)
      000310 04                     544 	.db	4
      000311 01                     545 	.uleb128	1
      000312 2E 2F 73 72 63 2F 6D   546 	.ascii "./src/main.c"
             61 69 6E 2E 63
      00031E 00                     547 	.db	0
      00031F 00 00 03 02            548 	.dw	0,(Ldebug_line_start+-4)
      000323 01                     549 	.db	1
      000324 53 44 43 43 20 76 65   550 	.ascii "SDCC version 3.9.0 #11195"
             72 73 69 6F 6E 20 33
             2E 39 2E 30 20 23 31
             31 31 39 35
      00033D 00                     551 	.db	0
      00033E 02                     552 	.uleb128	2
      00033F 00 00 00 5B            553 	.dw	0,91
      000343 64 65 6C 61 79         554 	.ascii "delay"
      000348 00                     555 	.db	0
      000349 00 00 80 62            556 	.dw	0,(_delay)
      00034D 00 00 80 7D            557 	.dw	0,(XFmain$delay$0$0+1)
      000351 00                     558 	.db	0
      000352 00 00 02 78            559 	.dw	0,(Ldebug_loc_start+232)
      000356 03                     560 	.uleb128	3
      000357 02                     561 	.db	2
      000358 91                     562 	.db	145
      000359 02                     563 	.sleb128	2
      00035A 74                     564 	.ascii "t"
      00035B 00                     565 	.db	0
      00035C 00 00 00 5B            566 	.dw	0,91
      000360 00                     567 	.uleb128	0
      000361 04                     568 	.uleb128	4
      000362 75 6E 73 69 67 6E 65   569 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      00036F 00                     570 	.db	0
      000370 04                     571 	.db	4
      000371 07                     572 	.db	7
      000372 02                     573 	.uleb128	2
      000373 00 00 00 8D            574 	.dw	0,141
      000377 6D 61 69 6E            575 	.ascii "main"
      00037B 00                     576 	.db	0
      00037C 00 00 80 7D            577 	.dw	0,(_main)
      000380 00 00 80 AD            578 	.dw	0,(XG$main$0$0+1)
      000384 01                     579 	.db	1
      000385 00 00 01 A4            580 	.dw	0,(Ldebug_loc_start+20)
      000389 05                     581 	.uleb128	5
      00038A 00 00 80 93            582 	.dw	0,(Smain$main$18)
      00038E 00 00 80 AC            583 	.dw	0,(Smain$main$29)
      000392 00                     584 	.uleb128	0
      000393 02                     585 	.uleb128	2
      000394 00 00 00 CE            586 	.dw	0,206
      000398 61 73 73 65 72 74 5F   587 	.ascii "assert_failed"
             66 61 69 6C 65 64
      0003A5 00                     588 	.db	0
      0003A6 00 00 80 AD            589 	.dw	0,(_assert_failed)
      0003AA 00 00 80 B1            590 	.dw	0,(XG$assert_failed$0$0+1)
      0003AE 01                     591 	.db	1
      0003AF 00 00 01 90            592 	.dw	0,(Ldebug_loc_start)
      0003B3 06                     593 	.uleb128	6
      0003B4 02                     594 	.db	2
      0003B5 00 00 00 CE            595 	.dw	0,206
      0003B9 03                     596 	.uleb128	3
      0003BA 02                     597 	.db	2
      0003BB 91                     598 	.db	145
      0003BC 02                     599 	.sleb128	2
      0003BD 66 69 6C 65            600 	.ascii "file"
      0003C1 00                     601 	.db	0
      0003C2 00 00 00 AD            602 	.dw	0,173
      0003C6 03                     603 	.uleb128	3
      0003C7 02                     604 	.db	2
      0003C8 91                     605 	.db	145
      0003C9 04                     606 	.sleb128	4
      0003CA 6C 69 6E 65            607 	.ascii "line"
      0003CE 00                     608 	.db	0
      0003CF 00 00 00 5B            609 	.dw	0,91
      0003D3 00                     610 	.uleb128	0
      0003D4 04                     611 	.uleb128	4
      0003D5 75 6E 73 69 67 6E 65   612 	.ascii "unsigned char"
             64 20 63 68 61 72
      0003E2 00                     613 	.db	0
      0003E3 01                     614 	.db	1
      0003E4 08                     615 	.db	8
      0003E5 00                     616 	.uleb128	0
      0003E6 00                     617 	.uleb128	0
      0003E7 00                     618 	.uleb128	0
      0003E8                        619 Ldebug_info_end:
                                    620 
                                    621 	.area .debug_pubnames (NOLOAD)
      0001FD 00 00 00 29            622 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000201                        623 Ldebug_pubnames_start:
      000201 00 02                  624 	.dw	2
      000203 00 00 03 06            625 	.dw	0,(Ldebug_info_start-4)
      000207 00 00 00 E2            626 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00020B 00 00 00 6C            627 	.dw	0,108
      00020F 6D 61 69 6E            628 	.ascii "main"
      000213 00                     629 	.db	0
      000214 00 00 00 8D            630 	.dw	0,141
      000218 61 73 73 65 72 74 5F   631 	.ascii "assert_failed"
             66 61 69 6C 65 64
      000225 00                     632 	.db	0
      000226 00 00 00 00            633 	.dw	0,0
      00022A                        634 Ldebug_pubnames_end:
                                    635 
                                    636 	.area .debug_frame (NOLOAD)
      000334 00 00                  637 	.dw	0
      000336 00 0E                  638 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000338                        639 Ldebug_CIE0_start:
      000338 FF FF                  640 	.dw	0xffff
      00033A FF FF                  641 	.dw	0xffff
      00033C 01                     642 	.db	1
      00033D 00                     643 	.db	0
      00033E 01                     644 	.uleb128	1
      00033F 7F                     645 	.sleb128	-1
      000340 09                     646 	.db	9
      000341 0C                     647 	.db	12
      000342 08                     648 	.uleb128	8
      000343 02                     649 	.uleb128	2
      000344 89                     650 	.db	137
      000345 01                     651 	.uleb128	1
      000346                        652 Ldebug_CIE0_end:
      000346 00 00 00 13            653 	.dw	0,19
      00034A 00 00 03 34            654 	.dw	0,(Ldebug_CIE0_start-4)
      00034E 00 00 80 AD            655 	.dw	0,(Smain$assert_failed$34)	;initial loc
      000352 00 00 00 04            656 	.dw	0,Smain$assert_failed$38-Smain$assert_failed$34
      000356 01                     657 	.db	1
      000357 00 00 80 AD            658 	.dw	0,(Smain$assert_failed$34)
      00035B 0E                     659 	.db	14
      00035C 02                     660 	.uleb128	2
                                    661 
                                    662 	.area .debug_frame (NOLOAD)
      00035D 00 00                  663 	.dw	0
      00035F 00 0E                  664 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000361                        665 Ldebug_CIE1_start:
      000361 FF FF                  666 	.dw	0xffff
      000363 FF FF                  667 	.dw	0xffff
      000365 01                     668 	.db	1
      000366 00                     669 	.db	0
      000367 01                     670 	.uleb128	1
      000368 7F                     671 	.sleb128	-1
      000369 09                     672 	.db	9
      00036A 0C                     673 	.db	12
      00036B 08                     674 	.uleb128	8
      00036C 02                     675 	.uleb128	2
      00036D 89                     676 	.db	137
      00036E 01                     677 	.uleb128	1
      00036F                        678 Ldebug_CIE1_end:
      00036F 00 00 00 83            679 	.dw	0,131
      000373 00 00 03 5D            680 	.dw	0,(Ldebug_CIE1_start-4)
      000377 00 00 80 7D            681 	.dw	0,(Smain$main$7)	;initial loc
      00037B 00 00 00 30            682 	.dw	0,Smain$main$32-Smain$main$7
      00037F 01                     683 	.db	1
      000380 00 00 80 7D            684 	.dw	0,(Smain$main$7)
      000384 0E                     685 	.db	14
      000385 02                     686 	.uleb128	2
      000386 01                     687 	.db	1
      000387 00 00 80 7F            688 	.dw	0,(Smain$main$9)
      00038B 0E                     689 	.db	14
      00038C 03                     690 	.uleb128	3
      00038D 01                     691 	.db	1
      00038E 00 00 80 81            692 	.dw	0,(Smain$main$10)
      000392 0E                     693 	.db	14
      000393 04                     694 	.uleb128	4
      000394 01                     695 	.db	1
      000395 00 00 80 86            696 	.dw	0,(Smain$main$11)
      000399 0E                     697 	.db	14
      00039A 02                     698 	.uleb128	2
      00039B 01                     699 	.db	1
      00039C 00 00 80 88            700 	.dw	0,(Smain$main$13)
      0003A0 0E                     701 	.db	14
      0003A1 03                     702 	.uleb128	3
      0003A2 01                     703 	.db	1
      0003A3 00 00 80 8A            704 	.dw	0,(Smain$main$14)
      0003A7 0E                     705 	.db	14
      0003A8 04                     706 	.uleb128	4
      0003A9 01                     707 	.db	1
      0003AA 00 00 80 8C            708 	.dw	0,(Smain$main$15)
      0003AE 0E                     709 	.db	14
      0003AF 05                     710 	.uleb128	5
      0003B0 01                     711 	.db	1
      0003B1 00 00 80 8E            712 	.dw	0,(Smain$main$16)
      0003B5 0E                     713 	.db	14
      0003B6 06                     714 	.uleb128	6
      0003B7 01                     715 	.db	1
      0003B8 00 00 80 93            716 	.dw	0,(Smain$main$17)
      0003BC 0E                     717 	.db	14
      0003BD 02                     718 	.uleb128	2
      0003BE 01                     719 	.db	1
      0003BF 00 00 80 95            720 	.dw	0,(Smain$main$20)
      0003C3 0E                     721 	.db	14
      0003C4 03                     722 	.uleb128	3
      0003C5 01                     723 	.db	1
      0003C6 00 00 80 97            724 	.dw	0,(Smain$main$21)
      0003CA 0E                     725 	.db	14
      0003CB 04                     726 	.uleb128	4
      0003CC 01                     727 	.db	1
      0003CD 00 00 80 99            728 	.dw	0,(Smain$main$22)
      0003D1 0E                     729 	.db	14
      0003D2 06                     730 	.uleb128	6
      0003D3 01                     731 	.db	1
      0003D4 00 00 80 9E            732 	.dw	0,(Smain$main$23)
      0003D8 0E                     733 	.db	14
      0003D9 02                     734 	.uleb128	2
      0003DA 01                     735 	.db	1
      0003DB 00 00 80 A0            736 	.dw	0,(Smain$main$25)
      0003DF 0E                     737 	.db	14
      0003E0 03                     738 	.uleb128	3
      0003E1 01                     739 	.db	1
      0003E2 00 00 80 A2            740 	.dw	0,(Smain$main$26)
      0003E6 0E                     741 	.db	14
      0003E7 04                     742 	.uleb128	4
      0003E8 01                     743 	.db	1
      0003E9 00 00 80 A4            744 	.dw	0,(Smain$main$27)
      0003ED 0E                     745 	.db	14
      0003EE 05                     746 	.uleb128	5
      0003EF 01                     747 	.db	1
      0003F0 00 00 80 A9            748 	.dw	0,(Smain$main$28)
      0003F4 0E                     749 	.db	14
      0003F5 02                     750 	.uleb128	2
                                    751 
                                    752 	.area .debug_frame (NOLOAD)
      0003F6 00 00                  753 	.dw	0
      0003F8 00 0E                  754 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0003FA                        755 Ldebug_CIE2_start:
      0003FA FF FF                  756 	.dw	0xffff
      0003FC FF FF                  757 	.dw	0xffff
      0003FE 01                     758 	.db	1
      0003FF 00                     759 	.db	0
      000400 01                     760 	.uleb128	1
      000401 7F                     761 	.sleb128	-1
      000402 09                     762 	.db	9
      000403 0C                     763 	.db	12
      000404 08                     764 	.uleb128	8
      000405 02                     765 	.uleb128	2
      000406 89                     766 	.db	137
      000407 01                     767 	.uleb128	1
      000408                        768 Ldebug_CIE2_end:
      000408 00 00 00 13            769 	.dw	0,19
      00040C 00 00 03 F6            770 	.dw	0,(Ldebug_CIE2_start-4)
      000410 00 00 80 62            771 	.dw	0,(Smain$delay$1)	;initial loc
      000414 00 00 00 1B            772 	.dw	0,Smain$delay$5-Smain$delay$1
      000418 01                     773 	.db	1
      000419 00 00 80 62            774 	.dw	0,(Smain$delay$1)
      00041D 0E                     775 	.db	14
      00041E 02                     776 	.uleb128	2
