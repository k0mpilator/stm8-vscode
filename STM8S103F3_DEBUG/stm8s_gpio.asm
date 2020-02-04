;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_Write
	.globl _GPIO_WriteHigh
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteReverse
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadInputPin
	.globl _GPIO_ExternalPullUpConfig
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_gpio$GPIO_DeInit$0 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_DeInit:
	Sstm8s_gpio$GPIO_DeInit$1 ==.
	Sstm8s_gpio$GPIO_DeInit$2 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
; genAssign
	ldw	y, (0x03, sp)
; genPointerSet
	clr	(y)
	Sstm8s_gpio$GPIO_DeInit$3 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	clr	(x)
	Sstm8s_gpio$GPIO_DeInit$4 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerSet
	clr	(x)
	Sstm8s_gpio$GPIO_DeInit$5 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
; genPlus
	ldw	x, y
	addw	x, #0x0004
; genPointerSet
	clr	(x)
; genLabel
00101$:
	Sstm8s_gpio$GPIO_DeInit$6 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
; genEndFunction
	Sstm8s_gpio$GPIO_DeInit$7 ==.
	XG$GPIO_DeInit$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_DeInit$8 ==.
	Sstm8s_gpio$GPIO_Init$9 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
; genLabel
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_GPIO_Init:
	Sstm8s_gpio$GPIO_Init$10 ==.
	sub	sp, #5
	Sstm8s_gpio$GPIO_Init$11 ==.
	Sstm8s_gpio$GPIO_Init$12 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
; genIfx
	tnz	(0x0b, sp)
	jrne	00237$
	jp	00116$
00237$:
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0x40
	jrne	00239$
	jp	00116$
00239$:
	Sstm8s_gpio$GPIO_Init$13 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0x20
	jrne	00242$
	jp	00116$
00242$:
	Sstm8s_gpio$GPIO_Init$14 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0x60
	jrne	00245$
	jp	00116$
00245$:
	Sstm8s_gpio$GPIO_Init$15 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0xa0
	jrne	00248$
	jp	00116$
00248$:
	Sstm8s_gpio$GPIO_Init$16 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0xe0
	jrne	00251$
	jp	00116$
00251$:
	Sstm8s_gpio$GPIO_Init$17 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0x80
	jrne	00254$
	jp	00116$
00254$:
	Sstm8s_gpio$GPIO_Init$18 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0xc0
	jrne	00257$
	jp	00116$
00257$:
	Sstm8s_gpio$GPIO_Init$19 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0xb0
	jrne	00260$
	jp	00116$
00260$:
	Sstm8s_gpio$GPIO_Init$20 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0xf0
	jrne	00263$
	jp	00116$
00263$:
	Sstm8s_gpio$GPIO_Init$21 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0x90
	jrne	00266$
	jp	00116$
00266$:
	Sstm8s_gpio$GPIO_Init$22 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x0b, sp)
	cp	a, #0xd0
	jrne	00269$
	jp	00116$
00269$:
	Sstm8s_gpio$GPIO_Init$23 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x4d
	Sstm8s_gpio$GPIO_Init$24 ==.
	clrw	x
	pushw	x
	Sstm8s_gpio$GPIO_Init$25 ==.
	push	#0x00
	Sstm8s_gpio$GPIO_Init$26 ==.
; genIPush
	push	#<(___str_0 + 0)
	Sstm8s_gpio$GPIO_Init$27 ==.
	push	#((___str_0 + 0) >> 8)
	Sstm8s_gpio$GPIO_Init$28 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_gpio$GPIO_Init$29 ==.
; genLabel
00116$:
	Sstm8s_gpio$GPIO_Init$30 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
; genIfx
	tnz	(0x0a, sp)
	jreq	00271$
	jp	00151$
00271$:
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x4e
	Sstm8s_gpio$GPIO_Init$31 ==.
	clrw	x
	pushw	x
	Sstm8s_gpio$GPIO_Init$32 ==.
	push	#0x00
	Sstm8s_gpio$GPIO_Init$33 ==.
; genIPush
	push	#<(___str_0 + 0)
	Sstm8s_gpio$GPIO_Init$34 ==.
	push	#((___str_0 + 0) >> 8)
	Sstm8s_gpio$GPIO_Init$35 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_gpio$GPIO_Init$36 ==.
; genLabel
00151$:
	Sstm8s_gpio$GPIO_Init$37 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genAssign
	ldw	y, (0x08, sp)
; genPlus
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x01, sp), x
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genCpl
	push	a
	Sstm8s_gpio$GPIO_Init$38 ==.
	ld	a, (0x0b, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
	Sstm8s_gpio$GPIO_Init$39 ==.
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$40 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
; genPlus
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x04, sp), x
	Sstm8s_gpio$GPIO_Init$41 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
; genAnd
	tnz	(0x0b, sp)
	jrmi	00272$
	jp	00105$
00272$:
; skipping generated iCode
	Sstm8s_gpio$GPIO_Init$42 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
; genPointerGet
	ld	a, (y)
	Sstm8s_gpio$GPIO_Init$43 ==.
	Sstm8s_gpio$GPIO_Init$44 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
; genAnd
	push	a
	Sstm8s_gpio$GPIO_Init$45 ==.
	ld	a, (0x0c, sp)
	bcp	a, #0x10
	pop	a
	Sstm8s_gpio$GPIO_Init$46 ==.
	jrne	00273$
	jp	00102$
00273$:
; skipping generated iCode
	Sstm8s_gpio$GPIO_Init$47 ==.
	Sstm8s_gpio$GPIO_Init$48 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ld	(y), a
	Sstm8s_gpio$GPIO_Init$49 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_gpio$GPIO_Init$50 ==.
	Sstm8s_gpio$GPIO_Init$51 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	(y), a
	Sstm8s_gpio$GPIO_Init$52 ==.
; genLabel
00103$:
	Sstm8s_gpio$GPIO_Init$53 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$54 ==.
; genGoto
	jp	00106$
; genLabel
00105$:
	Sstm8s_gpio$GPIO_Init$55 ==.
	Sstm8s_gpio$GPIO_Init$56 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$57 ==.
; genLabel
00106$:
	Sstm8s_gpio$GPIO_Init$58 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerGet
	ld	a, (x)
	Sstm8s_gpio$GPIO_Init$59 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
; genAnd
	push	a
	Sstm8s_gpio$GPIO_Init$60 ==.
	ld	a, (0x0c, sp)
	bcp	a, #0x40
	pop	a
	Sstm8s_gpio$GPIO_Init$61 ==.
	jrne	00274$
	jp	00108$
00274$:
; skipping generated iCode
	Sstm8s_gpio$GPIO_Init$62 ==.
	Sstm8s_gpio$GPIO_Init$63 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$64 ==.
; genGoto
	jp	00109$
; genLabel
00108$:
	Sstm8s_gpio$GPIO_Init$65 ==.
	Sstm8s_gpio$GPIO_Init$66 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$67 ==.
; genLabel
00109$:
	Sstm8s_gpio$GPIO_Init$68 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
	Sstm8s_gpio$GPIO_Init$69 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
; genAnd
	push	a
	Sstm8s_gpio$GPIO_Init$70 ==.
	ld	a, (0x0c, sp)
	bcp	a, #0x20
	pop	a
	Sstm8s_gpio$GPIO_Init$71 ==.
	jrne	00275$
	jp	00111$
00275$:
; skipping generated iCode
	Sstm8s_gpio$GPIO_Init$72 ==.
	Sstm8s_gpio$GPIO_Init$73 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$74 ==.
; genGoto
	jp	00113$
; genLabel
00111$:
	Sstm8s_gpio$GPIO_Init$75 ==.
	Sstm8s_gpio$GPIO_Init$76 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$77 ==.
; genLabel
00113$:
	Sstm8s_gpio$GPIO_Init$78 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
; genEndFunction
	addw	sp, #5
	Sstm8s_gpio$GPIO_Init$79 ==.
	Sstm8s_gpio$GPIO_Init$80 ==.
	XG$GPIO_Init$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_Init$81 ==.
	Sstm8s_gpio$GPIO_Write$82 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
; genLabel
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_Write:
	Sstm8s_gpio$GPIO_Write$83 ==.
	Sstm8s_gpio$GPIO_Write$84 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
; genAssign
	ldw	x, (0x03, sp)
; genPointerSet
	ld	a, (0x05, sp)
	ld	(x), a
; genLabel
00101$:
	Sstm8s_gpio$GPIO_Write$85 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
; genEndFunction
	Sstm8s_gpio$GPIO_Write$86 ==.
	XG$GPIO_Write$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_Write$87 ==.
	Sstm8s_gpio$GPIO_WriteHigh$88 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_WriteHigh:
	Sstm8s_gpio$GPIO_WriteHigh$89 ==.
	Sstm8s_gpio$GPIO_WriteHigh$90 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
; genAssign
	ldw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
	Sstm8s_gpio$GPIO_WriteHigh$91 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
; genEndFunction
	Sstm8s_gpio$GPIO_WriteHigh$92 ==.
	XG$GPIO_WriteHigh$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_WriteHigh$93 ==.
	Sstm8s_gpio$GPIO_WriteLow$94 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteLow
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_GPIO_WriteLow:
	Sstm8s_gpio$GPIO_WriteLow$95 ==.
	push	a
	Sstm8s_gpio$GPIO_WriteLow$96 ==.
	Sstm8s_gpio$GPIO_WriteLow$97 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
; genAssign
	ldw	x, (0x04, sp)
; genPointerGet
	ld	a, (x)
	ld	(0x01, sp), a
; genCpl
	ld	a, (0x06, sp)
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
	Sstm8s_gpio$GPIO_WriteLow$98 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
; genEndFunction
	pop	a
	Sstm8s_gpio$GPIO_WriteLow$99 ==.
	Sstm8s_gpio$GPIO_WriteLow$100 ==.
	XG$GPIO_WriteLow$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_WriteLow$101 ==.
	Sstm8s_gpio$GPIO_WriteReverse$102 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteReverse
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_WriteReverse:
	Sstm8s_gpio$GPIO_WriteReverse$103 ==.
	Sstm8s_gpio$GPIO_WriteReverse$104 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
; genAssign
	ldw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genXor
	xor	a, (0x05, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
	Sstm8s_gpio$GPIO_WriteReverse$105 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
; genEndFunction
	Sstm8s_gpio$GPIO_WriteReverse$106 ==.
	XG$GPIO_WriteReverse$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_WriteReverse$107 ==.
	Sstm8s_gpio$GPIO_ReadOutputData$108 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadOutputData:
	Sstm8s_gpio$GPIO_ReadOutputData$109 ==.
	Sstm8s_gpio$GPIO_ReadOutputData$110 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
; genAssign
	ldw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
00101$:
	Sstm8s_gpio$GPIO_ReadOutputData$111 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
; genEndFunction
	Sstm8s_gpio$GPIO_ReadOutputData$112 ==.
	XG$GPIO_ReadOutputData$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_ReadOutputData$113 ==.
	Sstm8s_gpio$GPIO_ReadInputData$114 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadInputData:
	Sstm8s_gpio$GPIO_ReadInputData$115 ==.
	Sstm8s_gpio$GPIO_ReadInputData$116 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
; genAssign
	ldw	x, (0x03, sp)
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genReturn
; genLabel
00101$:
	Sstm8s_gpio$GPIO_ReadInputData$117 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
; genEndFunction
	Sstm8s_gpio$GPIO_ReadInputData$118 ==.
	XG$GPIO_ReadInputData$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_ReadInputData$119 ==.
	Sstm8s_gpio$GPIO_ReadInputPin$120 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadInputPin:
	Sstm8s_gpio$GPIO_ReadInputPin$121 ==.
	Sstm8s_gpio$GPIO_ReadInputPin$122 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
; genAssign
	ldw	x, (0x03, sp)
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genAnd
	and	a, (0x05, sp)
; genReturn
; genLabel
00101$:
	Sstm8s_gpio$GPIO_ReadInputPin$123 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
; genEndFunction
	Sstm8s_gpio$GPIO_ReadInputPin$124 ==.
	XG$GPIO_ReadInputPin$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_ReadInputPin$125 ==.
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$126 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ExternalPullUpConfig:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$127 ==.
	push	a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$128 ==.
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
; genIfx
	tnz	(0x06, sp)
	jreq	00133$
	jp	00107$
00133$:
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xe4
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$130 ==.
	clrw	x
	pushw	x
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$131 ==.
	push	#0x00
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$132 ==.
; genIPush
	push	#<(___str_0 + 0)
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$133 ==.
	push	#((___str_0 + 0) >> 8)
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$134 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$135 ==.
; genLabel
00107$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
; genIfx
	tnz	(0x07, sp)
	jrne	00134$
	jp	00109$
00134$:
; genCmpEQorNE
	ld	a, (0x07, sp)
	dec	a
	jrne	00136$
	jp	00109$
00136$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$137 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xe5
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$138 ==.
	clrw	x
	pushw	x
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$139 ==.
	push	#0x00
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$140 ==.
; genIPush
	push	#<(___str_0 + 0)
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$141 ==.
	push	#((___str_0 + 0) >> 8)
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$142 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$143 ==.
; genLabel
00109$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genAssign
	ldw	x, (0x04, sp)
; genPlus
	addw	x, #0x0003
; genPointerGet
	ld	a, (x)
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
; genIfx
	tnz	(0x07, sp)
	jrne	00138$
	jp	00102$
00138$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$146 ==.
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	(x), a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$148 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$149 ==.
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genCpl
	push	a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$151 ==.
	ld	a, (0x07, sp)
	cpl	a
	ld	(0x02, sp), a
	pop	a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$152 ==.
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$153 ==.
; genLabel
00104$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154 ==.
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
; genEndFunction
	pop	a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$155 ==.
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$156 ==.
	XG$GPIO_ExternalPullUpConfig$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$157 ==.
	.area CODE
	.area CONST
Fstm8s_gpio$__str_0$0_0$0 == .
	.area CONST
___str_0:
	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
	.db 0x00
	.area CODE
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
	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
	.db	3
	.sleb128	52
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
	.db	3
	.sleb128	70
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$30-Sstm8s_gpio$GPIO_Init$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$37-Sstm8s_gpio$GPIO_Init$30
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$40-Sstm8s_gpio$GPIO_Init$37
	.db	3
	.sleb128	17
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$40
	.db	3
	.sleb128	-11
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$41
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$53
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$58-Sstm8s_gpio$GPIO_Init$56
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$59-Sstm8s_gpio$GPIO_Init$58
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$63-Sstm8s_gpio$GPIO_Init$59
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$66-Sstm8s_gpio$GPIO_Init$63
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$68-Sstm8s_gpio$GPIO_Init$66
	.db	3
	.sleb128	-35
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$69-Sstm8s_gpio$GPIO_Init$68
	.db	3
	.sleb128	42
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$73-Sstm8s_gpio$GPIO_Init$69
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$76-Sstm8s_gpio$GPIO_Init$73
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$78-Sstm8s_gpio$GPIO_Init$76
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_Init$80-Sstm8s_gpio$GPIO_Init$78
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_Write$82)
	.db	3
	.sleb128	140
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Write$84-Sstm8s_gpio$GPIO_Write$82
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Write$85-Sstm8s_gpio$GPIO_Write$84
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_Write$86-Sstm8s_gpio$GPIO_Write$85
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$88)
	.db	3
	.sleb128	153
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteHigh$90-Sstm8s_gpio$GPIO_WriteHigh$88
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteHigh$91-Sstm8s_gpio$GPIO_WriteHigh$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$92-Sstm8s_gpio$GPIO_WriteHigh$91
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$94)
	.db	3
	.sleb128	166
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteLow$97-Sstm8s_gpio$GPIO_WriteLow$94
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteLow$98-Sstm8s_gpio$GPIO_WriteLow$97
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_WriteLow$100-Sstm8s_gpio$GPIO_WriteLow$98
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$102)
	.db	3
	.sleb128	179
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteReverse$104-Sstm8s_gpio$GPIO_WriteReverse$102
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteReverse$105-Sstm8s_gpio$GPIO_WriteReverse$104
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$106-Sstm8s_gpio$GPIO_WriteReverse$105
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$108)
	.db	3
	.sleb128	190
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadOutputData$110-Sstm8s_gpio$GPIO_ReadOutputData$108
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadOutputData$111-Sstm8s_gpio$GPIO_ReadOutputData$110
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$112-Sstm8s_gpio$GPIO_ReadOutputData$111
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$114)
	.db	3
	.sleb128	201
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputData$116-Sstm8s_gpio$GPIO_ReadInputData$114
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputData$117-Sstm8s_gpio$GPIO_ReadInputData$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$118-Sstm8s_gpio$GPIO_ReadInputData$117
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$120)
	.db	3
	.sleb128	212
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputPin$122-Sstm8s_gpio$GPIO_ReadInputPin$120
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputPin$123-Sstm8s_gpio$GPIO_ReadInputPin$122
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$124-Sstm8s_gpio$GPIO_ReadInputPin$123
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$126)
	.db	3
	.sleb128	224
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129-Sstm8s_gpio$GPIO_ExternalPullUpConfig$126
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136-Sstm8s_gpio$GPIO_ExternalPullUpConfig$129
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144-Sstm8s_gpio$GPIO_ExternalPullUpConfig$136
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145-Sstm8s_gpio$GPIO_ExternalPullUpConfig$144
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147-Sstm8s_gpio$GPIO_ExternalPullUpConfig$145
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150-Sstm8s_gpio$GPIO_ExternalPullUpConfig$147
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154-Sstm8s_gpio$GPIO_ExternalPullUpConfig$150
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$156-Sstm8s_gpio$GPIO_ExternalPullUpConfig$154
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$157)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$125)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$119)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$113)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$107)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$101)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$93)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
	.dw	0,(Sstm8s_gpio$GPIO_Write$87)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
	.dw	0,(Sstm8s_gpio$GPIO_Init$81)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
	.dw	2
	.db	120
	.sleb128	12
	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
	.dw	2
	.db	120
	.sleb128	11
	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
	.dw	2
	.db	120
	.sleb128	12
	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
	.dw	2
	.db	120
	.sleb128	11
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
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
	.uleb128	4
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.uleb128	13
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
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
	.uleb128	15
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	11
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
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	38
	.db	0
	.uleb128	73
	.uleb128	19
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
	.uleb128	13
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	19
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	8
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
	.ascii "./STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.9.0 #11195"
	.db	0
	.uleb128	2
	.dw	0,220
	.ascii "GPIO_DeInit"
	.db	0
	.dw	0,(_GPIO_DeInit)
	.dw	0,(XG$GPIO_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+804)
	.uleb128	3
	.dw	0,199
	.ascii "GPIO_struct"
	.db	0
	.db	5
	.uleb128	4
	.dw	0,220
	.uleb128	5
	.ascii "ODR"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,133
	.uleb128	5
	.ascii "IDR"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,133
	.uleb128	5
	.ascii "DDR"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,133
	.uleb128	5
	.ascii "CR1"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,133
	.uleb128	5
	.ascii "CR2"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,133
	.uleb128	0
	.uleb128	6
	.db	2
	.dw	0,115
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	0
	.uleb128	8
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,392
	.ascii "GPIO_Init"
	.db	0
	.dw	0,(_GPIO_Init)
	.dw	0,(XG$GPIO_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+388)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,392
	.uleb128	7
	.db	2
	.db	145
	.sleb128	5
	.ascii "GPIO_Mode"
	.db	0
	.dw	0,392
	.uleb128	9
	.dw	0,346
	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
	.uleb128	0
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$55)
	.dw	0,(Sstm8s_gpio$GPIO_Init$57)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$62)
	.dw	0,(Sstm8s_gpio$GPIO_Init$64)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$65)
	.dw	0,(Sstm8s_gpio$GPIO_Init$67)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$72)
	.dw	0,(Sstm8s_gpio$GPIO_Init$74)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_Init$75)
	.dw	0,(Sstm8s_gpio$GPIO_Init$77)
	.uleb128	0
	.uleb128	8
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,469
	.ascii "GPIO_Write"
	.db	0
	.dw	0,(_GPIO_Write)
	.dw	0,(XG$GPIO_Write$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+368)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "PortVal"
	.db	0
	.dw	0,392
	.uleb128	0
	.uleb128	2
	.dw	0,534
	.ascii "GPIO_WriteHigh"
	.db	0
	.dw	0,(_GPIO_WriteHigh)
	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+348)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "PortPins"
	.db	0
	.dw	0,392
	.uleb128	0
	.uleb128	2
	.dw	0,598
	.ascii "GPIO_WriteLow"
	.db	0
	.dw	0,(_GPIO_WriteLow)
	.dw	0,(XG$GPIO_WriteLow$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+304)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "PortPins"
	.db	0
	.dw	0,392
	.uleb128	0
	.uleb128	2
	.dw	0,666
	.ascii "GPIO_WriteReverse"
	.db	0
	.dw	0,(_GPIO_WriteReverse)
	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+284)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "PortPins"
	.db	0
	.dw	0,392
	.uleb128	0
	.uleb128	11
	.dw	0,723
	.ascii "GPIO_ReadOutputData"
	.db	0
	.dw	0,(_GPIO_ReadOutputData)
	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+264)
	.dw	0,392
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	0
	.uleb128	11
	.dw	0,779
	.ascii "GPIO_ReadInputData"
	.db	0
	.dw	0,(_GPIO_ReadInputData)
	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+244)
	.dw	0,392
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	0
	.uleb128	11
	.dw	0,851
	.ascii "GPIO_ReadInputPin"
	.db	0
	.dw	0,(_GPIO_ReadInputPin)
	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+224)
	.dw	0,392
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,392
	.uleb128	0
	.uleb128	2
	.dw	0,962
	.ascii "GPIO_ExternalPullUpConfig"
	.db	0
	.dw	0,(_GPIO_ExternalPullUpConfig)
	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,199
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,392
	.uleb128	7
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,392
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$146)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$148)
	.uleb128	10
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$149)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$153)
	.uleb128	0
	.uleb128	12
	.dw	0,392
	.uleb128	13
	.dw	0,980
	.db	42
	.dw	0,962
	.uleb128	14
	.db	41
	.uleb128	0
	.uleb128	15
	.db	5
	.db	3
	.dw	0,(___str_0)
	.ascii "__str_0"
	.db	0
	.dw	0,967
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
	.dw	0,85
	.ascii "GPIO_DeInit"
	.db	0
	.dw	0,237
	.ascii "GPIO_Init"
	.db	0
	.dw	0,409
	.ascii "GPIO_Write"
	.db	0
	.dw	0,469
	.ascii "GPIO_WriteHigh"
	.db	0
	.dw	0,534
	.ascii "GPIO_WriteLow"
	.db	0
	.dw	0,598
	.ascii "GPIO_WriteReverse"
	.db	0
	.dw	0,666
	.ascii "GPIO_ReadOutputData"
	.db	0
	.dw	0,723
	.ascii "GPIO_ReadInputData"
	.db	0
	.dw	0,779
	.ascii "GPIO_ReadInputPin"
	.db	0
	.dw	0,851
	.ascii "GPIO_ExternalPullUpConfig"
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
	.dw	0,138
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$157-Sstm8s_gpio$GPIO_ExternalPullUpConfig$127
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$125-Sstm8s_gpio$GPIO_ReadInputPin$121
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
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
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$119-Sstm8s_gpio$GPIO_ReadInputData$115
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
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
Ldebug_CIE3_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$113-Sstm8s_gpio$GPIO_ReadOutputData$109
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
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
Ldebug_CIE4_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$107-Sstm8s_gpio$GPIO_WriteReverse$103
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
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
Ldebug_CIE5_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_WriteLow$101-Sstm8s_gpio$GPIO_WriteLow$95
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
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
Ldebug_CIE6_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$93-Sstm8s_gpio$GPIO_WriteHigh$89
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
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
Ldebug_CIE7_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_Write$83)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_Write$87-Sstm8s_gpio$GPIO_Write$83
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
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
Ldebug_CIE8_end:
	.dw	0,250
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_Init$81-Sstm8s_gpio$GPIO_Init$10
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
	.db	14
	.uleb128	13
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
	.db	14
	.uleb128	13
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
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
Ldebug_CIE9_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
	.db	14
	.uleb128	2
