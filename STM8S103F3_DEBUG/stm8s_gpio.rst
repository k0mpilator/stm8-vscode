                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                           000000    59 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     60 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     61 ; genLabel
                                     62 ;	-----------------------------------------
                                     63 ;	 function GPIO_DeInit
                                     64 ;	-----------------------------------------
                                     65 ;	Register assignment might be sub-optimal.
                                     66 ;	Stack space usage: 0 bytes.
      0080B1                         67 _GPIO_DeInit:
                           000000    68 	Sstm8s_gpio$GPIO_DeInit$1 ==.
                           000000    69 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     70 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     71 ; genAssign
      0080B1 16 03            [ 2]   72 	ldw	y, (0x03, sp)
                                     73 ; genPointerSet
      0080B3 90 7F            [ 1]   74 	clr	(y)
                           000004    75 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     76 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     77 ; genPlus
      0080B5 93               [ 1]   78 	ldw	x, y
      0080B6 5C               [ 1]   79 	incw	x
      0080B7 5C               [ 1]   80 	incw	x
                                     81 ; genPointerSet
      0080B8 7F               [ 1]   82 	clr	(x)
                           000008    83 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     84 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     85 ; genPlus
      0080B9 93               [ 1]   86 	ldw	x, y
      0080BA 1C 00 03         [ 2]   87 	addw	x, #0x0003
                                     88 ; genPointerSet
      0080BD 7F               [ 1]   89 	clr	(x)
                           00000D    90 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     91 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     92 ; genPlus
      0080BE 93               [ 1]   93 	ldw	x, y
      0080BF 1C 00 04         [ 2]   94 	addw	x, #0x0004
                                     95 ; genPointerSet
      0080C2 7F               [ 1]   96 	clr	(x)
                                     97 ; genLabel
      0080C3                         98 00101$:
                           000012    99 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                    100 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
                                    101 ; genEndFunction
                           000012   102 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000012   103 	XG$GPIO_DeInit$0$0 ==.
      0080C3 81               [ 4]  104 	ret
                           000013   105 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           000013   106 	Sstm8s_gpio$GPIO_Init$9 ==.
                                    107 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                    108 ; genLabel
                                    109 ;	-----------------------------------------
                                    110 ;	 function GPIO_Init
                                    111 ;	-----------------------------------------
                                    112 ;	Register assignment might be sub-optimal.
                                    113 ;	Stack space usage: 5 bytes.
      0080C4                        114 _GPIO_Init:
                           000013   115 	Sstm8s_gpio$GPIO_Init$10 ==.
      0080C4 52 05            [ 2]  116 	sub	sp, #5
                           000015   117 	Sstm8s_gpio$GPIO_Init$11 ==.
                           000015   118 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    119 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
                                    120 ; genIfx
      0080C6 0D 0B            [ 1]  121 	tnz	(0x0b, sp)
      0080C8 26 03            [ 1]  122 	jrne	00237$
      0080CA CC 81 3F         [ 2]  123 	jp	00116$
      0080CD                        124 00237$:
                                    125 ; genCmpEQorNE
      0080CD 7B 0B            [ 1]  126 	ld	a, (0x0b, sp)
      0080CF A1 40            [ 1]  127 	cp	a, #0x40
      0080D1 26 03            [ 1]  128 	jrne	00239$
      0080D3 CC 81 3F         [ 2]  129 	jp	00116$
      0080D6                        130 00239$:
                           000025   131 	Sstm8s_gpio$GPIO_Init$13 ==.
                                    132 ; skipping generated iCode
                                    133 ; genCmpEQorNE
      0080D6 7B 0B            [ 1]  134 	ld	a, (0x0b, sp)
      0080D8 A1 20            [ 1]  135 	cp	a, #0x20
      0080DA 26 03            [ 1]  136 	jrne	00242$
      0080DC CC 81 3F         [ 2]  137 	jp	00116$
      0080DF                        138 00242$:
                           00002E   139 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    140 ; skipping generated iCode
                                    141 ; genCmpEQorNE
      0080DF 7B 0B            [ 1]  142 	ld	a, (0x0b, sp)
      0080E1 A1 60            [ 1]  143 	cp	a, #0x60
      0080E3 26 03            [ 1]  144 	jrne	00245$
      0080E5 CC 81 3F         [ 2]  145 	jp	00116$
      0080E8                        146 00245$:
                           000037   147 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    148 ; skipping generated iCode
                                    149 ; genCmpEQorNE
      0080E8 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      0080EA A1 A0            [ 1]  151 	cp	a, #0xa0
      0080EC 26 03            [ 1]  152 	jrne	00248$
      0080EE CC 81 3F         [ 2]  153 	jp	00116$
      0080F1                        154 00248$:
                           000040   155 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    156 ; skipping generated iCode
                                    157 ; genCmpEQorNE
      0080F1 7B 0B            [ 1]  158 	ld	a, (0x0b, sp)
      0080F3 A1 E0            [ 1]  159 	cp	a, #0xe0
      0080F5 26 03            [ 1]  160 	jrne	00251$
      0080F7 CC 81 3F         [ 2]  161 	jp	00116$
      0080FA                        162 00251$:
                           000049   163 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    164 ; skipping generated iCode
                                    165 ; genCmpEQorNE
      0080FA 7B 0B            [ 1]  166 	ld	a, (0x0b, sp)
      0080FC A1 80            [ 1]  167 	cp	a, #0x80
      0080FE 26 03            [ 1]  168 	jrne	00254$
      008100 CC 81 3F         [ 2]  169 	jp	00116$
      008103                        170 00254$:
                           000052   171 	Sstm8s_gpio$GPIO_Init$18 ==.
                                    172 ; skipping generated iCode
                                    173 ; genCmpEQorNE
      008103 7B 0B            [ 1]  174 	ld	a, (0x0b, sp)
      008105 A1 C0            [ 1]  175 	cp	a, #0xc0
      008107 26 03            [ 1]  176 	jrne	00257$
      008109 CC 81 3F         [ 2]  177 	jp	00116$
      00810C                        178 00257$:
                           00005B   179 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    180 ; skipping generated iCode
                                    181 ; genCmpEQorNE
      00810C 7B 0B            [ 1]  182 	ld	a, (0x0b, sp)
      00810E A1 B0            [ 1]  183 	cp	a, #0xb0
      008110 26 03            [ 1]  184 	jrne	00260$
      008112 CC 81 3F         [ 2]  185 	jp	00116$
      008115                        186 00260$:
                           000064   187 	Sstm8s_gpio$GPIO_Init$20 ==.
                                    188 ; skipping generated iCode
                                    189 ; genCmpEQorNE
      008115 7B 0B            [ 1]  190 	ld	a, (0x0b, sp)
      008117 A1 F0            [ 1]  191 	cp	a, #0xf0
      008119 26 03            [ 1]  192 	jrne	00263$
      00811B CC 81 3F         [ 2]  193 	jp	00116$
      00811E                        194 00263$:
                           00006D   195 	Sstm8s_gpio$GPIO_Init$21 ==.
                                    196 ; skipping generated iCode
                                    197 ; genCmpEQorNE
      00811E 7B 0B            [ 1]  198 	ld	a, (0x0b, sp)
      008120 A1 90            [ 1]  199 	cp	a, #0x90
      008122 26 03            [ 1]  200 	jrne	00266$
      008124 CC 81 3F         [ 2]  201 	jp	00116$
      008127                        202 00266$:
                           000076   203 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    204 ; skipping generated iCode
                                    205 ; genCmpEQorNE
      008127 7B 0B            [ 1]  206 	ld	a, (0x0b, sp)
      008129 A1 D0            [ 1]  207 	cp	a, #0xd0
      00812B 26 03            [ 1]  208 	jrne	00269$
      00812D CC 81 3F         [ 2]  209 	jp	00116$
      008130                        210 00269$:
                           00007F   211 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    212 ; skipping generated iCode
                                    213 ; skipping iCode since result will be rematerialized
                                    214 ; skipping iCode since result will be rematerialized
                                    215 ; genIPush
      008130 4B 4D            [ 1]  216 	push	#0x4d
                           000081   217 	Sstm8s_gpio$GPIO_Init$24 ==.
      008132 5F               [ 1]  218 	clrw	x
      008133 89               [ 2]  219 	pushw	x
                           000083   220 	Sstm8s_gpio$GPIO_Init$25 ==.
      008134 4B 00            [ 1]  221 	push	#0x00
                           000085   222 	Sstm8s_gpio$GPIO_Init$26 ==.
                                    223 ; genIPush
      008136 4B 24            [ 1]  224 	push	#<(___str_0 + 0)
                           000087   225 	Sstm8s_gpio$GPIO_Init$27 ==.
      008138 4B 80            [ 1]  226 	push	#((___str_0 + 0) >> 8)
                           000089   227 	Sstm8s_gpio$GPIO_Init$28 ==.
                                    228 ; genCall
      00813A CD 80 AD         [ 4]  229 	call	_assert_failed
      00813D 5B 06            [ 2]  230 	addw	sp, #6
                           00008E   231 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    232 ; genLabel
      00813F                        233 00116$:
                           00008E   234 	Sstm8s_gpio$GPIO_Init$30 ==.
                                    235 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
                                    236 ; genIfx
      00813F 0D 0A            [ 1]  237 	tnz	(0x0a, sp)
      008141 27 03            [ 1]  238 	jreq	00271$
      008143 CC 81 55         [ 2]  239 	jp	00151$
      008146                        240 00271$:
                                    241 ; skipping iCode since result will be rematerialized
                                    242 ; skipping iCode since result will be rematerialized
                                    243 ; genIPush
      008146 4B 4E            [ 1]  244 	push	#0x4e
                           000097   245 	Sstm8s_gpio$GPIO_Init$31 ==.
      008148 5F               [ 1]  246 	clrw	x
      008149 89               [ 2]  247 	pushw	x
                           000099   248 	Sstm8s_gpio$GPIO_Init$32 ==.
      00814A 4B 00            [ 1]  249 	push	#0x00
                           00009B   250 	Sstm8s_gpio$GPIO_Init$33 ==.
                                    251 ; genIPush
      00814C 4B 24            [ 1]  252 	push	#<(___str_0 + 0)
                           00009D   253 	Sstm8s_gpio$GPIO_Init$34 ==.
      00814E 4B 80            [ 1]  254 	push	#((___str_0 + 0) >> 8)
                           00009F   255 	Sstm8s_gpio$GPIO_Init$35 ==.
                                    256 ; genCall
      008150 CD 80 AD         [ 4]  257 	call	_assert_failed
      008153 5B 06            [ 2]  258 	addw	sp, #6
                           0000A4   259 	Sstm8s_gpio$GPIO_Init$36 ==.
                                    260 ; genLabel
      008155                        261 00151$:
                           0000A4   262 	Sstm8s_gpio$GPIO_Init$37 ==.
                                    263 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    264 ; genAssign
      008155 16 08            [ 2]  265 	ldw	y, (0x08, sp)
                                    266 ; genPlus
      008157 93               [ 1]  267 	ldw	x, y
      008158 1C 00 04         [ 2]  268 	addw	x, #0x0004
      00815B 1F 01            [ 2]  269 	ldw	(0x01, sp), x
                                    270 ; genPointerGet
      00815D 1E 01            [ 2]  271 	ldw	x, (0x01, sp)
      00815F F6               [ 1]  272 	ld	a, (x)
                                    273 ; genCpl
      008160 88               [ 1]  274 	push	a
                           0000B0   275 	Sstm8s_gpio$GPIO_Init$38 ==.
      008161 7B 0B            [ 1]  276 	ld	a, (0x0b, sp)
      008163 43               [ 1]  277 	cpl	a
      008164 6B 04            [ 1]  278 	ld	(0x04, sp), a
      008166 84               [ 1]  279 	pop	a
                           0000B6   280 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    281 ; genAnd
      008167 14 03            [ 1]  282 	and	a, (0x03, sp)
                                    283 ; genPointerSet
      008169 1E 01            [ 2]  284 	ldw	x, (0x01, sp)
      00816B F7               [ 1]  285 	ld	(x), a
                           0000BB   286 	Sstm8s_gpio$GPIO_Init$40 ==.
                                    287 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    288 ; genPlus
      00816C 93               [ 1]  289 	ldw	x, y
      00816D 5C               [ 1]  290 	incw	x
      00816E 5C               [ 1]  291 	incw	x
      00816F 1F 04            [ 2]  292 	ldw	(0x04, sp), x
                           0000C0   293 	Sstm8s_gpio$GPIO_Init$41 ==.
                                    294 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    295 ; genAnd
      008171 0D 0B            [ 1]  296 	tnz	(0x0b, sp)
      008173 2B 03            [ 1]  297 	jrmi	00272$
      008175 CC 81 9B         [ 2]  298 	jp	00105$
      008178                        299 00272$:
                                    300 ; skipping generated iCode
                           0000C7   301 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    302 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    303 ; genPointerGet
      008178 90 F6            [ 1]  304 	ld	a, (y)
                           0000C9   305 	Sstm8s_gpio$GPIO_Init$43 ==.
                           0000C9   306 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    307 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    308 ; genAnd
      00817A 88               [ 1]  309 	push	a
                           0000CA   310 	Sstm8s_gpio$GPIO_Init$45 ==.
      00817B 7B 0C            [ 1]  311 	ld	a, (0x0c, sp)
      00817D A5 10            [ 1]  312 	bcp	a, #0x10
      00817F 84               [ 1]  313 	pop	a
                           0000CF   314 	Sstm8s_gpio$GPIO_Init$46 ==.
      008180 26 03            [ 1]  315 	jrne	00273$
      008182 CC 81 8C         [ 2]  316 	jp	00102$
      008185                        317 00273$:
                                    318 ; skipping generated iCode
                           0000D4   319 	Sstm8s_gpio$GPIO_Init$47 ==.
                           0000D4   320 	Sstm8s_gpio$GPIO_Init$48 ==.
                                    321 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    322 ; genOr
      008185 1A 0A            [ 1]  323 	or	a, (0x0a, sp)
                                    324 ; genPointerSet
      008187 90 F7            [ 1]  325 	ld	(y), a
                           0000D8   326 	Sstm8s_gpio$GPIO_Init$49 ==.
                                    327 ; genGoto
      008189 CC 81 90         [ 2]  328 	jp	00103$
                                    329 ; genLabel
      00818C                        330 00102$:
                           0000DB   331 	Sstm8s_gpio$GPIO_Init$50 ==.
                           0000DB   332 	Sstm8s_gpio$GPIO_Init$51 ==.
                                    333 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    334 ; genAnd
      00818C 14 03            [ 1]  335 	and	a, (0x03, sp)
                                    336 ; genPointerSet
      00818E 90 F7            [ 1]  337 	ld	(y), a
                           0000DF   338 	Sstm8s_gpio$GPIO_Init$52 ==.
                                    339 ; genLabel
      008190                        340 00103$:
                           0000DF   341 	Sstm8s_gpio$GPIO_Init$53 ==.
                                    342 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    343 ; genPointerGet
      008190 1E 04            [ 2]  344 	ldw	x, (0x04, sp)
      008192 F6               [ 1]  345 	ld	a, (x)
                                    346 ; genOr
      008193 1A 0A            [ 1]  347 	or	a, (0x0a, sp)
                                    348 ; genPointerSet
      008195 1E 04            [ 2]  349 	ldw	x, (0x04, sp)
      008197 F7               [ 1]  350 	ld	(x), a
                           0000E7   351 	Sstm8s_gpio$GPIO_Init$54 ==.
                                    352 ; genGoto
      008198 CC 81 A3         [ 2]  353 	jp	00106$
                                    354 ; genLabel
      00819B                        355 00105$:
                           0000EA   356 	Sstm8s_gpio$GPIO_Init$55 ==.
                           0000EA   357 	Sstm8s_gpio$GPIO_Init$56 ==.
                                    358 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    359 ; genPointerGet
      00819B 1E 04            [ 2]  360 	ldw	x, (0x04, sp)
      00819D F6               [ 1]  361 	ld	a, (x)
                                    362 ; genAnd
      00819E 14 03            [ 1]  363 	and	a, (0x03, sp)
                                    364 ; genPointerSet
      0081A0 1E 04            [ 2]  365 	ldw	x, (0x04, sp)
      0081A2 F7               [ 1]  366 	ld	(x), a
                           0000F2   367 	Sstm8s_gpio$GPIO_Init$57 ==.
                                    368 ; genLabel
      0081A3                        369 00106$:
                           0000F2   370 	Sstm8s_gpio$GPIO_Init$58 ==.
                                    371 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    372 ; genPlus
      0081A3 93               [ 1]  373 	ldw	x, y
      0081A4 1C 00 03         [ 2]  374 	addw	x, #0x0003
                                    375 ; genPointerGet
      0081A7 F6               [ 1]  376 	ld	a, (x)
                           0000F7   377 	Sstm8s_gpio$GPIO_Init$59 ==.
                                    378 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    379 ; genAnd
      0081A8 88               [ 1]  380 	push	a
                           0000F8   381 	Sstm8s_gpio$GPIO_Init$60 ==.
      0081A9 7B 0C            [ 1]  382 	ld	a, (0x0c, sp)
      0081AB A5 40            [ 1]  383 	bcp	a, #0x40
      0081AD 84               [ 1]  384 	pop	a
                           0000FD   385 	Sstm8s_gpio$GPIO_Init$61 ==.
      0081AE 26 03            [ 1]  386 	jrne	00274$
      0081B0 CC 81 B9         [ 2]  387 	jp	00108$
      0081B3                        388 00274$:
                                    389 ; skipping generated iCode
                           000102   390 	Sstm8s_gpio$GPIO_Init$62 ==.
                           000102   391 	Sstm8s_gpio$GPIO_Init$63 ==.
                                    392 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    393 ; genOr
      0081B3 1A 0A            [ 1]  394 	or	a, (0x0a, sp)
                                    395 ; genPointerSet
      0081B5 F7               [ 1]  396 	ld	(x), a
                           000105   397 	Sstm8s_gpio$GPIO_Init$64 ==.
                                    398 ; genGoto
      0081B6 CC 81 BC         [ 2]  399 	jp	00109$
                                    400 ; genLabel
      0081B9                        401 00108$:
                           000108   402 	Sstm8s_gpio$GPIO_Init$65 ==.
                           000108   403 	Sstm8s_gpio$GPIO_Init$66 ==.
                                    404 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    405 ; genAnd
      0081B9 14 03            [ 1]  406 	and	a, (0x03, sp)
                                    407 ; genPointerSet
      0081BB F7               [ 1]  408 	ld	(x), a
                           00010B   409 	Sstm8s_gpio$GPIO_Init$67 ==.
                                    410 ; genLabel
      0081BC                        411 00109$:
                           00010B   412 	Sstm8s_gpio$GPIO_Init$68 ==.
                                    413 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    414 ; genPointerGet
      0081BC 1E 01            [ 2]  415 	ldw	x, (0x01, sp)
      0081BE F6               [ 1]  416 	ld	a, (x)
                           00010E   417 	Sstm8s_gpio$GPIO_Init$69 ==.
                                    418 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    419 ; genAnd
      0081BF 88               [ 1]  420 	push	a
                           00010F   421 	Sstm8s_gpio$GPIO_Init$70 ==.
      0081C0 7B 0C            [ 1]  422 	ld	a, (0x0c, sp)
      0081C2 A5 20            [ 1]  423 	bcp	a, #0x20
      0081C4 84               [ 1]  424 	pop	a
                           000114   425 	Sstm8s_gpio$GPIO_Init$71 ==.
      0081C5 26 03            [ 1]  426 	jrne	00275$
      0081C7 CC 81 D2         [ 2]  427 	jp	00111$
      0081CA                        428 00275$:
                                    429 ; skipping generated iCode
                           000119   430 	Sstm8s_gpio$GPIO_Init$72 ==.
                           000119   431 	Sstm8s_gpio$GPIO_Init$73 ==.
                                    432 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    433 ; genOr
      0081CA 1A 0A            [ 1]  434 	or	a, (0x0a, sp)
                                    435 ; genPointerSet
      0081CC 1E 01            [ 2]  436 	ldw	x, (0x01, sp)
      0081CE F7               [ 1]  437 	ld	(x), a
                           00011E   438 	Sstm8s_gpio$GPIO_Init$74 ==.
                                    439 ; genGoto
      0081CF CC 81 D7         [ 2]  440 	jp	00113$
                                    441 ; genLabel
      0081D2                        442 00111$:
                           000121   443 	Sstm8s_gpio$GPIO_Init$75 ==.
                           000121   444 	Sstm8s_gpio$GPIO_Init$76 ==.
                                    445 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    446 ; genAnd
      0081D2 14 03            [ 1]  447 	and	a, (0x03, sp)
                                    448 ; genPointerSet
      0081D4 1E 01            [ 2]  449 	ldw	x, (0x01, sp)
      0081D6 F7               [ 1]  450 	ld	(x), a
                           000126   451 	Sstm8s_gpio$GPIO_Init$77 ==.
                                    452 ; genLabel
      0081D7                        453 00113$:
                           000126   454 	Sstm8s_gpio$GPIO_Init$78 ==.
                                    455 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
                                    456 ; genEndFunction
      0081D7 5B 05            [ 2]  457 	addw	sp, #5
                           000128   458 	Sstm8s_gpio$GPIO_Init$79 ==.
                           000128   459 	Sstm8s_gpio$GPIO_Init$80 ==.
                           000128   460 	XG$GPIO_Init$0$0 ==.
      0081D9 81               [ 4]  461 	ret
                           000129   462 	Sstm8s_gpio$GPIO_Init$81 ==.
                           000129   463 	Sstm8s_gpio$GPIO_Write$82 ==.
                                    464 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    465 ; genLabel
                                    466 ;	-----------------------------------------
                                    467 ;	 function GPIO_Write
                                    468 ;	-----------------------------------------
                                    469 ;	Register assignment is optimal.
                                    470 ;	Stack space usage: 0 bytes.
      0081DA                        471 _GPIO_Write:
                           000129   472 	Sstm8s_gpio$GPIO_Write$83 ==.
                           000129   473 	Sstm8s_gpio$GPIO_Write$84 ==.
                                    474 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    475 ; genAssign
      0081DA 1E 03            [ 2]  476 	ldw	x, (0x03, sp)
                                    477 ; genPointerSet
      0081DC 7B 05            [ 1]  478 	ld	a, (0x05, sp)
      0081DE F7               [ 1]  479 	ld	(x), a
                                    480 ; genLabel
      0081DF                        481 00101$:
                           00012E   482 	Sstm8s_gpio$GPIO_Write$85 ==.
                                    483 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
                                    484 ; genEndFunction
                           00012E   485 	Sstm8s_gpio$GPIO_Write$86 ==.
                           00012E   486 	XG$GPIO_Write$0$0 ==.
      0081DF 81               [ 4]  487 	ret
                           00012F   488 	Sstm8s_gpio$GPIO_Write$87 ==.
                           00012F   489 	Sstm8s_gpio$GPIO_WriteHigh$88 ==.
                                    490 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    491 ; genLabel
                                    492 ;	-----------------------------------------
                                    493 ;	 function GPIO_WriteHigh
                                    494 ;	-----------------------------------------
                                    495 ;	Register assignment is optimal.
                                    496 ;	Stack space usage: 0 bytes.
      0081E0                        497 _GPIO_WriteHigh:
                           00012F   498 	Sstm8s_gpio$GPIO_WriteHigh$89 ==.
                           00012F   499 	Sstm8s_gpio$GPIO_WriteHigh$90 ==.
                                    500 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    501 ; genAssign
      0081E0 1E 03            [ 2]  502 	ldw	x, (0x03, sp)
                                    503 ; genPointerGet
      0081E2 F6               [ 1]  504 	ld	a, (x)
                                    505 ; genOr
      0081E3 1A 05            [ 1]  506 	or	a, (0x05, sp)
                                    507 ; genPointerSet
      0081E5 F7               [ 1]  508 	ld	(x), a
                                    509 ; genLabel
      0081E6                        510 00101$:
                           000135   511 	Sstm8s_gpio$GPIO_WriteHigh$91 ==.
                                    512 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
                                    513 ; genEndFunction
                           000135   514 	Sstm8s_gpio$GPIO_WriteHigh$92 ==.
                           000135   515 	XG$GPIO_WriteHigh$0$0 ==.
      0081E6 81               [ 4]  516 	ret
                           000136   517 	Sstm8s_gpio$GPIO_WriteHigh$93 ==.
                           000136   518 	Sstm8s_gpio$GPIO_WriteLow$94 ==.
                                    519 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    520 ; genLabel
                                    521 ;	-----------------------------------------
                                    522 ;	 function GPIO_WriteLow
                                    523 ;	-----------------------------------------
                                    524 ;	Register assignment is optimal.
                                    525 ;	Stack space usage: 1 bytes.
      0081E7                        526 _GPIO_WriteLow:
                           000136   527 	Sstm8s_gpio$GPIO_WriteLow$95 ==.
      0081E7 88               [ 1]  528 	push	a
                           000137   529 	Sstm8s_gpio$GPIO_WriteLow$96 ==.
                           000137   530 	Sstm8s_gpio$GPIO_WriteLow$97 ==.
                                    531 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    532 ; genAssign
      0081E8 1E 04            [ 2]  533 	ldw	x, (0x04, sp)
                                    534 ; genPointerGet
      0081EA F6               [ 1]  535 	ld	a, (x)
      0081EB 6B 01            [ 1]  536 	ld	(0x01, sp), a
                                    537 ; genCpl
      0081ED 7B 06            [ 1]  538 	ld	a, (0x06, sp)
      0081EF 43               [ 1]  539 	cpl	a
                                    540 ; genAnd
      0081F0 14 01            [ 1]  541 	and	a, (0x01, sp)
                                    542 ; genPointerSet
      0081F2 F7               [ 1]  543 	ld	(x), a
                                    544 ; genLabel
      0081F3                        545 00101$:
                           000142   546 	Sstm8s_gpio$GPIO_WriteLow$98 ==.
                                    547 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
                                    548 ; genEndFunction
      0081F3 84               [ 1]  549 	pop	a
                           000143   550 	Sstm8s_gpio$GPIO_WriteLow$99 ==.
                           000143   551 	Sstm8s_gpio$GPIO_WriteLow$100 ==.
                           000143   552 	XG$GPIO_WriteLow$0$0 ==.
      0081F4 81               [ 4]  553 	ret
                           000144   554 	Sstm8s_gpio$GPIO_WriteLow$101 ==.
                           000144   555 	Sstm8s_gpio$GPIO_WriteReverse$102 ==.
                                    556 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    557 ; genLabel
                                    558 ;	-----------------------------------------
                                    559 ;	 function GPIO_WriteReverse
                                    560 ;	-----------------------------------------
                                    561 ;	Register assignment is optimal.
                                    562 ;	Stack space usage: 0 bytes.
      0081F5                        563 _GPIO_WriteReverse:
                           000144   564 	Sstm8s_gpio$GPIO_WriteReverse$103 ==.
                           000144   565 	Sstm8s_gpio$GPIO_WriteReverse$104 ==.
                                    566 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    567 ; genAssign
      0081F5 1E 03            [ 2]  568 	ldw	x, (0x03, sp)
                                    569 ; genPointerGet
      0081F7 F6               [ 1]  570 	ld	a, (x)
                                    571 ; genXor
      0081F8 18 05            [ 1]  572 	xor	a, (0x05, sp)
                                    573 ; genPointerSet
      0081FA F7               [ 1]  574 	ld	(x), a
                                    575 ; genLabel
      0081FB                        576 00101$:
                           00014A   577 	Sstm8s_gpio$GPIO_WriteReverse$105 ==.
                                    578 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
                                    579 ; genEndFunction
                           00014A   580 	Sstm8s_gpio$GPIO_WriteReverse$106 ==.
                           00014A   581 	XG$GPIO_WriteReverse$0$0 ==.
      0081FB 81               [ 4]  582 	ret
                           00014B   583 	Sstm8s_gpio$GPIO_WriteReverse$107 ==.
                           00014B   584 	Sstm8s_gpio$GPIO_ReadOutputData$108 ==.
                                    585 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    586 ; genLabel
                                    587 ;	-----------------------------------------
                                    588 ;	 function GPIO_ReadOutputData
                                    589 ;	-----------------------------------------
                                    590 ;	Register assignment is optimal.
                                    591 ;	Stack space usage: 0 bytes.
      0081FC                        592 _GPIO_ReadOutputData:
                           00014B   593 	Sstm8s_gpio$GPIO_ReadOutputData$109 ==.
                           00014B   594 	Sstm8s_gpio$GPIO_ReadOutputData$110 ==.
                                    595 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    596 ; genAssign
      0081FC 1E 03            [ 2]  597 	ldw	x, (0x03, sp)
                                    598 ; genPointerGet
      0081FE F6               [ 1]  599 	ld	a, (x)
                                    600 ; genReturn
                                    601 ; genLabel
      0081FF                        602 00101$:
                           00014E   603 	Sstm8s_gpio$GPIO_ReadOutputData$111 ==.
                                    604 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
                                    605 ; genEndFunction
                           00014E   606 	Sstm8s_gpio$GPIO_ReadOutputData$112 ==.
                           00014E   607 	XG$GPIO_ReadOutputData$0$0 ==.
      0081FF 81               [ 4]  608 	ret
                           00014F   609 	Sstm8s_gpio$GPIO_ReadOutputData$113 ==.
                           00014F   610 	Sstm8s_gpio$GPIO_ReadInputData$114 ==.
                                    611 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    612 ; genLabel
                                    613 ;	-----------------------------------------
                                    614 ;	 function GPIO_ReadInputData
                                    615 ;	-----------------------------------------
                                    616 ;	Register assignment might be sub-optimal.
                                    617 ;	Stack space usage: 0 bytes.
      008200                        618 _GPIO_ReadInputData:
                           00014F   619 	Sstm8s_gpio$GPIO_ReadInputData$115 ==.
                           00014F   620 	Sstm8s_gpio$GPIO_ReadInputData$116 ==.
                                    621 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    622 ; genAssign
      008200 1E 03            [ 2]  623 	ldw	x, (0x03, sp)
                                    624 ; genAssign
                                    625 ; genPointerGet
      008202 E6 01            [ 1]  626 	ld	a, (0x1, x)
                                    627 ; genReturn
                                    628 ; genLabel
      008204                        629 00101$:
                           000153   630 	Sstm8s_gpio$GPIO_ReadInputData$117 ==.
                                    631 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
                                    632 ; genEndFunction
                           000153   633 	Sstm8s_gpio$GPIO_ReadInputData$118 ==.
                           000153   634 	XG$GPIO_ReadInputData$0$0 ==.
      008204 81               [ 4]  635 	ret
                           000154   636 	Sstm8s_gpio$GPIO_ReadInputData$119 ==.
                           000154   637 	Sstm8s_gpio$GPIO_ReadInputPin$120 ==.
                                    638 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    639 ; genLabel
                                    640 ;	-----------------------------------------
                                    641 ;	 function GPIO_ReadInputPin
                                    642 ;	-----------------------------------------
                                    643 ;	Register assignment might be sub-optimal.
                                    644 ;	Stack space usage: 0 bytes.
      008205                        645 _GPIO_ReadInputPin:
                           000154   646 	Sstm8s_gpio$GPIO_ReadInputPin$121 ==.
                           000154   647 	Sstm8s_gpio$GPIO_ReadInputPin$122 ==.
                                    648 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    649 ; genAssign
      008205 1E 03            [ 2]  650 	ldw	x, (0x03, sp)
                                    651 ; genAssign
                                    652 ; genPointerGet
      008207 E6 01            [ 1]  653 	ld	a, (0x1, x)
                                    654 ; genAnd
      008209 14 05            [ 1]  655 	and	a, (0x05, sp)
                                    656 ; genReturn
                                    657 ; genLabel
      00820B                        658 00101$:
                           00015A   659 	Sstm8s_gpio$GPIO_ReadInputPin$123 ==.
                                    660 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
                                    661 ; genEndFunction
                           00015A   662 	Sstm8s_gpio$GPIO_ReadInputPin$124 ==.
                           00015A   663 	XG$GPIO_ReadInputPin$0$0 ==.
      00820B 81               [ 4]  664 	ret
                           00015B   665 	Sstm8s_gpio$GPIO_ReadInputPin$125 ==.
                           00015B   666 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$126 ==.
                                    667 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    668 ; genLabel
                                    669 ;	-----------------------------------------
                                    670 ;	 function GPIO_ExternalPullUpConfig
                                    671 ;	-----------------------------------------
                                    672 ;	Register assignment might be sub-optimal.
                                    673 ;	Stack space usage: 1 bytes.
      00820C                        674 _GPIO_ExternalPullUpConfig:
                           00015B   675 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$127 ==.
      00820C 88               [ 1]  676 	push	a
                           00015C   677 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$128 ==.
                           00015C   678 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129 ==.
                                    679 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
                                    680 ; genIfx
      00820D 0D 06            [ 1]  681 	tnz	(0x06, sp)
      00820F 27 03            [ 1]  682 	jreq	00133$
      008211 CC 82 23         [ 2]  683 	jp	00107$
      008214                        684 00133$:
                                    685 ; skipping iCode since result will be rematerialized
                                    686 ; skipping iCode since result will be rematerialized
                                    687 ; genIPush
      008214 4B E4            [ 1]  688 	push	#0xe4
                           000165   689 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$130 ==.
      008216 5F               [ 1]  690 	clrw	x
      008217 89               [ 2]  691 	pushw	x
                           000167   692 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$131 ==.
      008218 4B 00            [ 1]  693 	push	#0x00
                           000169   694 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$132 ==.
                                    695 ; genIPush
      00821A 4B 24            [ 1]  696 	push	#<(___str_0 + 0)
                           00016B   697 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$133 ==.
      00821C 4B 80            [ 1]  698 	push	#((___str_0 + 0) >> 8)
                           00016D   699 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$134 ==.
                                    700 ; genCall
      00821E CD 80 AD         [ 4]  701 	call	_assert_failed
      008221 5B 06            [ 2]  702 	addw	sp, #6
                           000172   703 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$135 ==.
                                    704 ; genLabel
      008223                        705 00107$:
                           000172   706 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136 ==.
                                    707 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    708 ; genIfx
      008223 0D 07            [ 1]  709 	tnz	(0x07, sp)
      008225 26 03            [ 1]  710 	jrne	00134$
      008227 CC 82 41         [ 2]  711 	jp	00109$
      00822A                        712 00134$:
                                    713 ; genCmpEQorNE
      00822A 7B 07            [ 1]  714 	ld	a, (0x07, sp)
      00822C 4A               [ 1]  715 	dec	a
      00822D 26 03            [ 1]  716 	jrne	00136$
      00822F CC 82 41         [ 2]  717 	jp	00109$
      008232                        718 00136$:
                           000181   719 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$137 ==.
                                    720 ; skipping generated iCode
                                    721 ; skipping iCode since result will be rematerialized
                                    722 ; skipping iCode since result will be rematerialized
                                    723 ; genIPush
      008232 4B E5            [ 1]  724 	push	#0xe5
                           000183   725 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$138 ==.
      008234 5F               [ 1]  726 	clrw	x
      008235 89               [ 2]  727 	pushw	x
                           000185   728 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$139 ==.
      008236 4B 00            [ 1]  729 	push	#0x00
                           000187   730 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$140 ==.
                                    731 ; genIPush
      008238 4B 24            [ 1]  732 	push	#<(___str_0 + 0)
                           000189   733 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$141 ==.
      00823A 4B 80            [ 1]  734 	push	#((___str_0 + 0) >> 8)
                           00018B   735 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$142 ==.
                                    736 ; genCall
      00823C CD 80 AD         [ 4]  737 	call	_assert_failed
      00823F 5B 06            [ 2]  738 	addw	sp, #6
                           000190   739 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$143 ==.
                                    740 ; genLabel
      008241                        741 00109$:
                           000190   742 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144 ==.
                                    743 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    744 ; genAssign
      008241 1E 04            [ 2]  745 	ldw	x, (0x04, sp)
                                    746 ; genPlus
      008243 1C 00 03         [ 2]  747 	addw	x, #0x0003
                                    748 ; genPointerGet
      008246 F6               [ 1]  749 	ld	a, (x)
                           000196   750 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145 ==.
                                    751 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    752 ; genIfx
      008247 0D 07            [ 1]  753 	tnz	(0x07, sp)
      008249 26 03            [ 1]  754 	jrne	00138$
      00824B CC 82 54         [ 2]  755 	jp	00102$
      00824E                        756 00138$:
                           00019D   757 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$146 ==.
                           00019D   758 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147 ==.
                                    759 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    760 ; genOr
      00824E 1A 06            [ 1]  761 	or	a, (0x06, sp)
                                    762 ; genPointerSet
      008250 F7               [ 1]  763 	ld	(x), a
                           0001A0   764 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$148 ==.
                                    765 ; genGoto
      008251 CC 82 5E         [ 2]  766 	jp	00104$
                                    767 ; genLabel
      008254                        768 00102$:
                           0001A3   769 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$149 ==.
                           0001A3   770 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150 ==.
                                    771 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    772 ; genCpl
      008254 88               [ 1]  773 	push	a
                           0001A4   774 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$151 ==.
      008255 7B 07            [ 1]  775 	ld	a, (0x07, sp)
      008257 43               [ 1]  776 	cpl	a
      008258 6B 02            [ 1]  777 	ld	(0x02, sp), a
      00825A 84               [ 1]  778 	pop	a
                           0001AA   779 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$152 ==.
                                    780 ; genAnd
      00825B 14 01            [ 1]  781 	and	a, (0x01, sp)
                                    782 ; genPointerSet
      00825D F7               [ 1]  783 	ld	(x), a
                           0001AD   784 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$153 ==.
                                    785 ; genLabel
      00825E                        786 00104$:
                           0001AD   787 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154 ==.
                                    788 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
                                    789 ; genEndFunction
      00825E 84               [ 1]  790 	pop	a
                           0001AE   791 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$155 ==.
                           0001AE   792 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$156 ==.
                           0001AE   793 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      00825F 81               [ 4]  794 	ret
                           0001AF   795 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$157 ==.
                                    796 	.area CODE
                                    797 	.area CONST
                           000000   798 Fstm8s_gpio$__str_0$0_0$0 == .
                                    799 	.area CONST
      008024                        800 ___str_0:
      008024 2E 2F 53 54 4D 38 53   801 	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
             5F 53 74 64 50 65 72
             69 70 68 5F 44 72 69
             76 65 72 2F 73 72 63
             2F 73 74 6D 38 73 5F
             67 70 69 6F 2E 63
      00804D 00                     802 	.db 0x00
                                    803 	.area CODE
                                    804 	.area INITIALIZER
                                    805 	.area CABS (ABS)
                                    806 
                                    807 	.area .debug_line (NOLOAD)
      000423 00 00 02 90            808 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000427                        809 Ldebug_line_start:
      000427 00 02                  810 	.dw	2
      000429 00 00 00 CD            811 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00042D 01                     812 	.db	1
      00042E 01                     813 	.db	1
      00042F FB                     814 	.db	-5
      000430 0F                     815 	.db	15
      000431 0A                     816 	.db	10
      000432 00                     817 	.db	0
      000433 01                     818 	.db	1
      000434 01                     819 	.db	1
      000435 01                     820 	.db	1
      000436 01                     821 	.db	1
      000437 00                     822 	.db	0
      000438 00                     823 	.db	0
      000439 00                     824 	.db	0
      00043A 01                     825 	.db	1
      00043B 2F 75 73 72 2F 6C 6F   826 	.ascii "/usr/local/bin/../share/sdcc/include/stm8"
             63 61 6C 2F 62 69 6E
             2F 2E 2E 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65 2F 73 74 6D 38
      000464 00                     827 	.db	0
      000465 2F 75 73 72 2F 6C 6F   828 	.ascii "/usr/local/share/sdcc/include/stm8"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65 2F 73 74 6D 38
      000487 00                     829 	.db	0
      000488 2F 75 73 72 2F 6C 6F   830 	.ascii "/usr/local/bin/../share/sdcc/include"
             63 61 6C 2F 62 69 6E
             2F 2E 2E 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65
      0004AC 00                     831 	.db	0
      0004AD 2F 75 73 72 2F 6C 6F   832 	.ascii "/usr/local/share/sdcc/include"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65
      0004CA 00                     833 	.db	0
      0004CB 00                     834 	.db	0
      0004CC 2E 2F 53 54 4D 38 53   835 	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
             5F 53 74 64 50 65 72
             69 70 68 5F 44 72 69
             76 65 72 2F 73 72 63
             2F 73 74 6D 38 73 5F
             67 70 69 6F 2E 63
      0004F5 00                     836 	.db	0
      0004F6 00                     837 	.uleb128	0
      0004F7 00                     838 	.uleb128	0
      0004F8 00                     839 	.uleb128	0
      0004F9 00                     840 	.db	0
      0004FA                        841 Ldebug_line_stmt:
      0004FA 00                     842 	.db	0
      0004FB 05                     843 	.uleb128	5
      0004FC 02                     844 	.db	2
      0004FD 00 00 80 B1            845 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      000501 03                     846 	.db	3
      000502 34                     847 	.sleb128	52
      000503 01                     848 	.db	1
      000504 09                     849 	.db	9
      000505 00 00                  850 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      000507 03                     851 	.db	3
      000508 02                     852 	.sleb128	2
      000509 01                     853 	.db	1
      00050A 09                     854 	.db	9
      00050B 00 04                  855 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      00050D 03                     856 	.db	3
      00050E 01                     857 	.sleb128	1
      00050F 01                     858 	.db	1
      000510 09                     859 	.db	9
      000511 00 04                  860 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      000513 03                     861 	.db	3
      000514 01                     862 	.sleb128	1
      000515 01                     863 	.db	1
      000516 09                     864 	.db	9
      000517 00 05                  865 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      000519 03                     866 	.db	3
      00051A 01                     867 	.sleb128	1
      00051B 01                     868 	.db	1
      00051C 09                     869 	.db	9
      00051D 00 05                  870 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      00051F 03                     871 	.db	3
      000520 01                     872 	.sleb128	1
      000521 01                     873 	.db	1
      000522 09                     874 	.db	9
      000523 00 01                  875 	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      000525 00                     876 	.db	0
      000526 01                     877 	.uleb128	1
      000527 01                     878 	.db	1
      000528 00                     879 	.db	0
      000529 05                     880 	.uleb128	5
      00052A 02                     881 	.db	2
      00052B 00 00 80 C4            882 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      00052F 03                     883 	.db	3
      000530 C6 00                  884 	.sleb128	70
      000532 01                     885 	.db	1
      000533 09                     886 	.db	9
      000534 00 02                  887 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
      000536 03                     888 	.db	3
      000537 06                     889 	.sleb128	6
      000538 01                     890 	.db	1
      000539 09                     891 	.db	9
      00053A 00 79                  892 	.dw	Sstm8s_gpio$GPIO_Init$30-Sstm8s_gpio$GPIO_Init$12
      00053C 03                     893 	.db	3
      00053D 01                     894 	.sleb128	1
      00053E 01                     895 	.db	1
      00053F 09                     896 	.db	9
      000540 00 16                  897 	.dw	Sstm8s_gpio$GPIO_Init$37-Sstm8s_gpio$GPIO_Init$30
      000542 03                     898 	.db	3
      000543 03                     899 	.sleb128	3
      000544 01                     900 	.db	1
      000545 09                     901 	.db	9
      000546 00 17                  902 	.dw	Sstm8s_gpio$GPIO_Init$40-Sstm8s_gpio$GPIO_Init$37
      000548 03                     903 	.db	3
      000549 11                     904 	.sleb128	17
      00054A 01                     905 	.db	1
      00054B 09                     906 	.db	9
      00054C 00 05                  907 	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$40
      00054E 03                     908 	.db	3
      00054F 75                     909 	.sleb128	-11
      000550 01                     910 	.db	1
      000551 09                     911 	.db	9
      000552 00 07                  912 	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$41
      000554 03                     913 	.db	3
      000555 04                     914 	.sleb128	4
      000556 01                     915 	.db	1
      000557 09                     916 	.db	9
      000558 00 02                  917 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
      00055A 03                     918 	.db	3
      00055B 7E                     919 	.sleb128	-2
      00055C 01                     920 	.db	1
      00055D 09                     921 	.db	9
      00055E 00 0B                  922 	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
      000560 03                     923 	.db	3
      000561 02                     924 	.sleb128	2
      000562 01                     925 	.db	1
      000563 09                     926 	.db	9
      000564 00 07                  927 	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
      000566 03                     928 	.db	3
      000567 04                     929 	.sleb128	4
      000568 01                     930 	.db	1
      000569 09                     931 	.db	9
      00056A 00 04                  932 	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
      00056C 03                     933 	.db	3
      00056D 03                     934 	.sleb128	3
      00056E 01                     935 	.db	1
      00056F 09                     936 	.db	9
      000570 00 0B                  937 	.dw	Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$53
      000572 03                     938 	.db	3
      000573 05                     939 	.sleb128	5
      000574 01                     940 	.db	1
      000575 09                     941 	.db	9
      000576 00 08                  942 	.dw	Sstm8s_gpio$GPIO_Init$58-Sstm8s_gpio$GPIO_Init$56
      000578 03                     943 	.db	3
      000579 09                     944 	.sleb128	9
      00057A 01                     945 	.db	1
      00057B 09                     946 	.db	9
      00057C 00 05                  947 	.dw	Sstm8s_gpio$GPIO_Init$59-Sstm8s_gpio$GPIO_Init$58
      00057E 03                     948 	.db	3
      00057F 7E                     949 	.sleb128	-2
      000580 01                     950 	.db	1
      000581 09                     951 	.db	9
      000582 00 0B                  952 	.dw	Sstm8s_gpio$GPIO_Init$63-Sstm8s_gpio$GPIO_Init$59
      000584 03                     953 	.db	3
      000585 02                     954 	.sleb128	2
      000586 01                     955 	.db	1
      000587 09                     956 	.db	9
      000588 00 06                  957 	.dw	Sstm8s_gpio$GPIO_Init$66-Sstm8s_gpio$GPIO_Init$63
      00058A 03                     958 	.db	3
      00058B 04                     959 	.sleb128	4
      00058C 01                     960 	.db	1
      00058D 09                     961 	.db	9
      00058E 00 03                  962 	.dw	Sstm8s_gpio$GPIO_Init$68-Sstm8s_gpio$GPIO_Init$66
      000590 03                     963 	.db	3
      000591 5D                     964 	.sleb128	-35
      000592 01                     965 	.db	1
      000593 09                     966 	.db	9
      000594 00 03                  967 	.dw	Sstm8s_gpio$GPIO_Init$69-Sstm8s_gpio$GPIO_Init$68
      000596 03                     968 	.db	3
      000597 2A                     969 	.sleb128	42
      000598 01                     970 	.db	1
      000599 09                     971 	.db	9
      00059A 00 0B                  972 	.dw	Sstm8s_gpio$GPIO_Init$73-Sstm8s_gpio$GPIO_Init$69
      00059C 03                     973 	.db	3
      00059D 02                     974 	.sleb128	2
      00059E 01                     975 	.db	1
      00059F 09                     976 	.db	9
      0005A0 00 08                  977 	.dw	Sstm8s_gpio$GPIO_Init$76-Sstm8s_gpio$GPIO_Init$73
      0005A2 03                     978 	.db	3
      0005A3 04                     979 	.sleb128	4
      0005A4 01                     980 	.db	1
      0005A5 09                     981 	.db	9
      0005A6 00 05                  982 	.dw	Sstm8s_gpio$GPIO_Init$78-Sstm8s_gpio$GPIO_Init$76
      0005A8 03                     983 	.db	3
      0005A9 02                     984 	.sleb128	2
      0005AA 01                     985 	.db	1
      0005AB 09                     986 	.db	9
      0005AC 00 03                  987 	.dw	1+Sstm8s_gpio$GPIO_Init$80-Sstm8s_gpio$GPIO_Init$78
      0005AE 00                     988 	.db	0
      0005AF 01                     989 	.uleb128	1
      0005B0 01                     990 	.db	1
      0005B1 00                     991 	.db	0
      0005B2 05                     992 	.uleb128	5
      0005B3 02                     993 	.db	2
      0005B4 00 00 81 DA            994 	.dw	0,(Sstm8s_gpio$GPIO_Write$82)
      0005B8 03                     995 	.db	3
      0005B9 8C 01                  996 	.sleb128	140
      0005BB 01                     997 	.db	1
      0005BC 09                     998 	.db	9
      0005BD 00 00                  999 	.dw	Sstm8s_gpio$GPIO_Write$84-Sstm8s_gpio$GPIO_Write$82
      0005BF 03                    1000 	.db	3
      0005C0 02                    1001 	.sleb128	2
      0005C1 01                    1002 	.db	1
      0005C2 09                    1003 	.db	9
      0005C3 00 05                 1004 	.dw	Sstm8s_gpio$GPIO_Write$85-Sstm8s_gpio$GPIO_Write$84
      0005C5 03                    1005 	.db	3
      0005C6 01                    1006 	.sleb128	1
      0005C7 01                    1007 	.db	1
      0005C8 09                    1008 	.db	9
      0005C9 00 01                 1009 	.dw	1+Sstm8s_gpio$GPIO_Write$86-Sstm8s_gpio$GPIO_Write$85
      0005CB 00                    1010 	.db	0
      0005CC 01                    1011 	.uleb128	1
      0005CD 01                    1012 	.db	1
      0005CE 00                    1013 	.db	0
      0005CF 05                    1014 	.uleb128	5
      0005D0 02                    1015 	.db	2
      0005D1 00 00 81 E0           1016 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$88)
      0005D5 03                    1017 	.db	3
      0005D6 99 01                 1018 	.sleb128	153
      0005D8 01                    1019 	.db	1
      0005D9 09                    1020 	.db	9
      0005DA 00 00                 1021 	.dw	Sstm8s_gpio$GPIO_WriteHigh$90-Sstm8s_gpio$GPIO_WriteHigh$88
      0005DC 03                    1022 	.db	3
      0005DD 02                    1023 	.sleb128	2
      0005DE 01                    1024 	.db	1
      0005DF 09                    1025 	.db	9
      0005E0 00 06                 1026 	.dw	Sstm8s_gpio$GPIO_WriteHigh$91-Sstm8s_gpio$GPIO_WriteHigh$90
      0005E2 03                    1027 	.db	3
      0005E3 01                    1028 	.sleb128	1
      0005E4 01                    1029 	.db	1
      0005E5 09                    1030 	.db	9
      0005E6 00 01                 1031 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$92-Sstm8s_gpio$GPIO_WriteHigh$91
      0005E8 00                    1032 	.db	0
      0005E9 01                    1033 	.uleb128	1
      0005EA 01                    1034 	.db	1
      0005EB 00                    1035 	.db	0
      0005EC 05                    1036 	.uleb128	5
      0005ED 02                    1037 	.db	2
      0005EE 00 00 81 E7           1038 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$94)
      0005F2 03                    1039 	.db	3
      0005F3 A6 01                 1040 	.sleb128	166
      0005F5 01                    1041 	.db	1
      0005F6 09                    1042 	.db	9
      0005F7 00 01                 1043 	.dw	Sstm8s_gpio$GPIO_WriteLow$97-Sstm8s_gpio$GPIO_WriteLow$94
      0005F9 03                    1044 	.db	3
      0005FA 02                    1045 	.sleb128	2
      0005FB 01                    1046 	.db	1
      0005FC 09                    1047 	.db	9
      0005FD 00 0B                 1048 	.dw	Sstm8s_gpio$GPIO_WriteLow$98-Sstm8s_gpio$GPIO_WriteLow$97
      0005FF 03                    1049 	.db	3
      000600 01                    1050 	.sleb128	1
      000601 01                    1051 	.db	1
      000602 09                    1052 	.db	9
      000603 00 02                 1053 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$100-Sstm8s_gpio$GPIO_WriteLow$98
      000605 00                    1054 	.db	0
      000606 01                    1055 	.uleb128	1
      000607 01                    1056 	.db	1
      000608 00                    1057 	.db	0
      000609 05                    1058 	.uleb128	5
      00060A 02                    1059 	.db	2
      00060B 00 00 81 F5           1060 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$102)
      00060F 03                    1061 	.db	3
      000610 B3 01                 1062 	.sleb128	179
      000612 01                    1063 	.db	1
      000613 09                    1064 	.db	9
      000614 00 00                 1065 	.dw	Sstm8s_gpio$GPIO_WriteReverse$104-Sstm8s_gpio$GPIO_WriteReverse$102
      000616 03                    1066 	.db	3
      000617 02                    1067 	.sleb128	2
      000618 01                    1068 	.db	1
      000619 09                    1069 	.db	9
      00061A 00 06                 1070 	.dw	Sstm8s_gpio$GPIO_WriteReverse$105-Sstm8s_gpio$GPIO_WriteReverse$104
      00061C 03                    1071 	.db	3
      00061D 01                    1072 	.sleb128	1
      00061E 01                    1073 	.db	1
      00061F 09                    1074 	.db	9
      000620 00 01                 1075 	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$106-Sstm8s_gpio$GPIO_WriteReverse$105
      000622 00                    1076 	.db	0
      000623 01                    1077 	.uleb128	1
      000624 01                    1078 	.db	1
      000625 00                    1079 	.db	0
      000626 05                    1080 	.uleb128	5
      000627 02                    1081 	.db	2
      000628 00 00 81 FC           1082 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$108)
      00062C 03                    1083 	.db	3
      00062D BE 01                 1084 	.sleb128	190
      00062F 01                    1085 	.db	1
      000630 09                    1086 	.db	9
      000631 00 00                 1087 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$110-Sstm8s_gpio$GPIO_ReadOutputData$108
      000633 03                    1088 	.db	3
      000634 02                    1089 	.sleb128	2
      000635 01                    1090 	.db	1
      000636 09                    1091 	.db	9
      000637 00 03                 1092 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$111-Sstm8s_gpio$GPIO_ReadOutputData$110
      000639 03                    1093 	.db	3
      00063A 01                    1094 	.sleb128	1
      00063B 01                    1095 	.db	1
      00063C 09                    1096 	.db	9
      00063D 00 01                 1097 	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$112-Sstm8s_gpio$GPIO_ReadOutputData$111
      00063F 00                    1098 	.db	0
      000640 01                    1099 	.uleb128	1
      000641 01                    1100 	.db	1
      000642 00                    1101 	.db	0
      000643 05                    1102 	.uleb128	5
      000644 02                    1103 	.db	2
      000645 00 00 82 00           1104 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$114)
      000649 03                    1105 	.db	3
      00064A C9 01                 1106 	.sleb128	201
      00064C 01                    1107 	.db	1
      00064D 09                    1108 	.db	9
      00064E 00 00                 1109 	.dw	Sstm8s_gpio$GPIO_ReadInputData$116-Sstm8s_gpio$GPIO_ReadInputData$114
      000650 03                    1110 	.db	3
      000651 02                    1111 	.sleb128	2
      000652 01                    1112 	.db	1
      000653 09                    1113 	.db	9
      000654 00 04                 1114 	.dw	Sstm8s_gpio$GPIO_ReadInputData$117-Sstm8s_gpio$GPIO_ReadInputData$116
      000656 03                    1115 	.db	3
      000657 01                    1116 	.sleb128	1
      000658 01                    1117 	.db	1
      000659 09                    1118 	.db	9
      00065A 00 01                 1119 	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$118-Sstm8s_gpio$GPIO_ReadInputData$117
      00065C 00                    1120 	.db	0
      00065D 01                    1121 	.uleb128	1
      00065E 01                    1122 	.db	1
      00065F 00                    1123 	.db	0
      000660 05                    1124 	.uleb128	5
      000661 02                    1125 	.db	2
      000662 00 00 82 05           1126 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$120)
      000666 03                    1127 	.db	3
      000667 D4 01                 1128 	.sleb128	212
      000669 01                    1129 	.db	1
      00066A 09                    1130 	.db	9
      00066B 00 00                 1131 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$122-Sstm8s_gpio$GPIO_ReadInputPin$120
      00066D 03                    1132 	.db	3
      00066E 02                    1133 	.sleb128	2
      00066F 01                    1134 	.db	1
      000670 09                    1135 	.db	9
      000671 00 06                 1136 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$123-Sstm8s_gpio$GPIO_ReadInputPin$122
      000673 03                    1137 	.db	3
      000674 01                    1138 	.sleb128	1
      000675 01                    1139 	.db	1
      000676 09                    1140 	.db	9
      000677 00 01                 1141 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$124-Sstm8s_gpio$GPIO_ReadInputPin$123
      000679 00                    1142 	.db	0
      00067A 01                    1143 	.uleb128	1
      00067B 01                    1144 	.db	1
      00067C 00                    1145 	.db	0
      00067D 05                    1146 	.uleb128	5
      00067E 02                    1147 	.db	2
      00067F 00 00 82 0C           1148 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$126)
      000683 03                    1149 	.db	3
      000684 E0 01                 1150 	.sleb128	224
      000686 01                    1151 	.db	1
      000687 09                    1152 	.db	9
      000688 00 01                 1153 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129-Sstm8s_gpio$GPIO_ExternalPullUpConfig$126
      00068A 03                    1154 	.db	3
      00068B 03                    1155 	.sleb128	3
      00068C 01                    1156 	.db	1
      00068D 09                    1157 	.db	9
      00068E 00 16                 1158 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136-Sstm8s_gpio$GPIO_ExternalPullUpConfig$129
      000690 03                    1159 	.db	3
      000691 01                    1160 	.sleb128	1
      000692 01                    1161 	.db	1
      000693 09                    1162 	.db	9
      000694 00 1E                 1163 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144-Sstm8s_gpio$GPIO_ExternalPullUpConfig$136
      000696 03                    1164 	.db	3
      000697 04                    1165 	.sleb128	4
      000698 01                    1166 	.db	1
      000699 09                    1167 	.db	9
      00069A 00 06                 1168 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145-Sstm8s_gpio$GPIO_ExternalPullUpConfig$144
      00069C 03                    1169 	.db	3
      00069D 7E                    1170 	.sleb128	-2
      00069E 01                    1171 	.db	1
      00069F 09                    1172 	.db	9
      0006A0 00 07                 1173 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147-Sstm8s_gpio$GPIO_ExternalPullUpConfig$145
      0006A2 03                    1174 	.db	3
      0006A3 02                    1175 	.sleb128	2
      0006A4 01                    1176 	.db	1
      0006A5 09                    1177 	.db	9
      0006A6 00 06                 1178 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150-Sstm8s_gpio$GPIO_ExternalPullUpConfig$147
      0006A8 03                    1179 	.db	3
      0006A9 03                    1180 	.sleb128	3
      0006AA 01                    1181 	.db	1
      0006AB 09                    1182 	.db	9
      0006AC 00 0A                 1183 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154-Sstm8s_gpio$GPIO_ExternalPullUpConfig$150
      0006AE 03                    1184 	.db	3
      0006AF 02                    1185 	.sleb128	2
      0006B0 01                    1186 	.db	1
      0006B1 09                    1187 	.db	9
      0006B2 00 02                 1188 	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$156-Sstm8s_gpio$GPIO_ExternalPullUpConfig$154
      0006B4 00                    1189 	.db	0
      0006B5 01                    1190 	.uleb128	1
      0006B6 01                    1191 	.db	1
      0006B7                       1192 Ldebug_line_end:
                                   1193 
                                   1194 	.area .debug_loc (NOLOAD)
      00028C                       1195 Ldebug_loc_start:
      00028C 00 00 82 5F           1196 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      000290 00 00 82 60           1197 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$157)
      000294 00 02                 1198 	.dw	2
      000296 78                    1199 	.db	120
      000297 01                    1200 	.sleb128	1
      000298 00 00 82 5B           1201 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      00029C 00 00 82 5F           1202 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      0002A0 00 02                 1203 	.dw	2
      0002A2 78                    1204 	.db	120
      0002A3 02                    1205 	.sleb128	2
      0002A4 00 00 82 55           1206 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      0002A8 00 00 82 5B           1207 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      0002AC 00 02                 1208 	.dw	2
      0002AE 78                    1209 	.db	120
      0002AF 03                    1210 	.sleb128	3
      0002B0 00 00 82 41           1211 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      0002B4 00 00 82 55           1212 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      0002B8 00 02                 1213 	.dw	2
      0002BA 78                    1214 	.db	120
      0002BB 02                    1215 	.sleb128	2
      0002BC 00 00 82 3C           1216 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      0002C0 00 00 82 41           1217 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      0002C4 00 02                 1218 	.dw	2
      0002C6 78                    1219 	.db	120
      0002C7 08                    1220 	.sleb128	8
      0002C8 00 00 82 3A           1221 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      0002CC 00 00 82 3C           1222 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      0002D0 00 02                 1223 	.dw	2
      0002D2 78                    1224 	.db	120
      0002D3 07                    1225 	.sleb128	7
      0002D4 00 00 82 38           1226 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      0002D8 00 00 82 3A           1227 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      0002DC 00 02                 1228 	.dw	2
      0002DE 78                    1229 	.db	120
      0002DF 06                    1230 	.sleb128	6
      0002E0 00 00 82 36           1231 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      0002E4 00 00 82 38           1232 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      0002E8 00 02                 1233 	.dw	2
      0002EA 78                    1234 	.db	120
      0002EB 05                    1235 	.sleb128	5
      0002EC 00 00 82 34           1236 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      0002F0 00 00 82 36           1237 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      0002F4 00 02                 1238 	.dw	2
      0002F6 78                    1239 	.db	120
      0002F7 03                    1240 	.sleb128	3
      0002F8 00 00 82 32           1241 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      0002FC 00 00 82 34           1242 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      000300 00 02                 1243 	.dw	2
      000302 78                    1244 	.db	120
      000303 02                    1245 	.sleb128	2
      000304 00 00 82 23           1246 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      000308 00 00 82 32           1247 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      00030C 00 02                 1248 	.dw	2
      00030E 78                    1249 	.db	120
      00030F 02                    1250 	.sleb128	2
      000310 00 00 82 1E           1251 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      000314 00 00 82 23           1252 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      000318 00 02                 1253 	.dw	2
      00031A 78                    1254 	.db	120
      00031B 08                    1255 	.sleb128	8
      00031C 00 00 82 1C           1256 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      000320 00 00 82 1E           1257 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      000324 00 02                 1258 	.dw	2
      000326 78                    1259 	.db	120
      000327 07                    1260 	.sleb128	7
      000328 00 00 82 1A           1261 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      00032C 00 00 82 1C           1262 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      000330 00 02                 1263 	.dw	2
      000332 78                    1264 	.db	120
      000333 06                    1265 	.sleb128	6
      000334 00 00 82 18           1266 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      000338 00 00 82 1A           1267 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      00033C 00 02                 1268 	.dw	2
      00033E 78                    1269 	.db	120
      00033F 05                    1270 	.sleb128	5
      000340 00 00 82 16           1271 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      000344 00 00 82 18           1272 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      000348 00 02                 1273 	.dw	2
      00034A 78                    1274 	.db	120
      00034B 03                    1275 	.sleb128	3
      00034C 00 00 82 0D           1276 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      000350 00 00 82 16           1277 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      000354 00 02                 1278 	.dw	2
      000356 78                    1279 	.db	120
      000357 02                    1280 	.sleb128	2
      000358 00 00 82 0C           1281 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
      00035C 00 00 82 0D           1282 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      000360 00 02                 1283 	.dw	2
      000362 78                    1284 	.db	120
      000363 01                    1285 	.sleb128	1
      000364 00 00 00 00           1286 	.dw	0,0
      000368 00 00 00 00           1287 	.dw	0,0
      00036C 00 00 82 05           1288 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
      000370 00 00 82 0C           1289 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$125)
      000374 00 02                 1290 	.dw	2
      000376 78                    1291 	.db	120
      000377 01                    1292 	.sleb128	1
      000378 00 00 00 00           1293 	.dw	0,0
      00037C 00 00 00 00           1294 	.dw	0,0
      000380 00 00 82 00           1295 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
      000384 00 00 82 05           1296 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$119)
      000388 00 02                 1297 	.dw	2
      00038A 78                    1298 	.db	120
      00038B 01                    1299 	.sleb128	1
      00038C 00 00 00 00           1300 	.dw	0,0
      000390 00 00 00 00           1301 	.dw	0,0
      000394 00 00 81 FC           1302 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
      000398 00 00 82 00           1303 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$113)
      00039C 00 02                 1304 	.dw	2
      00039E 78                    1305 	.db	120
      00039F 01                    1306 	.sleb128	1
      0003A0 00 00 00 00           1307 	.dw	0,0
      0003A4 00 00 00 00           1308 	.dw	0,0
      0003A8 00 00 81 F5           1309 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
      0003AC 00 00 81 FC           1310 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$107)
      0003B0 00 02                 1311 	.dw	2
      0003B2 78                    1312 	.db	120
      0003B3 01                    1313 	.sleb128	1
      0003B4 00 00 00 00           1314 	.dw	0,0
      0003B8 00 00 00 00           1315 	.dw	0,0
      0003BC 00 00 81 F4           1316 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      0003C0 00 00 81 F5           1317 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$101)
      0003C4 00 02                 1318 	.dw	2
      0003C6 78                    1319 	.db	120
      0003C7 01                    1320 	.sleb128	1
      0003C8 00 00 81 E8           1321 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      0003CC 00 00 81 F4           1322 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      0003D0 00 02                 1323 	.dw	2
      0003D2 78                    1324 	.db	120
      0003D3 02                    1325 	.sleb128	2
      0003D4 00 00 81 E7           1326 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
      0003D8 00 00 81 E8           1327 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      0003DC 00 02                 1328 	.dw	2
      0003DE 78                    1329 	.db	120
      0003DF 01                    1330 	.sleb128	1
      0003E0 00 00 00 00           1331 	.dw	0,0
      0003E4 00 00 00 00           1332 	.dw	0,0
      0003E8 00 00 81 E0           1333 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
      0003EC 00 00 81 E7           1334 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$93)
      0003F0 00 02                 1335 	.dw	2
      0003F2 78                    1336 	.db	120
      0003F3 01                    1337 	.sleb128	1
      0003F4 00 00 00 00           1338 	.dw	0,0
      0003F8 00 00 00 00           1339 	.dw	0,0
      0003FC 00 00 81 DA           1340 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
      000400 00 00 81 E0           1341 	.dw	0,(Sstm8s_gpio$GPIO_Write$87)
      000404 00 02                 1342 	.dw	2
      000406 78                    1343 	.db	120
      000407 01                    1344 	.sleb128	1
      000408 00 00 00 00           1345 	.dw	0,0
      00040C 00 00 00 00           1346 	.dw	0,0
      000410 00 00 81 D9           1347 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      000414 00 00 81 DA           1348 	.dw	0,(Sstm8s_gpio$GPIO_Init$81)
      000418 00 02                 1349 	.dw	2
      00041A 78                    1350 	.db	120
      00041B 01                    1351 	.sleb128	1
      00041C 00 00 81 C5           1352 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      000420 00 00 81 D9           1353 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      000424 00 02                 1354 	.dw	2
      000426 78                    1355 	.db	120
      000427 06                    1356 	.sleb128	6
      000428 00 00 81 C0           1357 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      00042C 00 00 81 C5           1358 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      000430 00 02                 1359 	.dw	2
      000432 78                    1360 	.db	120
      000433 07                    1361 	.sleb128	7
      000434 00 00 81 AE           1362 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      000438 00 00 81 C0           1363 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      00043C 00 02                 1364 	.dw	2
      00043E 78                    1365 	.db	120
      00043F 06                    1366 	.sleb128	6
      000440 00 00 81 A9           1367 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      000444 00 00 81 AE           1368 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      000448 00 02                 1369 	.dw	2
      00044A 78                    1370 	.db	120
      00044B 07                    1371 	.sleb128	7
      00044C 00 00 81 80           1372 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      000450 00 00 81 A9           1373 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      000454 00 02                 1374 	.dw	2
      000456 78                    1375 	.db	120
      000457 06                    1376 	.sleb128	6
      000458 00 00 81 7B           1377 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00045C 00 00 81 80           1378 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      000460 00 02                 1379 	.dw	2
      000462 78                    1380 	.db	120
      000463 07                    1381 	.sleb128	7
      000464 00 00 81 67           1382 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      000468 00 00 81 7B           1383 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00046C 00 02                 1384 	.dw	2
      00046E 78                    1385 	.db	120
      00046F 06                    1386 	.sleb128	6
      000470 00 00 81 61           1387 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      000474 00 00 81 67           1388 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      000478 00 02                 1389 	.dw	2
      00047A 78                    1390 	.db	120
      00047B 07                    1391 	.sleb128	7
      00047C 00 00 81 55           1392 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      000480 00 00 81 61           1393 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      000484 00 02                 1394 	.dw	2
      000486 78                    1395 	.db	120
      000487 06                    1396 	.sleb128	6
      000488 00 00 81 50           1397 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      00048C 00 00 81 55           1398 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      000490 00 02                 1399 	.dw	2
      000492 78                    1400 	.db	120
      000493 0C                    1401 	.sleb128	12
      000494 00 00 81 4E           1402 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      000498 00 00 81 50           1403 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      00049C 00 02                 1404 	.dw	2
      00049E 78                    1405 	.db	120
      00049F 0B                    1406 	.sleb128	11
      0004A0 00 00 81 4C           1407 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      0004A4 00 00 81 4E           1408 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      0004A8 00 02                 1409 	.dw	2
      0004AA 78                    1410 	.db	120
      0004AB 0A                    1411 	.sleb128	10
      0004AC 00 00 81 4A           1412 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      0004B0 00 00 81 4C           1413 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      0004B4 00 02                 1414 	.dw	2
      0004B6 78                    1415 	.db	120
      0004B7 09                    1416 	.sleb128	9
      0004B8 00 00 81 48           1417 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      0004BC 00 00 81 4A           1418 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      0004C0 00 02                 1419 	.dw	2
      0004C2 78                    1420 	.db	120
      0004C3 07                    1421 	.sleb128	7
      0004C4 00 00 81 3F           1422 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      0004C8 00 00 81 48           1423 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      0004CC 00 02                 1424 	.dw	2
      0004CE 78                    1425 	.db	120
      0004CF 06                    1426 	.sleb128	6
      0004D0 00 00 81 3A           1427 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      0004D4 00 00 81 3F           1428 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      0004D8 00 02                 1429 	.dw	2
      0004DA 78                    1430 	.db	120
      0004DB 0C                    1431 	.sleb128	12
      0004DC 00 00 81 38           1432 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0004E0 00 00 81 3A           1433 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      0004E4 00 02                 1434 	.dw	2
      0004E6 78                    1435 	.db	120
      0004E7 0B                    1436 	.sleb128	11
      0004E8 00 00 81 36           1437 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      0004EC 00 00 81 38           1438 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0004F0 00 02                 1439 	.dw	2
      0004F2 78                    1440 	.db	120
      0004F3 0A                    1441 	.sleb128	10
      0004F4 00 00 81 34           1442 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      0004F8 00 00 81 36           1443 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      0004FC 00 02                 1444 	.dw	2
      0004FE 78                    1445 	.db	120
      0004FF 09                    1446 	.sleb128	9
      000500 00 00 81 32           1447 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      000504 00 00 81 34           1448 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      000508 00 02                 1449 	.dw	2
      00050A 78                    1450 	.db	120
      00050B 07                    1451 	.sleb128	7
      00050C 00 00 81 30           1452 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      000510 00 00 81 32           1453 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      000514 00 02                 1454 	.dw	2
      000516 78                    1455 	.db	120
      000517 06                    1456 	.sleb128	6
      000518 00 00 81 27           1457 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      00051C 00 00 81 30           1458 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      000520 00 02                 1459 	.dw	2
      000522 78                    1460 	.db	120
      000523 06                    1461 	.sleb128	6
      000524 00 00 81 1E           1462 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      000528 00 00 81 27           1463 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      00052C 00 02                 1464 	.dw	2
      00052E 78                    1465 	.db	120
      00052F 06                    1466 	.sleb128	6
      000530 00 00 81 15           1467 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      000534 00 00 81 1E           1468 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      000538 00 02                 1469 	.dw	2
      00053A 78                    1470 	.db	120
      00053B 06                    1471 	.sleb128	6
      00053C 00 00 81 0C           1472 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      000540 00 00 81 15           1473 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      000544 00 02                 1474 	.dw	2
      000546 78                    1475 	.db	120
      000547 06                    1476 	.sleb128	6
      000548 00 00 81 03           1477 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      00054C 00 00 81 0C           1478 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      000550 00 02                 1479 	.dw	2
      000552 78                    1480 	.db	120
      000553 06                    1481 	.sleb128	6
      000554 00 00 80 FA           1482 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      000558 00 00 81 03           1483 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      00055C 00 02                 1484 	.dw	2
      00055E 78                    1485 	.db	120
      00055F 06                    1486 	.sleb128	6
      000560 00 00 80 F1           1487 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      000564 00 00 80 FA           1488 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      000568 00 02                 1489 	.dw	2
      00056A 78                    1490 	.db	120
      00056B 06                    1491 	.sleb128	6
      00056C 00 00 80 E8           1492 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      000570 00 00 80 F1           1493 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      000574 00 02                 1494 	.dw	2
      000576 78                    1495 	.db	120
      000577 06                    1496 	.sleb128	6
      000578 00 00 80 DF           1497 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      00057C 00 00 80 E8           1498 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      000580 00 02                 1499 	.dw	2
      000582 78                    1500 	.db	120
      000583 06                    1501 	.sleb128	6
      000584 00 00 80 D6           1502 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      000588 00 00 80 DF           1503 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      00058C 00 02                 1504 	.dw	2
      00058E 78                    1505 	.db	120
      00058F 06                    1506 	.sleb128	6
      000590 00 00 80 C6           1507 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000594 00 00 80 D6           1508 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      000598 00 02                 1509 	.dw	2
      00059A 78                    1510 	.db	120
      00059B 06                    1511 	.sleb128	6
      00059C 00 00 80 C4           1512 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      0005A0 00 00 80 C6           1513 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      0005A4 00 02                 1514 	.dw	2
      0005A6 78                    1515 	.db	120
      0005A7 01                    1516 	.sleb128	1
      0005A8 00 00 00 00           1517 	.dw	0,0
      0005AC 00 00 00 00           1518 	.dw	0,0
      0005B0 00 00 80 B1           1519 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      0005B4 00 00 80 C4           1520 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      0005B8 00 02                 1521 	.dw	2
      0005BA 78                    1522 	.db	120
      0005BB 01                    1523 	.sleb128	1
      0005BC 00 00 00 00           1524 	.dw	0,0
      0005C0 00 00 00 00           1525 	.dw	0,0
                                   1526 
                                   1527 	.area .debug_abbrev (NOLOAD)
      000066                       1528 Ldebug_abbrev:
      000066 06                    1529 	.uleb128	6
      000067 0F                    1530 	.uleb128	15
      000068 00                    1531 	.db	0
      000069 0B                    1532 	.uleb128	11
      00006A 0B                    1533 	.uleb128	11
      00006B 49                    1534 	.uleb128	73
      00006C 13                    1535 	.uleb128	19
      00006D 00                    1536 	.uleb128	0
      00006E 00                    1537 	.uleb128	0
      00006F 04                    1538 	.uleb128	4
      000070 35                    1539 	.uleb128	53
      000071 00                    1540 	.db	0
      000072 49                    1541 	.uleb128	73
      000073 13                    1542 	.uleb128	19
      000074 00                    1543 	.uleb128	0
      000075 00                    1544 	.uleb128	0
      000076 07                    1545 	.uleb128	7
      000077 05                    1546 	.uleb128	5
      000078 00                    1547 	.db	0
      000079 02                    1548 	.uleb128	2
      00007A 0A                    1549 	.uleb128	10
      00007B 03                    1550 	.uleb128	3
      00007C 08                    1551 	.uleb128	8
      00007D 49                    1552 	.uleb128	73
      00007E 13                    1553 	.uleb128	19
      00007F 00                    1554 	.uleb128	0
      000080 00                    1555 	.uleb128	0
      000081 0D                    1556 	.uleb128	13
      000082 01                    1557 	.uleb128	1
      000083 01                    1558 	.db	1
      000084 01                    1559 	.uleb128	1
      000085 13                    1560 	.uleb128	19
      000086 0B                    1561 	.uleb128	11
      000087 0B                    1562 	.uleb128	11
      000088 49                    1563 	.uleb128	73
      000089 13                    1564 	.uleb128	19
      00008A 00                    1565 	.uleb128	0
      00008B 00                    1566 	.uleb128	0
      00008C 02                    1567 	.uleb128	2
      00008D 2E                    1568 	.uleb128	46
      00008E 01                    1569 	.db	1
      00008F 01                    1570 	.uleb128	1
      000090 13                    1571 	.uleb128	19
      000091 03                    1572 	.uleb128	3
      000092 08                    1573 	.uleb128	8
      000093 11                    1574 	.uleb128	17
      000094 01                    1575 	.uleb128	1
      000095 12                    1576 	.uleb128	18
      000096 01                    1577 	.uleb128	1
      000097 3F                    1578 	.uleb128	63
      000098 0C                    1579 	.uleb128	12
      000099 40                    1580 	.uleb128	64
      00009A 06                    1581 	.uleb128	6
      00009B 00                    1582 	.uleb128	0
      00009C 00                    1583 	.uleb128	0
      00009D 0F                    1584 	.uleb128	15
      00009E 34                    1585 	.uleb128	52
      00009F 00                    1586 	.db	0
      0000A0 02                    1587 	.uleb128	2
      0000A1 0A                    1588 	.uleb128	10
      0000A2 03                    1589 	.uleb128	3
      0000A3 08                    1590 	.uleb128	8
      0000A4 49                    1591 	.uleb128	73
      0000A5 13                    1592 	.uleb128	19
      0000A6 00                    1593 	.uleb128	0
      0000A7 00                    1594 	.uleb128	0
      0000A8 0B                    1595 	.uleb128	11
      0000A9 2E                    1596 	.uleb128	46
      0000AA 01                    1597 	.db	1
      0000AB 01                    1598 	.uleb128	1
      0000AC 13                    1599 	.uleb128	19
      0000AD 03                    1600 	.uleb128	3
      0000AE 08                    1601 	.uleb128	8
      0000AF 11                    1602 	.uleb128	17
      0000B0 01                    1603 	.uleb128	1
      0000B1 12                    1604 	.uleb128	18
      0000B2 01                    1605 	.uleb128	1
      0000B3 3F                    1606 	.uleb128	63
      0000B4 0C                    1607 	.uleb128	12
      0000B5 40                    1608 	.uleb128	64
      0000B6 06                    1609 	.uleb128	6
      0000B7 49                    1610 	.uleb128	73
      0000B8 13                    1611 	.uleb128	19
      0000B9 00                    1612 	.uleb128	0
      0000BA 00                    1613 	.uleb128	0
      0000BB 0C                    1614 	.uleb128	12
      0000BC 26                    1615 	.uleb128	38
      0000BD 00                    1616 	.db	0
      0000BE 49                    1617 	.uleb128	73
      0000BF 13                    1618 	.uleb128	19
      0000C0 00                    1619 	.uleb128	0
      0000C1 00                    1620 	.uleb128	0
      0000C2 01                    1621 	.uleb128	1
      0000C3 11                    1622 	.uleb128	17
      0000C4 01                    1623 	.db	1
      0000C5 03                    1624 	.uleb128	3
      0000C6 08                    1625 	.uleb128	8
      0000C7 10                    1626 	.uleb128	16
      0000C8 06                    1627 	.uleb128	6
      0000C9 13                    1628 	.uleb128	19
      0000CA 0B                    1629 	.uleb128	11
      0000CB 25                    1630 	.uleb128	37
      0000CC 08                    1631 	.uleb128	8
      0000CD 00                    1632 	.uleb128	0
      0000CE 00                    1633 	.uleb128	0
      0000CF 05                    1634 	.uleb128	5
      0000D0 0D                    1635 	.uleb128	13
      0000D1 00                    1636 	.db	0
      0000D2 03                    1637 	.uleb128	3
      0000D3 08                    1638 	.uleb128	8
      0000D4 38                    1639 	.uleb128	56
      0000D5 0A                    1640 	.uleb128	10
      0000D6 49                    1641 	.uleb128	73
      0000D7 13                    1642 	.uleb128	19
      0000D8 00                    1643 	.uleb128	0
      0000D9 00                    1644 	.uleb128	0
      0000DA 0A                    1645 	.uleb128	10
      0000DB 0B                    1646 	.uleb128	11
      0000DC 00                    1647 	.db	0
      0000DD 11                    1648 	.uleb128	17
      0000DE 01                    1649 	.uleb128	1
      0000DF 12                    1650 	.uleb128	18
      0000E0 01                    1651 	.uleb128	1
      0000E1 00                    1652 	.uleb128	0
      0000E2 00                    1653 	.uleb128	0
      0000E3 09                    1654 	.uleb128	9
      0000E4 0B                    1655 	.uleb128	11
      0000E5 01                    1656 	.db	1
      0000E6 01                    1657 	.uleb128	1
      0000E7 13                    1658 	.uleb128	19
      0000E8 11                    1659 	.uleb128	17
      0000E9 01                    1660 	.uleb128	1
      0000EA 12                    1661 	.uleb128	18
      0000EB 01                    1662 	.uleb128	1
      0000EC 00                    1663 	.uleb128	0
      0000ED 00                    1664 	.uleb128	0
      0000EE 0E                    1665 	.uleb128	14
      0000EF 21                    1666 	.uleb128	33
      0000F0 00                    1667 	.db	0
      0000F1 2F                    1668 	.uleb128	47
      0000F2 0B                    1669 	.uleb128	11
      0000F3 00                    1670 	.uleb128	0
      0000F4 00                    1671 	.uleb128	0
      0000F5 03                    1672 	.uleb128	3
      0000F6 13                    1673 	.uleb128	19
      0000F7 01                    1674 	.db	1
      0000F8 01                    1675 	.uleb128	1
      0000F9 13                    1676 	.uleb128	19
      0000FA 03                    1677 	.uleb128	3
      0000FB 08                    1678 	.uleb128	8
      0000FC 0B                    1679 	.uleb128	11
      0000FD 0B                    1680 	.uleb128	11
      0000FE 00                    1681 	.uleb128	0
      0000FF 00                    1682 	.uleb128	0
      000100 08                    1683 	.uleb128	8
      000101 24                    1684 	.uleb128	36
      000102 00                    1685 	.db	0
      000103 03                    1686 	.uleb128	3
      000104 08                    1687 	.uleb128	8
      000105 0B                    1688 	.uleb128	11
      000106 0B                    1689 	.uleb128	11
      000107 3E                    1690 	.uleb128	62
      000108 0B                    1691 	.uleb128	11
      000109 00                    1692 	.uleb128	0
      00010A 00                    1693 	.uleb128	0
      00010B 00                    1694 	.uleb128	0
                                   1695 
                                   1696 	.area .debug_info (NOLOAD)
      0003E8 00 00 03 E6           1697 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0003EC                       1698 Ldebug_info_start:
      0003EC 00 02                 1699 	.dw	2
      0003EE 00 00 00 66           1700 	.dw	0,(Ldebug_abbrev)
      0003F2 04                    1701 	.db	4
      0003F3 01                    1702 	.uleb128	1
      0003F4 2E 2F 53 54 4D 38 53  1703 	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
             5F 53 74 64 50 65 72
             69 70 68 5F 44 72 69
             76 65 72 2F 73 72 63
             2F 73 74 6D 38 73 5F
             67 70 69 6F 2E 63
      00041D 00                    1704 	.db	0
      00041E 00 00 04 23           1705 	.dw	0,(Ldebug_line_start+-4)
      000422 01                    1706 	.db	1
      000423 53 44 43 43 20 76 65  1707 	.ascii "SDCC version 3.9.0 #11195"
             72 73 69 6F 6E 20 33
             2E 39 2E 30 20 23 31
             31 31 39 35
      00043C 00                    1708 	.db	0
      00043D 02                    1709 	.uleb128	2
      00043E 00 00 00 DC           1710 	.dw	0,220
      000442 47 50 49 4F 5F 44 65  1711 	.ascii "GPIO_DeInit"
             49 6E 69 74
      00044D 00                    1712 	.db	0
      00044E 00 00 80 B1           1713 	.dw	0,(_GPIO_DeInit)
      000452 00 00 80 C4           1714 	.dw	0,(XG$GPIO_DeInit$0$0+1)
      000456 01                    1715 	.db	1
      000457 00 00 05 B0           1716 	.dw	0,(Ldebug_loc_start+804)
      00045B 03                    1717 	.uleb128	3
      00045C 00 00 00 C7           1718 	.dw	0,199
      000460 47 50 49 4F 5F 73 74  1719 	.ascii "GPIO_struct"
             72 75 63 74
      00046B 00                    1720 	.db	0
      00046C 05                    1721 	.db	5
      00046D 04                    1722 	.uleb128	4
      00046E 00 00 00 DC           1723 	.dw	0,220
      000472 05                    1724 	.uleb128	5
      000473 4F 44 52              1725 	.ascii "ODR"
      000476 00                    1726 	.db	0
      000477 02                    1727 	.db	2
      000478 23                    1728 	.db	35
      000479 00                    1729 	.uleb128	0
      00047A 00 00 00 85           1730 	.dw	0,133
      00047E 05                    1731 	.uleb128	5
      00047F 49 44 52              1732 	.ascii "IDR"
      000482 00                    1733 	.db	0
      000483 02                    1734 	.db	2
      000484 23                    1735 	.db	35
      000485 01                    1736 	.uleb128	1
      000486 00 00 00 85           1737 	.dw	0,133
      00048A 05                    1738 	.uleb128	5
      00048B 44 44 52              1739 	.ascii "DDR"
      00048E 00                    1740 	.db	0
      00048F 02                    1741 	.db	2
      000490 23                    1742 	.db	35
      000491 02                    1743 	.uleb128	2
      000492 00 00 00 85           1744 	.dw	0,133
      000496 05                    1745 	.uleb128	5
      000497 43 52 31              1746 	.ascii "CR1"
      00049A 00                    1747 	.db	0
      00049B 02                    1748 	.db	2
      00049C 23                    1749 	.db	35
      00049D 03                    1750 	.uleb128	3
      00049E 00 00 00 85           1751 	.dw	0,133
      0004A2 05                    1752 	.uleb128	5
      0004A3 43 52 32              1753 	.ascii "CR2"
      0004A6 00                    1754 	.db	0
      0004A7 02                    1755 	.db	2
      0004A8 23                    1756 	.db	35
      0004A9 04                    1757 	.uleb128	4
      0004AA 00 00 00 85           1758 	.dw	0,133
      0004AE 00                    1759 	.uleb128	0
      0004AF 06                    1760 	.uleb128	6
      0004B0 02                    1761 	.db	2
      0004B1 00 00 00 73           1762 	.dw	0,115
      0004B5 07                    1763 	.uleb128	7
      0004B6 02                    1764 	.db	2
      0004B7 91                    1765 	.db	145
      0004B8 02                    1766 	.sleb128	2
      0004B9 47 50 49 4F 78        1767 	.ascii "GPIOx"
      0004BE 00                    1768 	.db	0
      0004BF 00 00 00 C7           1769 	.dw	0,199
      0004C3 00                    1770 	.uleb128	0
      0004C4 08                    1771 	.uleb128	8
      0004C5 75 6E 73 69 67 6E 65  1772 	.ascii "unsigned char"
             64 20 63 68 61 72
      0004D2 00                    1773 	.db	0
      0004D3 01                    1774 	.db	1
      0004D4 08                    1775 	.db	8
      0004D5 02                    1776 	.uleb128	2
      0004D6 00 00 01 88           1777 	.dw	0,392
      0004DA 47 50 49 4F 5F 49 6E  1778 	.ascii "GPIO_Init"
             69 74
      0004E3 00                    1779 	.db	0
      0004E4 00 00 80 C4           1780 	.dw	0,(_GPIO_Init)
      0004E8 00 00 81 DA           1781 	.dw	0,(XG$GPIO_Init$0$0+1)
      0004EC 01                    1782 	.db	1
      0004ED 00 00 04 10           1783 	.dw	0,(Ldebug_loc_start+388)
      0004F1 07                    1784 	.uleb128	7
      0004F2 02                    1785 	.db	2
      0004F3 91                    1786 	.db	145
      0004F4 02                    1787 	.sleb128	2
      0004F5 47 50 49 4F 78        1788 	.ascii "GPIOx"
      0004FA 00                    1789 	.db	0
      0004FB 00 00 00 C7           1790 	.dw	0,199
      0004FF 07                    1791 	.uleb128	7
      000500 02                    1792 	.db	2
      000501 91                    1793 	.db	145
      000502 04                    1794 	.sleb128	4
      000503 47 50 49 4F 5F 50 69  1795 	.ascii "GPIO_Pin"
             6E
      00050B 00                    1796 	.db	0
      00050C 00 00 01 88           1797 	.dw	0,392
      000510 07                    1798 	.uleb128	7
      000511 02                    1799 	.db	2
      000512 91                    1800 	.db	145
      000513 05                    1801 	.sleb128	5
      000514 47 50 49 4F 5F 4D 6F  1802 	.ascii "GPIO_Mode"
             64 65
      00051D 00                    1803 	.db	0
      00051E 00 00 01 88           1804 	.dw	0,392
      000522 09                    1805 	.uleb128	9
      000523 00 00 01 5A           1806 	.dw	0,346
      000527 00 00 81 7A           1807 	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
      00052B 00 00 81 98           1808 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      00052F 0A                    1809 	.uleb128	10
      000530 00 00 81 85           1810 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      000534 00 00 81 89           1811 	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
      000538 0A                    1812 	.uleb128	10
      000539 00 00 81 8C           1813 	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
      00053D 00 00 81 90           1814 	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
      000541 00                    1815 	.uleb128	0
      000542 0A                    1816 	.uleb128	10
      000543 00 00 81 9B           1817 	.dw	0,(Sstm8s_gpio$GPIO_Init$55)
      000547 00 00 81 A3           1818 	.dw	0,(Sstm8s_gpio$GPIO_Init$57)
      00054B 0A                    1819 	.uleb128	10
      00054C 00 00 81 B3           1820 	.dw	0,(Sstm8s_gpio$GPIO_Init$62)
      000550 00 00 81 B6           1821 	.dw	0,(Sstm8s_gpio$GPIO_Init$64)
      000554 0A                    1822 	.uleb128	10
      000555 00 00 81 B9           1823 	.dw	0,(Sstm8s_gpio$GPIO_Init$65)
      000559 00 00 81 BC           1824 	.dw	0,(Sstm8s_gpio$GPIO_Init$67)
      00055D 0A                    1825 	.uleb128	10
      00055E 00 00 81 CA           1826 	.dw	0,(Sstm8s_gpio$GPIO_Init$72)
      000562 00 00 81 CF           1827 	.dw	0,(Sstm8s_gpio$GPIO_Init$74)
      000566 0A                    1828 	.uleb128	10
      000567 00 00 81 D2           1829 	.dw	0,(Sstm8s_gpio$GPIO_Init$75)
      00056B 00 00 81 D7           1830 	.dw	0,(Sstm8s_gpio$GPIO_Init$77)
      00056F 00                    1831 	.uleb128	0
      000570 08                    1832 	.uleb128	8
      000571 75 6E 73 69 67 6E 65  1833 	.ascii "unsigned char"
             64 20 63 68 61 72
      00057E 00                    1834 	.db	0
      00057F 01                    1835 	.db	1
      000580 08                    1836 	.db	8
      000581 02                    1837 	.uleb128	2
      000582 00 00 01 D5           1838 	.dw	0,469
      000586 47 50 49 4F 5F 57 72  1839 	.ascii "GPIO_Write"
             69 74 65
      000590 00                    1840 	.db	0
      000591 00 00 81 DA           1841 	.dw	0,(_GPIO_Write)
      000595 00 00 81 E0           1842 	.dw	0,(XG$GPIO_Write$0$0+1)
      000599 01                    1843 	.db	1
      00059A 00 00 03 FC           1844 	.dw	0,(Ldebug_loc_start+368)
      00059E 07                    1845 	.uleb128	7
      00059F 02                    1846 	.db	2
      0005A0 91                    1847 	.db	145
      0005A1 02                    1848 	.sleb128	2
      0005A2 47 50 49 4F 78        1849 	.ascii "GPIOx"
      0005A7 00                    1850 	.db	0
      0005A8 00 00 00 C7           1851 	.dw	0,199
      0005AC 07                    1852 	.uleb128	7
      0005AD 02                    1853 	.db	2
      0005AE 91                    1854 	.db	145
      0005AF 04                    1855 	.sleb128	4
      0005B0 50 6F 72 74 56 61 6C  1856 	.ascii "PortVal"
      0005B7 00                    1857 	.db	0
      0005B8 00 00 01 88           1858 	.dw	0,392
      0005BC 00                    1859 	.uleb128	0
      0005BD 02                    1860 	.uleb128	2
      0005BE 00 00 02 16           1861 	.dw	0,534
      0005C2 47 50 49 4F 5F 57 72  1862 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      0005D0 00                    1863 	.db	0
      0005D1 00 00 81 E0           1864 	.dw	0,(_GPIO_WriteHigh)
      0005D5 00 00 81 E7           1865 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      0005D9 01                    1866 	.db	1
      0005DA 00 00 03 E8           1867 	.dw	0,(Ldebug_loc_start+348)
      0005DE 07                    1868 	.uleb128	7
      0005DF 02                    1869 	.db	2
      0005E0 91                    1870 	.db	145
      0005E1 02                    1871 	.sleb128	2
      0005E2 47 50 49 4F 78        1872 	.ascii "GPIOx"
      0005E7 00                    1873 	.db	0
      0005E8 00 00 00 C7           1874 	.dw	0,199
      0005EC 07                    1875 	.uleb128	7
      0005ED 02                    1876 	.db	2
      0005EE 91                    1877 	.db	145
      0005EF 04                    1878 	.sleb128	4
      0005F0 50 6F 72 74 50 69 6E  1879 	.ascii "PortPins"
             73
      0005F8 00                    1880 	.db	0
      0005F9 00 00 01 88           1881 	.dw	0,392
      0005FD 00                    1882 	.uleb128	0
      0005FE 02                    1883 	.uleb128	2
      0005FF 00 00 02 56           1884 	.dw	0,598
      000603 47 50 49 4F 5F 57 72  1885 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000610 00                    1886 	.db	0
      000611 00 00 81 E7           1887 	.dw	0,(_GPIO_WriteLow)
      000615 00 00 81 F5           1888 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      000619 01                    1889 	.db	1
      00061A 00 00 03 BC           1890 	.dw	0,(Ldebug_loc_start+304)
      00061E 07                    1891 	.uleb128	7
      00061F 02                    1892 	.db	2
      000620 91                    1893 	.db	145
      000621 02                    1894 	.sleb128	2
      000622 47 50 49 4F 78        1895 	.ascii "GPIOx"
      000627 00                    1896 	.db	0
      000628 00 00 00 C7           1897 	.dw	0,199
      00062C 07                    1898 	.uleb128	7
      00062D 02                    1899 	.db	2
      00062E 91                    1900 	.db	145
      00062F 04                    1901 	.sleb128	4
      000630 50 6F 72 74 50 69 6E  1902 	.ascii "PortPins"
             73
      000638 00                    1903 	.db	0
      000639 00 00 01 88           1904 	.dw	0,392
      00063D 00                    1905 	.uleb128	0
      00063E 02                    1906 	.uleb128	2
      00063F 00 00 02 9A           1907 	.dw	0,666
      000643 47 50 49 4F 5F 57 72  1908 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000654 00                    1909 	.db	0
      000655 00 00 81 F5           1910 	.dw	0,(_GPIO_WriteReverse)
      000659 00 00 81 FC           1911 	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
      00065D 01                    1912 	.db	1
      00065E 00 00 03 A8           1913 	.dw	0,(Ldebug_loc_start+284)
      000662 07                    1914 	.uleb128	7
      000663 02                    1915 	.db	2
      000664 91                    1916 	.db	145
      000665 02                    1917 	.sleb128	2
      000666 47 50 49 4F 78        1918 	.ascii "GPIOx"
      00066B 00                    1919 	.db	0
      00066C 00 00 00 C7           1920 	.dw	0,199
      000670 07                    1921 	.uleb128	7
      000671 02                    1922 	.db	2
      000672 91                    1923 	.db	145
      000673 04                    1924 	.sleb128	4
      000674 50 6F 72 74 50 69 6E  1925 	.ascii "PortPins"
             73
      00067C 00                    1926 	.db	0
      00067D 00 00 01 88           1927 	.dw	0,392
      000681 00                    1928 	.uleb128	0
      000682 0B                    1929 	.uleb128	11
      000683 00 00 02 D3           1930 	.dw	0,723
      000687 47 50 49 4F 5F 52 65  1931 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      00069A 00                    1932 	.db	0
      00069B 00 00 81 FC           1933 	.dw	0,(_GPIO_ReadOutputData)
      00069F 00 00 82 00           1934 	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
      0006A3 01                    1935 	.db	1
      0006A4 00 00 03 94           1936 	.dw	0,(Ldebug_loc_start+264)
      0006A8 00 00 01 88           1937 	.dw	0,392
      0006AC 07                    1938 	.uleb128	7
      0006AD 02                    1939 	.db	2
      0006AE 91                    1940 	.db	145
      0006AF 02                    1941 	.sleb128	2
      0006B0 47 50 49 4F 78        1942 	.ascii "GPIOx"
      0006B5 00                    1943 	.db	0
      0006B6 00 00 00 C7           1944 	.dw	0,199
      0006BA 00                    1945 	.uleb128	0
      0006BB 0B                    1946 	.uleb128	11
      0006BC 00 00 03 0B           1947 	.dw	0,779
      0006C0 47 50 49 4F 5F 52 65  1948 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      0006D2 00                    1949 	.db	0
      0006D3 00 00 82 00           1950 	.dw	0,(_GPIO_ReadInputData)
      0006D7 00 00 82 05           1951 	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
      0006DB 01                    1952 	.db	1
      0006DC 00 00 03 80           1953 	.dw	0,(Ldebug_loc_start+244)
      0006E0 00 00 01 88           1954 	.dw	0,392
      0006E4 07                    1955 	.uleb128	7
      0006E5 02                    1956 	.db	2
      0006E6 91                    1957 	.db	145
      0006E7 02                    1958 	.sleb128	2
      0006E8 47 50 49 4F 78        1959 	.ascii "GPIOx"
      0006ED 00                    1960 	.db	0
      0006EE 00 00 00 C7           1961 	.dw	0,199
      0006F2 00                    1962 	.uleb128	0
      0006F3 0B                    1963 	.uleb128	11
      0006F4 00 00 03 53           1964 	.dw	0,851
      0006F8 47 50 49 4F 5F 52 65  1965 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      000709 00                    1966 	.db	0
      00070A 00 00 82 05           1967 	.dw	0,(_GPIO_ReadInputPin)
      00070E 00 00 82 0C           1968 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      000712 01                    1969 	.db	1
      000713 00 00 03 6C           1970 	.dw	0,(Ldebug_loc_start+224)
      000717 00 00 01 88           1971 	.dw	0,392
      00071B 07                    1972 	.uleb128	7
      00071C 02                    1973 	.db	2
      00071D 91                    1974 	.db	145
      00071E 02                    1975 	.sleb128	2
      00071F 47 50 49 4F 78        1976 	.ascii "GPIOx"
      000724 00                    1977 	.db	0
      000725 00 00 00 C7           1978 	.dw	0,199
      000729 07                    1979 	.uleb128	7
      00072A 02                    1980 	.db	2
      00072B 91                    1981 	.db	145
      00072C 04                    1982 	.sleb128	4
      00072D 47 50 49 4F 5F 50 69  1983 	.ascii "GPIO_Pin"
             6E
      000735 00                    1984 	.db	0
      000736 00 00 01 88           1985 	.dw	0,392
      00073A 00                    1986 	.uleb128	0
      00073B 02                    1987 	.uleb128	2
      00073C 00 00 03 C2           1988 	.dw	0,962
      000740 47 50 49 4F 5F 45 78  1989 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      000759 00                    1990 	.db	0
      00075A 00 00 82 0C           1991 	.dw	0,(_GPIO_ExternalPullUpConfig)
      00075E 00 00 82 60           1992 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
      000762 01                    1993 	.db	1
      000763 00 00 02 8C           1994 	.dw	0,(Ldebug_loc_start)
      000767 07                    1995 	.uleb128	7
      000768 02                    1996 	.db	2
      000769 91                    1997 	.db	145
      00076A 02                    1998 	.sleb128	2
      00076B 47 50 49 4F 78        1999 	.ascii "GPIOx"
      000770 00                    2000 	.db	0
      000771 00 00 00 C7           2001 	.dw	0,199
      000775 07                    2002 	.uleb128	7
      000776 02                    2003 	.db	2
      000777 91                    2004 	.db	145
      000778 04                    2005 	.sleb128	4
      000779 47 50 49 4F 5F 50 69  2006 	.ascii "GPIO_Pin"
             6E
      000781 00                    2007 	.db	0
      000782 00 00 01 88           2008 	.dw	0,392
      000786 07                    2009 	.uleb128	7
      000787 02                    2010 	.db	2
      000788 91                    2011 	.db	145
      000789 05                    2012 	.sleb128	5
      00078A 4E 65 77 53 74 61 74  2013 	.ascii "NewState"
             65
      000792 00                    2014 	.db	0
      000793 00 00 01 88           2015 	.dw	0,392
      000797 0A                    2016 	.uleb128	10
      000798 00 00 82 4E           2017 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$146)
      00079C 00 00 82 51           2018 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$148)
      0007A0 0A                    2019 	.uleb128	10
      0007A1 00 00 82 54           2020 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$149)
      0007A5 00 00 82 5E           2021 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$153)
      0007A9 00                    2022 	.uleb128	0
      0007AA 0C                    2023 	.uleb128	12
      0007AB 00 00 01 88           2024 	.dw	0,392
      0007AF 0D                    2025 	.uleb128	13
      0007B0 00 00 03 D4           2026 	.dw	0,980
      0007B4 2A                    2027 	.db	42
      0007B5 00 00 03 C2           2028 	.dw	0,962
      0007B9 0E                    2029 	.uleb128	14
      0007BA 29                    2030 	.db	41
      0007BB 00                    2031 	.uleb128	0
      0007BC 0F                    2032 	.uleb128	15
      0007BD 05                    2033 	.db	5
      0007BE 03                    2034 	.db	3
      0007BF 00 00 80 24           2035 	.dw	0,(___str_0)
      0007C3 5F 5F 73 74 72 5F 30  2036 	.ascii "__str_0"
      0007CA 00                    2037 	.db	0
      0007CB 00 00 03 C7           2038 	.dw	0,967
      0007CF 00                    2039 	.uleb128	0
      0007D0 00                    2040 	.uleb128	0
      0007D1 00                    2041 	.uleb128	0
      0007D2                       2042 Ldebug_info_end:
                                   2043 
                                   2044 	.area .debug_pubnames (NOLOAD)
      00022A 00 00 00 D9           2045 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00022E                       2046 Ldebug_pubnames_start:
      00022E 00 02                 2047 	.dw	2
      000230 00 00 03 E8           2048 	.dw	0,(Ldebug_info_start-4)
      000234 00 00 03 EA           2049 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000238 00 00 00 55           2050 	.dw	0,85
      00023C 47 50 49 4F 5F 44 65  2051 	.ascii "GPIO_DeInit"
             49 6E 69 74
      000247 00                    2052 	.db	0
      000248 00 00 00 ED           2053 	.dw	0,237
      00024C 47 50 49 4F 5F 49 6E  2054 	.ascii "GPIO_Init"
             69 74
      000255 00                    2055 	.db	0
      000256 00 00 01 99           2056 	.dw	0,409
      00025A 47 50 49 4F 5F 57 72  2057 	.ascii "GPIO_Write"
             69 74 65
      000264 00                    2058 	.db	0
      000265 00 00 01 D5           2059 	.dw	0,469
      000269 47 50 49 4F 5F 57 72  2060 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000277 00                    2061 	.db	0
      000278 00 00 02 16           2062 	.dw	0,534
      00027C 47 50 49 4F 5F 57 72  2063 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000289 00                    2064 	.db	0
      00028A 00 00 02 56           2065 	.dw	0,598
      00028E 47 50 49 4F 5F 57 72  2066 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      00029F 00                    2067 	.db	0
      0002A0 00 00 02 9A           2068 	.dw	0,666
      0002A4 47 50 49 4F 5F 52 65  2069 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      0002B7 00                    2070 	.db	0
      0002B8 00 00 02 D3           2071 	.dw	0,723
      0002BC 47 50 49 4F 5F 52 65  2072 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      0002CE 00                    2073 	.db	0
      0002CF 00 00 03 0B           2074 	.dw	0,779
      0002D3 47 50 49 4F 5F 52 65  2075 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      0002E4 00                    2076 	.db	0
      0002E5 00 00 03 53           2077 	.dw	0,851
      0002E9 47 50 49 4F 5F 45 78  2078 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      000302 00                    2079 	.db	0
      000303 00 00 00 00           2080 	.dw	0,0
      000307                       2081 Ldebug_pubnames_end:
                                   2082 
                                   2083 	.area .debug_frame (NOLOAD)
      00041F 00 00                 2084 	.dw	0
      000421 00 0E                 2085 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000423                       2086 Ldebug_CIE0_start:
      000423 FF FF                 2087 	.dw	0xffff
      000425 FF FF                 2088 	.dw	0xffff
      000427 01                    2089 	.db	1
      000428 00                    2090 	.db	0
      000429 01                    2091 	.uleb128	1
      00042A 7F                    2092 	.sleb128	-1
      00042B 09                    2093 	.db	9
      00042C 0C                    2094 	.db	12
      00042D 08                    2095 	.uleb128	8
      00042E 02                    2096 	.uleb128	2
      00042F 89                    2097 	.db	137
      000430 01                    2098 	.uleb128	1
      000431                       2099 Ldebug_CIE0_end:
      000431 00 00 00 8A           2100 	.dw	0,138
      000435 00 00 04 1F           2101 	.dw	0,(Ldebug_CIE0_start-4)
      000439 00 00 82 0C           2102 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)	;initial loc
      00043D 00 00 00 54           2103 	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$157-Sstm8s_gpio$GPIO_ExternalPullUpConfig$127
      000441 01                    2104 	.db	1
      000442 00 00 82 0C           2105 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
      000446 0E                    2106 	.db	14
      000447 02                    2107 	.uleb128	2
      000448 01                    2108 	.db	1
      000449 00 00 82 0D           2109 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      00044D 0E                    2110 	.db	14
      00044E 03                    2111 	.uleb128	3
      00044F 01                    2112 	.db	1
      000450 00 00 82 16           2113 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      000454 0E                    2114 	.db	14
      000455 04                    2115 	.uleb128	4
      000456 01                    2116 	.db	1
      000457 00 00 82 18           2117 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      00045B 0E                    2118 	.db	14
      00045C 06                    2119 	.uleb128	6
      00045D 01                    2120 	.db	1
      00045E 00 00 82 1A           2121 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      000462 0E                    2122 	.db	14
      000463 07                    2123 	.uleb128	7
      000464 01                    2124 	.db	1
      000465 00 00 82 1C           2125 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      000469 0E                    2126 	.db	14
      00046A 08                    2127 	.uleb128	8
      00046B 01                    2128 	.db	1
      00046C 00 00 82 1E           2129 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      000470 0E                    2130 	.db	14
      000471 09                    2131 	.uleb128	9
      000472 01                    2132 	.db	1
      000473 00 00 82 23           2133 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      000477 0E                    2134 	.db	14
      000478 03                    2135 	.uleb128	3
      000479 01                    2136 	.db	1
      00047A 00 00 82 32           2137 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      00047E 0E                    2138 	.db	14
      00047F 03                    2139 	.uleb128	3
      000480 01                    2140 	.db	1
      000481 00 00 82 34           2141 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      000485 0E                    2142 	.db	14
      000486 04                    2143 	.uleb128	4
      000487 01                    2144 	.db	1
      000488 00 00 82 36           2145 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      00048C 0E                    2146 	.db	14
      00048D 06                    2147 	.uleb128	6
      00048E 01                    2148 	.db	1
      00048F 00 00 82 38           2149 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      000493 0E                    2150 	.db	14
      000494 07                    2151 	.uleb128	7
      000495 01                    2152 	.db	1
      000496 00 00 82 3A           2153 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      00049A 0E                    2154 	.db	14
      00049B 08                    2155 	.uleb128	8
      00049C 01                    2156 	.db	1
      00049D 00 00 82 3C           2157 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      0004A1 0E                    2158 	.db	14
      0004A2 09                    2159 	.uleb128	9
      0004A3 01                    2160 	.db	1
      0004A4 00 00 82 41           2161 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      0004A8 0E                    2162 	.db	14
      0004A9 03                    2163 	.uleb128	3
      0004AA 01                    2164 	.db	1
      0004AB 00 00 82 55           2165 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      0004AF 0E                    2166 	.db	14
      0004B0 04                    2167 	.uleb128	4
      0004B1 01                    2168 	.db	1
      0004B2 00 00 82 5B           2169 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      0004B6 0E                    2170 	.db	14
      0004B7 03                    2171 	.uleb128	3
      0004B8 01                    2172 	.db	1
      0004B9 00 00 82 5F           2173 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      0004BD 0E                    2174 	.db	14
      0004BE 02                    2175 	.uleb128	2
                                   2176 
                                   2177 	.area .debug_frame (NOLOAD)
      0004BF 00 00                 2178 	.dw	0
      0004C1 00 0E                 2179 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0004C3                       2180 Ldebug_CIE1_start:
      0004C3 FF FF                 2181 	.dw	0xffff
      0004C5 FF FF                 2182 	.dw	0xffff
      0004C7 01                    2183 	.db	1
      0004C8 00                    2184 	.db	0
      0004C9 01                    2185 	.uleb128	1
      0004CA 7F                    2186 	.sleb128	-1
      0004CB 09                    2187 	.db	9
      0004CC 0C                    2188 	.db	12
      0004CD 08                    2189 	.uleb128	8
      0004CE 02                    2190 	.uleb128	2
      0004CF 89                    2191 	.db	137
      0004D0 01                    2192 	.uleb128	1
      0004D1                       2193 Ldebug_CIE1_end:
      0004D1 00 00 00 13           2194 	.dw	0,19
      0004D5 00 00 04 BF           2195 	.dw	0,(Ldebug_CIE1_start-4)
      0004D9 00 00 82 05           2196 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)	;initial loc
      0004DD 00 00 00 07           2197 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$125-Sstm8s_gpio$GPIO_ReadInputPin$121
      0004E1 01                    2198 	.db	1
      0004E2 00 00 82 05           2199 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
      0004E6 0E                    2200 	.db	14
      0004E7 02                    2201 	.uleb128	2
                                   2202 
                                   2203 	.area .debug_frame (NOLOAD)
      0004E8 00 00                 2204 	.dw	0
      0004EA 00 0E                 2205 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0004EC                       2206 Ldebug_CIE2_start:
      0004EC FF FF                 2207 	.dw	0xffff
      0004EE FF FF                 2208 	.dw	0xffff
      0004F0 01                    2209 	.db	1
      0004F1 00                    2210 	.db	0
      0004F2 01                    2211 	.uleb128	1
      0004F3 7F                    2212 	.sleb128	-1
      0004F4 09                    2213 	.db	9
      0004F5 0C                    2214 	.db	12
      0004F6 08                    2215 	.uleb128	8
      0004F7 02                    2216 	.uleb128	2
      0004F8 89                    2217 	.db	137
      0004F9 01                    2218 	.uleb128	1
      0004FA                       2219 Ldebug_CIE2_end:
      0004FA 00 00 00 13           2220 	.dw	0,19
      0004FE 00 00 04 E8           2221 	.dw	0,(Ldebug_CIE2_start-4)
      000502 00 00 82 00           2222 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)	;initial loc
      000506 00 00 00 05           2223 	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$119-Sstm8s_gpio$GPIO_ReadInputData$115
      00050A 01                    2224 	.db	1
      00050B 00 00 82 00           2225 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
      00050F 0E                    2226 	.db	14
      000510 02                    2227 	.uleb128	2
                                   2228 
                                   2229 	.area .debug_frame (NOLOAD)
      000511 00 00                 2230 	.dw	0
      000513 00 0E                 2231 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000515                       2232 Ldebug_CIE3_start:
      000515 FF FF                 2233 	.dw	0xffff
      000517 FF FF                 2234 	.dw	0xffff
      000519 01                    2235 	.db	1
      00051A 00                    2236 	.db	0
      00051B 01                    2237 	.uleb128	1
      00051C 7F                    2238 	.sleb128	-1
      00051D 09                    2239 	.db	9
      00051E 0C                    2240 	.db	12
      00051F 08                    2241 	.uleb128	8
      000520 02                    2242 	.uleb128	2
      000521 89                    2243 	.db	137
      000522 01                    2244 	.uleb128	1
      000523                       2245 Ldebug_CIE3_end:
      000523 00 00 00 13           2246 	.dw	0,19
      000527 00 00 05 11           2247 	.dw	0,(Ldebug_CIE3_start-4)
      00052B 00 00 81 FC           2248 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)	;initial loc
      00052F 00 00 00 04           2249 	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$113-Sstm8s_gpio$GPIO_ReadOutputData$109
      000533 01                    2250 	.db	1
      000534 00 00 81 FC           2251 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
      000538 0E                    2252 	.db	14
      000539 02                    2253 	.uleb128	2
                                   2254 
                                   2255 	.area .debug_frame (NOLOAD)
      00053A 00 00                 2256 	.dw	0
      00053C 00 0E                 2257 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      00053E                       2258 Ldebug_CIE4_start:
      00053E FF FF                 2259 	.dw	0xffff
      000540 FF FF                 2260 	.dw	0xffff
      000542 01                    2261 	.db	1
      000543 00                    2262 	.db	0
      000544 01                    2263 	.uleb128	1
      000545 7F                    2264 	.sleb128	-1
      000546 09                    2265 	.db	9
      000547 0C                    2266 	.db	12
      000548 08                    2267 	.uleb128	8
      000549 02                    2268 	.uleb128	2
      00054A 89                    2269 	.db	137
      00054B 01                    2270 	.uleb128	1
      00054C                       2271 Ldebug_CIE4_end:
      00054C 00 00 00 13           2272 	.dw	0,19
      000550 00 00 05 3A           2273 	.dw	0,(Ldebug_CIE4_start-4)
      000554 00 00 81 F5           2274 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)	;initial loc
      000558 00 00 00 07           2275 	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$107-Sstm8s_gpio$GPIO_WriteReverse$103
      00055C 01                    2276 	.db	1
      00055D 00 00 81 F5           2277 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
      000561 0E                    2278 	.db	14
      000562 02                    2279 	.uleb128	2
                                   2280 
                                   2281 	.area .debug_frame (NOLOAD)
      000563 00 00                 2282 	.dw	0
      000565 00 0E                 2283 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000567                       2284 Ldebug_CIE5_start:
      000567 FF FF                 2285 	.dw	0xffff
      000569 FF FF                 2286 	.dw	0xffff
      00056B 01                    2287 	.db	1
      00056C 00                    2288 	.db	0
      00056D 01                    2289 	.uleb128	1
      00056E 7F                    2290 	.sleb128	-1
      00056F 09                    2291 	.db	9
      000570 0C                    2292 	.db	12
      000571 08                    2293 	.uleb128	8
      000572 02                    2294 	.uleb128	2
      000573 89                    2295 	.db	137
      000574 01                    2296 	.uleb128	1
      000575                       2297 Ldebug_CIE5_end:
      000575 00 00 00 21           2298 	.dw	0,33
      000579 00 00 05 63           2299 	.dw	0,(Ldebug_CIE5_start-4)
      00057D 00 00 81 E7           2300 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)	;initial loc
      000581 00 00 00 0E           2301 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$101-Sstm8s_gpio$GPIO_WriteLow$95
      000585 01                    2302 	.db	1
      000586 00 00 81 E7           2303 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
      00058A 0E                    2304 	.db	14
      00058B 02                    2305 	.uleb128	2
      00058C 01                    2306 	.db	1
      00058D 00 00 81 E8           2307 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      000591 0E                    2308 	.db	14
      000592 03                    2309 	.uleb128	3
      000593 01                    2310 	.db	1
      000594 00 00 81 F4           2311 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      000598 0E                    2312 	.db	14
      000599 02                    2313 	.uleb128	2
                                   2314 
                                   2315 	.area .debug_frame (NOLOAD)
      00059A 00 00                 2316 	.dw	0
      00059C 00 0E                 2317 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      00059E                       2318 Ldebug_CIE6_start:
      00059E FF FF                 2319 	.dw	0xffff
      0005A0 FF FF                 2320 	.dw	0xffff
      0005A2 01                    2321 	.db	1
      0005A3 00                    2322 	.db	0
      0005A4 01                    2323 	.uleb128	1
      0005A5 7F                    2324 	.sleb128	-1
      0005A6 09                    2325 	.db	9
      0005A7 0C                    2326 	.db	12
      0005A8 08                    2327 	.uleb128	8
      0005A9 02                    2328 	.uleb128	2
      0005AA 89                    2329 	.db	137
      0005AB 01                    2330 	.uleb128	1
      0005AC                       2331 Ldebug_CIE6_end:
      0005AC 00 00 00 13           2332 	.dw	0,19
      0005B0 00 00 05 9A           2333 	.dw	0,(Ldebug_CIE6_start-4)
      0005B4 00 00 81 E0           2334 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)	;initial loc
      0005B8 00 00 00 07           2335 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$93-Sstm8s_gpio$GPIO_WriteHigh$89
      0005BC 01                    2336 	.db	1
      0005BD 00 00 81 E0           2337 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
      0005C1 0E                    2338 	.db	14
      0005C2 02                    2339 	.uleb128	2
                                   2340 
                                   2341 	.area .debug_frame (NOLOAD)
      0005C3 00 00                 2342 	.dw	0
      0005C5 00 0E                 2343 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0005C7                       2344 Ldebug_CIE7_start:
      0005C7 FF FF                 2345 	.dw	0xffff
      0005C9 FF FF                 2346 	.dw	0xffff
      0005CB 01                    2347 	.db	1
      0005CC 00                    2348 	.db	0
      0005CD 01                    2349 	.uleb128	1
      0005CE 7F                    2350 	.sleb128	-1
      0005CF 09                    2351 	.db	9
      0005D0 0C                    2352 	.db	12
      0005D1 08                    2353 	.uleb128	8
      0005D2 02                    2354 	.uleb128	2
      0005D3 89                    2355 	.db	137
      0005D4 01                    2356 	.uleb128	1
      0005D5                       2357 Ldebug_CIE7_end:
      0005D5 00 00 00 13           2358 	.dw	0,19
      0005D9 00 00 05 C3           2359 	.dw	0,(Ldebug_CIE7_start-4)
      0005DD 00 00 81 DA           2360 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)	;initial loc
      0005E1 00 00 00 06           2361 	.dw	0,Sstm8s_gpio$GPIO_Write$87-Sstm8s_gpio$GPIO_Write$83
      0005E5 01                    2362 	.db	1
      0005E6 00 00 81 DA           2363 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
      0005EA 0E                    2364 	.db	14
      0005EB 02                    2365 	.uleb128	2
                                   2366 
                                   2367 	.area .debug_frame (NOLOAD)
      0005EC 00 00                 2368 	.dw	0
      0005EE 00 0E                 2369 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      0005F0                       2370 Ldebug_CIE8_start:
      0005F0 FF FF                 2371 	.dw	0xffff
      0005F2 FF FF                 2372 	.dw	0xffff
      0005F4 01                    2373 	.db	1
      0005F5 00                    2374 	.db	0
      0005F6 01                    2375 	.uleb128	1
      0005F7 7F                    2376 	.sleb128	-1
      0005F8 09                    2377 	.db	9
      0005F9 0C                    2378 	.db	12
      0005FA 08                    2379 	.uleb128	8
      0005FB 02                    2380 	.uleb128	2
      0005FC 89                    2381 	.db	137
      0005FD 01                    2382 	.uleb128	1
      0005FE                       2383 Ldebug_CIE8_end:
      0005FE 00 00 00 FA           2384 	.dw	0,250
      000602 00 00 05 EC           2385 	.dw	0,(Ldebug_CIE8_start-4)
      000606 00 00 80 C4           2386 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
      00060A 00 00 01 16           2387 	.dw	0,Sstm8s_gpio$GPIO_Init$81-Sstm8s_gpio$GPIO_Init$10
      00060E 01                    2388 	.db	1
      00060F 00 00 80 C4           2389 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      000613 0E                    2390 	.db	14
      000614 02                    2391 	.uleb128	2
      000615 01                    2392 	.db	1
      000616 00 00 80 C6           2393 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      00061A 0E                    2394 	.db	14
      00061B 07                    2395 	.uleb128	7
      00061C 01                    2396 	.db	1
      00061D 00 00 80 D6           2397 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      000621 0E                    2398 	.db	14
      000622 07                    2399 	.uleb128	7
      000623 01                    2400 	.db	1
      000624 00 00 80 DF           2401 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      000628 0E                    2402 	.db	14
      000629 07                    2403 	.uleb128	7
      00062A 01                    2404 	.db	1
      00062B 00 00 80 E8           2405 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      00062F 0E                    2406 	.db	14
      000630 07                    2407 	.uleb128	7
      000631 01                    2408 	.db	1
      000632 00 00 80 F1           2409 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      000636 0E                    2410 	.db	14
      000637 07                    2411 	.uleb128	7
      000638 01                    2412 	.db	1
      000639 00 00 80 FA           2413 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      00063D 0E                    2414 	.db	14
      00063E 07                    2415 	.uleb128	7
      00063F 01                    2416 	.db	1
      000640 00 00 81 03           2417 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      000644 0E                    2418 	.db	14
      000645 07                    2419 	.uleb128	7
      000646 01                    2420 	.db	1
      000647 00 00 81 0C           2421 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      00064B 0E                    2422 	.db	14
      00064C 07                    2423 	.uleb128	7
      00064D 01                    2424 	.db	1
      00064E 00 00 81 15           2425 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      000652 0E                    2426 	.db	14
      000653 07                    2427 	.uleb128	7
      000654 01                    2428 	.db	1
      000655 00 00 81 1E           2429 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      000659 0E                    2430 	.db	14
      00065A 07                    2431 	.uleb128	7
      00065B 01                    2432 	.db	1
      00065C 00 00 81 27           2433 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      000660 0E                    2434 	.db	14
      000661 07                    2435 	.uleb128	7
      000662 01                    2436 	.db	1
      000663 00 00 81 30           2437 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      000667 0E                    2438 	.db	14
      000668 07                    2439 	.uleb128	7
      000669 01                    2440 	.db	1
      00066A 00 00 81 32           2441 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      00066E 0E                    2442 	.db	14
      00066F 08                    2443 	.uleb128	8
      000670 01                    2444 	.db	1
      000671 00 00 81 34           2445 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      000675 0E                    2446 	.db	14
      000676 0A                    2447 	.uleb128	10
      000677 01                    2448 	.db	1
      000678 00 00 81 36           2449 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      00067C 0E                    2450 	.db	14
      00067D 0B                    2451 	.uleb128	11
      00067E 01                    2452 	.db	1
      00067F 00 00 81 38           2453 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000683 0E                    2454 	.db	14
      000684 0C                    2455 	.uleb128	12
      000685 01                    2456 	.db	1
      000686 00 00 81 3A           2457 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      00068A 0E                    2458 	.db	14
      00068B 0D                    2459 	.uleb128	13
      00068C 01                    2460 	.db	1
      00068D 00 00 81 3F           2461 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      000691 0E                    2462 	.db	14
      000692 07                    2463 	.uleb128	7
      000693 01                    2464 	.db	1
      000694 00 00 81 48           2465 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      000698 0E                    2466 	.db	14
      000699 08                    2467 	.uleb128	8
      00069A 01                    2468 	.db	1
      00069B 00 00 81 4A           2469 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      00069F 0E                    2470 	.db	14
      0006A0 0A                    2471 	.uleb128	10
      0006A1 01                    2472 	.db	1
      0006A2 00 00 81 4C           2473 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      0006A6 0E                    2474 	.db	14
      0006A7 0B                    2475 	.uleb128	11
      0006A8 01                    2476 	.db	1
      0006A9 00 00 81 4E           2477 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      0006AD 0E                    2478 	.db	14
      0006AE 0C                    2479 	.uleb128	12
      0006AF 01                    2480 	.db	1
      0006B0 00 00 81 50           2481 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      0006B4 0E                    2482 	.db	14
      0006B5 0D                    2483 	.uleb128	13
      0006B6 01                    2484 	.db	1
      0006B7 00 00 81 55           2485 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0006BB 0E                    2486 	.db	14
      0006BC 07                    2487 	.uleb128	7
      0006BD 01                    2488 	.db	1
      0006BE 00 00 81 61           2489 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      0006C2 0E                    2490 	.db	14
      0006C3 08                    2491 	.uleb128	8
      0006C4 01                    2492 	.db	1
      0006C5 00 00 81 67           2493 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      0006C9 0E                    2494 	.db	14
      0006CA 07                    2495 	.uleb128	7
      0006CB 01                    2496 	.db	1
      0006CC 00 00 81 7B           2497 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0006D0 0E                    2498 	.db	14
      0006D1 08                    2499 	.uleb128	8
      0006D2 01                    2500 	.db	1
      0006D3 00 00 81 80           2501 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0006D7 0E                    2502 	.db	14
      0006D8 07                    2503 	.uleb128	7
      0006D9 01                    2504 	.db	1
      0006DA 00 00 81 A9           2505 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      0006DE 0E                    2506 	.db	14
      0006DF 08                    2507 	.uleb128	8
      0006E0 01                    2508 	.db	1
      0006E1 00 00 81 AE           2509 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      0006E5 0E                    2510 	.db	14
      0006E6 07                    2511 	.uleb128	7
      0006E7 01                    2512 	.db	1
      0006E8 00 00 81 C0           2513 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      0006EC 0E                    2514 	.db	14
      0006ED 08                    2515 	.uleb128	8
      0006EE 01                    2516 	.db	1
      0006EF 00 00 81 C5           2517 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      0006F3 0E                    2518 	.db	14
      0006F4 07                    2519 	.uleb128	7
      0006F5 01                    2520 	.db	1
      0006F6 00 00 81 D9           2521 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      0006FA 0E                    2522 	.db	14
      0006FB 02                    2523 	.uleb128	2
                                   2524 
                                   2525 	.area .debug_frame (NOLOAD)
      0006FC 00 00                 2526 	.dw	0
      0006FE 00 0E                 2527 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      000700                       2528 Ldebug_CIE9_start:
      000700 FF FF                 2529 	.dw	0xffff
      000702 FF FF                 2530 	.dw	0xffff
      000704 01                    2531 	.db	1
      000705 00                    2532 	.db	0
      000706 01                    2533 	.uleb128	1
      000707 7F                    2534 	.sleb128	-1
      000708 09                    2535 	.db	9
      000709 0C                    2536 	.db	12
      00070A 08                    2537 	.uleb128	8
      00070B 02                    2538 	.uleb128	2
      00070C 89                    2539 	.db	137
      00070D 01                    2540 	.uleb128	1
      00070E                       2541 Ldebug_CIE9_end:
      00070E 00 00 00 13           2542 	.dw	0,19
      000712 00 00 06 FC           2543 	.dw	0,(Ldebug_CIE9_start-4)
      000716 00 00 80 B1           2544 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
      00071A 00 00 00 13           2545 	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
      00071E 01                    2546 	.db	1
      00071F 00 00 80 B1           2547 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      000723 0E                    2548 	.db	14
      000724 02                    2549 	.uleb128	2
