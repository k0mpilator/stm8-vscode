;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _assert_failed
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$delay$0 ==.
;	./src/main.c: 39: static void delay(uint32_t t) {
; genLabel
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_delay:
	Smain$delay$1 ==.
	Smain$delay$2 ==.
;	./src/main.c: 40: while (--t);
; genAssign
	ldw	y, (0x05, sp)
	ldw	x, (0x03, sp)
; genLabel
00101$:
; genMinus
	subw	y, #0x0001
	ld	a, xl
	sbc	a, #0x00
	ld	xl, a
	ld	a, xh
	sbc	a, #0x00
	ld	xh, a
; genIfx
	tnzw	y
	jrne	00112$
	tnzw	x
	jreq	00113$
00112$:
	jp	00101$
00113$:
; genLabel
00104$:
	Smain$delay$3 ==.
;	./src/main.c: 41: }
; genEndFunction
	Smain$delay$4 ==.
	XFmain$delay$0$0 ==.
	ret
	Smain$delay$5 ==.
	Smain$main$6 ==.
;	./src/main.c: 43: void main(void){
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
	Smain$main$7 ==.
	Smain$main$8 ==.
;	./src/main.c: 45: GPIO_DeInit(LED_PORT);
; genIPush
	push	#0x05
	Smain$main$9 ==.
	push	#0x50
	Smain$main$10 ==.
; genCall
	call	_GPIO_DeInit
	addw	sp, #2
	Smain$main$11 ==.
	Smain$main$12 ==.
;	./src/main.c: 46: GPIO_Init(LED_PORT, LED, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
	Smain$main$13 ==.
; genIPush
	push	#0x20
	Smain$main$14 ==.
; genIPush
	push	#0x05
	Smain$main$15 ==.
	push	#0x50
	Smain$main$16 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$main$17 ==.
; genLabel
00102$:
	Smain$main$18 ==.
	Smain$main$19 ==.
;	./src/main.c: 49: delay(60000);
; genIPush
	push	#0x60
	Smain$main$20 ==.
	push	#0xea
	Smain$main$21 ==.
	clrw	x
	pushw	x
	Smain$main$22 ==.
; genCall
	call	_delay
	addw	sp, #4
	Smain$main$23 ==.
	Smain$main$24 ==.
;	./src/main.c: 50: GPIO_WriteReverse(LED_PORT, LED);
; genIPush
	push	#0x20
	Smain$main$25 ==.
; genIPush
	push	#0x05
	Smain$main$26 ==.
	push	#0x50
	Smain$main$27 ==.
; genCall
	call	_GPIO_WriteReverse
	addw	sp, #3
	Smain$main$28 ==.
; genGoto
	jp	00102$
	Smain$main$29 ==.
; genLabel
00104$:
	Smain$main$30 ==.
;	./src/main.c: 52: }
; genEndFunction
	Smain$main$31 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$32 ==.
	Smain$assert_failed$33 ==.
;	./src/main.c: 65: void assert_failed(uint8_t* file, uint32_t line)
; genLabel
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_assert_failed:
	Smain$assert_failed$34 ==.
	Smain$assert_failed$35 ==.
;	./src/main.c: 74: while (1)
; genLabel
00102$:
; genGoto
	jp	00102$
; genLabel
00104$:
	Smain$assert_failed$36 ==.
;	./src/main.c: 77: }
; genEndFunction
	Smain$assert_failed$37 ==.
	XG$assert_failed$0$0 ==.
	ret
	Smain$assert_failed$38 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "/usr/local/bin/../share/sdcc/include/stm8"
	.db	0
	.ascii "/usr/local/share/sdcc/include/stm8"
	.db	0
	.ascii "/usr/local/bin/../share/sdcc/include"
	.db	0
	.ascii "/usr/local/share/sdcc/include"
	.db	0
	.db	0
	.ascii "./src/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$delay$0)
	.db	3
	.sleb128	38
	.db	1
	.db	9
	.dw	Smain$delay$2-Smain$delay$0
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$delay$3-Smain$delay$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$delay$4-Smain$delay$3
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$6)
	.db	3
	.sleb128	42
	.db	1
	.db	9
	.dw	Smain$main$8-Smain$main$6
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$12-Smain$main$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$19-Smain$main$12
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$24-Smain$main$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$30-Smain$main$24
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$main$31-Smain$main$30
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$assert_failed$33)
	.db	3
	.sleb128	64
	.db	1
	.db	9
	.dw	Smain$assert_failed$35-Smain$assert_failed$33
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Smain$assert_failed$36-Smain$assert_failed$35
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$assert_failed$37-Smain$assert_failed$36
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$assert_failed$34)
	.dw	0,(Smain$assert_failed$38)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$main$28)
	.dw	0,(Smain$main$32)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$27)
	.dw	0,(Smain$main$28)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$26)
	.dw	0,(Smain$main$27)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$25)
	.dw	0,(Smain$main$26)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$23)
	.dw	0,(Smain$main$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$22)
	.dw	0,(Smain$main$23)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$21)
	.dw	0,(Smain$main$22)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$20)
	.dw	0,(Smain$main$21)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$17)
	.dw	0,(Smain$main$20)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$16)
	.dw	0,(Smain$main$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$15)
	.dw	0,(Smain$main$16)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$14)
	.dw	0,(Smain$main$15)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$13)
	.dw	0,(Smain$main$14)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$11)
	.dw	0,(Smain$main$13)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$10)
	.dw	0,(Smain$main$11)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$9)
	.dw	0,(Smain$main$10)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$7)
	.dw	0,(Smain$main$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$delay$1)
	.dw	0,(Smain$delay$5)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	6
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "./src/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.9.0 #11195"
	.db	0
	.uleb128	2
	.dw	0,91
	.ascii "delay"
	.db	0
	.dw	0,(_delay)
	.dw	0,(XFmain$delay$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+232)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "t"
	.db	0
	.dw	0,91
	.uleb128	0
	.uleb128	4
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	2
	.dw	0,141
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	5
	.dw	0,(Smain$main$18)
	.dw	0,(Smain$main$29)
	.uleb128	0
	.uleb128	2
	.dw	0,206
	.ascii "assert_failed"
	.db	0
	.dw	0,(_assert_failed)
	.dw	0,(XG$assert_failed$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	6
	.db	2
	.dw	0,206
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "file"
	.db	0
	.dw	0,173
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "line"
	.db	0
	.dw	0,91
	.uleb128	0
	.uleb128	4
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,108
	.ascii "main"
	.db	0
	.dw	0,141
	.ascii "assert_failed"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$assert_failed$34)	;initial loc
	.dw	0,Smain$assert_failed$38-Smain$assert_failed$34
	.db	1
	.dw	0,(Smain$assert_failed$34)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,131
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$main$7)	;initial loc
	.dw	0,Smain$main$32-Smain$main$7
	.db	1
	.dw	0,(Smain$main$7)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$9)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$10)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$11)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$13)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$14)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$15)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$17)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$20)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$21)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$22)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$23)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$25)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$26)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$27)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$28)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smain$delay$1)	;initial loc
	.dw	0,Smain$delay$5-Smain$delay$1
	.db	1
	.dw	0,(Smain$delay$1)
	.db	14
	.uleb128	2
