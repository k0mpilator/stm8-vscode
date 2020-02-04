;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module stm8s_it
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EEPROM_EEC_IRQHandler
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _ADC1_IRQHandler
	.globl _I2C_IRQHandler
	.globl _UART1_RX_IRQHandler
	.globl _UART1_TX_IRQHandler
	.globl _TIM2_CAP_COM_IRQHandler
	.globl _TIM2_UPD_OVF_BRK_IRQHandler
	.globl _TIM1_CAP_COM_IRQHandler
	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.globl _SPI_IRQHandler
	.globl _EXTI_PORTE_IRQHandler
	.globl _EXTI_PORTD_IRQHandler
	.globl _EXTI_PORTC_IRQHandler
	.globl _EXTI_PORTB_IRQHandler
	.globl _EXTI_PORTA_IRQHandler
	.globl _CLK_IRQHandler
	.globl _AWU_IRQHandler
	.globl _TLI_IRQHandler
	.globl _TRAP_IRQHandler
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
	Sstm8s_it$TRAP_IRQHandler$0 ==.
;	./src/stm8s_it.c: 68: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
; genLabel
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TRAP_IRQHandler:
	Sstm8s_it$TRAP_IRQHandler$1 ==.
	Sstm8s_it$TRAP_IRQHandler$2 ==.
;	./src/stm8s_it.c: 73: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TRAP_IRQHandler$3 ==.
;	./src/stm8s_it.c: 74: }
; genEndFunction
	Sstm8s_it$TRAP_IRQHandler$4 ==.
	XG$TRAP_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TRAP_IRQHandler$5 ==.
	Sstm8s_it$TLI_IRQHandler$6 ==.
;	./src/stm8s_it.c: 82: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
; genLabel
;	-----------------------------------------
;	 function TLI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TLI_IRQHandler:
	Sstm8s_it$TLI_IRQHandler$7 ==.
	Sstm8s_it$TLI_IRQHandler$8 ==.
;	./src/stm8s_it.c: 88: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TLI_IRQHandler$9 ==.
;	./src/stm8s_it.c: 89: }
; genEndFunction
	Sstm8s_it$TLI_IRQHandler$10 ==.
	XG$TLI_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TLI_IRQHandler$11 ==.
	Sstm8s_it$AWU_IRQHandler$12 ==.
;	./src/stm8s_it.c: 96: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
; genLabel
;	-----------------------------------------
;	 function AWU_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_IRQHandler:
	Sstm8s_it$AWU_IRQHandler$13 ==.
	Sstm8s_it$AWU_IRQHandler$14 ==.
;	./src/stm8s_it.c: 101: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$AWU_IRQHandler$15 ==.
;	./src/stm8s_it.c: 102: }
; genEndFunction
	Sstm8s_it$AWU_IRQHandler$16 ==.
	XG$AWU_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$AWU_IRQHandler$17 ==.
	Sstm8s_it$CLK_IRQHandler$18 ==.
;	./src/stm8s_it.c: 109: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
; genLabel
;	-----------------------------------------
;	 function CLK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_IRQHandler:
	Sstm8s_it$CLK_IRQHandler$19 ==.
	Sstm8s_it$CLK_IRQHandler$20 ==.
;	./src/stm8s_it.c: 114: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$CLK_IRQHandler$21 ==.
;	./src/stm8s_it.c: 115: }
; genEndFunction
	Sstm8s_it$CLK_IRQHandler$22 ==.
	XG$CLK_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$CLK_IRQHandler$23 ==.
	Sstm8s_it$EXTI_PORTA_IRQHandler$24 ==.
;	./src/stm8s_it.c: 122: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTA_IRQHandler:
	Sstm8s_it$EXTI_PORTA_IRQHandler$25 ==.
	Sstm8s_it$EXTI_PORTA_IRQHandler$26 ==.
;	./src/stm8s_it.c: 127: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$EXTI_PORTA_IRQHandler$27 ==.
;	./src/stm8s_it.c: 128: }
; genEndFunction
	Sstm8s_it$EXTI_PORTA_IRQHandler$28 ==.
	XG$EXTI_PORTA_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$EXTI_PORTA_IRQHandler$29 ==.
	Sstm8s_it$EXTI_PORTB_IRQHandler$30 ==.
;	./src/stm8s_it.c: 135: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTB_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTB_IRQHandler:
	Sstm8s_it$EXTI_PORTB_IRQHandler$31 ==.
	Sstm8s_it$EXTI_PORTB_IRQHandler$32 ==.
;	./src/stm8s_it.c: 140: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$EXTI_PORTB_IRQHandler$33 ==.
;	./src/stm8s_it.c: 141: }
; genEndFunction
	Sstm8s_it$EXTI_PORTB_IRQHandler$34 ==.
	XG$EXTI_PORTB_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$EXTI_PORTB_IRQHandler$35 ==.
	Sstm8s_it$EXTI_PORTC_IRQHandler$36 ==.
;	./src/stm8s_it.c: 148: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTC_IRQHandler:
	Sstm8s_it$EXTI_PORTC_IRQHandler$37 ==.
	Sstm8s_it$EXTI_PORTC_IRQHandler$38 ==.
;	./src/stm8s_it.c: 153: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$EXTI_PORTC_IRQHandler$39 ==.
;	./src/stm8s_it.c: 154: }
; genEndFunction
	Sstm8s_it$EXTI_PORTC_IRQHandler$40 ==.
	XG$EXTI_PORTC_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$EXTI_PORTC_IRQHandler$41 ==.
	Sstm8s_it$EXTI_PORTD_IRQHandler$42 ==.
;	./src/stm8s_it.c: 161: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTD_IRQHandler:
	Sstm8s_it$EXTI_PORTD_IRQHandler$43 ==.
	Sstm8s_it$EXTI_PORTD_IRQHandler$44 ==.
;	./src/stm8s_it.c: 166: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$EXTI_PORTD_IRQHandler$45 ==.
;	./src/stm8s_it.c: 167: }
; genEndFunction
	Sstm8s_it$EXTI_PORTD_IRQHandler$46 ==.
	XG$EXTI_PORTD_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$EXTI_PORTD_IRQHandler$47 ==.
	Sstm8s_it$EXTI_PORTE_IRQHandler$48 ==.
;	./src/stm8s_it.c: 174: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTE_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTE_IRQHandler:
	Sstm8s_it$EXTI_PORTE_IRQHandler$49 ==.
	Sstm8s_it$EXTI_PORTE_IRQHandler$50 ==.
;	./src/stm8s_it.c: 179: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$EXTI_PORTE_IRQHandler$51 ==.
;	./src/stm8s_it.c: 180: }
; genEndFunction
	Sstm8s_it$EXTI_PORTE_IRQHandler$52 ==.
	XG$EXTI_PORTE_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$EXTI_PORTE_IRQHandler$53 ==.
	Sstm8s_it$SPI_IRQHandler$54 ==.
;	./src/stm8s_it.c: 230: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
; genLabel
;	-----------------------------------------
;	 function SPI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_IRQHandler:
	Sstm8s_it$SPI_IRQHandler$55 ==.
	Sstm8s_it$SPI_IRQHandler$56 ==.
;	./src/stm8s_it.c: 235: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$SPI_IRQHandler$57 ==.
;	./src/stm8s_it.c: 236: }
; genEndFunction
	Sstm8s_it$SPI_IRQHandler$58 ==.
	XG$SPI_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$SPI_IRQHandler$59 ==.
	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60 ==.
;	./src/stm8s_it.c: 243: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
; genLabel
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61 ==.
	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62 ==.
;	./src/stm8s_it.c: 248: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63 ==.
;	./src/stm8s_it.c: 249: }
; genEndFunction
	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64 ==.
	XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$65 ==.
	Sstm8s_it$TIM1_CAP_COM_IRQHandler$66 ==.
;	./src/stm8s_it.c: 256: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
; genLabel
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CAP_COM_IRQHandler:
	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67 ==.
	Sstm8s_it$TIM1_CAP_COM_IRQHandler$68 ==.
;	./src/stm8s_it.c: 261: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TIM1_CAP_COM_IRQHandler$69 ==.
;	./src/stm8s_it.c: 262: }
; genEndFunction
	Sstm8s_it$TIM1_CAP_COM_IRQHandler$70 ==.
	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TIM1_CAP_COM_IRQHandler$71 ==.
	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72 ==.
;	./src/stm8s_it.c: 297: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
; genLabel
;	-----------------------------------------
;	 function TIM2_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_UPD_OVF_BRK_IRQHandler:
	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73 ==.
	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74 ==.
;	./src/stm8s_it.c: 302: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$75 ==.
;	./src/stm8s_it.c: 303: }
; genEndFunction
	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$76 ==.
	XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$77 ==.
	Sstm8s_it$TIM2_CAP_COM_IRQHandler$78 ==.
;	./src/stm8s_it.c: 310: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
; genLabel
;	-----------------------------------------
;	 function TIM2_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CAP_COM_IRQHandler:
	Sstm8s_it$TIM2_CAP_COM_IRQHandler$79 ==.
	Sstm8s_it$TIM2_CAP_COM_IRQHandler$80 ==.
;	./src/stm8s_it.c: 315: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TIM2_CAP_COM_IRQHandler$81 ==.
;	./src/stm8s_it.c: 316: }
; genEndFunction
	Sstm8s_it$TIM2_CAP_COM_IRQHandler$82 ==.
	XG$TIM2_CAP_COM_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TIM2_CAP_COM_IRQHandler$83 ==.
	Sstm8s_it$UART1_TX_IRQHandler$84 ==.
;	./src/stm8s_it.c: 355: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
; genLabel
;	-----------------------------------------
;	 function UART1_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_TX_IRQHandler:
	Sstm8s_it$UART1_TX_IRQHandler$85 ==.
	Sstm8s_it$UART1_TX_IRQHandler$86 ==.
;	./src/stm8s_it.c: 360: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$UART1_TX_IRQHandler$87 ==.
;	./src/stm8s_it.c: 361: }
; genEndFunction
	Sstm8s_it$UART1_TX_IRQHandler$88 ==.
	XG$UART1_TX_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$UART1_TX_IRQHandler$89 ==.
	Sstm8s_it$UART1_RX_IRQHandler$90 ==.
;	./src/stm8s_it.c: 368: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
; genLabel
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_RX_IRQHandler:
	Sstm8s_it$UART1_RX_IRQHandler$91 ==.
	Sstm8s_it$UART1_RX_IRQHandler$92 ==.
;	./src/stm8s_it.c: 373: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$UART1_RX_IRQHandler$93 ==.
;	./src/stm8s_it.c: 374: }
; genEndFunction
	Sstm8s_it$UART1_RX_IRQHandler$94 ==.
	XG$UART1_RX_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$UART1_RX_IRQHandler$95 ==.
	Sstm8s_it$I2C_IRQHandler$96 ==.
;	./src/stm8s_it.c: 410: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
; genLabel
;	-----------------------------------------
;	 function I2C_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_IRQHandler:
	Sstm8s_it$I2C_IRQHandler$97 ==.
	Sstm8s_it$I2C_IRQHandler$98 ==.
;	./src/stm8s_it.c: 415: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$I2C_IRQHandler$99 ==.
;	./src/stm8s_it.c: 416: }
; genEndFunction
	Sstm8s_it$I2C_IRQHandler$100 ==.
	XG$I2C_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$I2C_IRQHandler$101 ==.
	Sstm8s_it$ADC1_IRQHandler$102 ==.
;	./src/stm8s_it.c: 495: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
; genLabel
;	-----------------------------------------
;	 function ADC1_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_IRQHandler:
	Sstm8s_it$ADC1_IRQHandler$103 ==.
	Sstm8s_it$ADC1_IRQHandler$104 ==.
;	./src/stm8s_it.c: 500: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$ADC1_IRQHandler$105 ==.
;	./src/stm8s_it.c: 501: }
; genEndFunction
	Sstm8s_it$ADC1_IRQHandler$106 ==.
	XG$ADC1_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$ADC1_IRQHandler$107 ==.
	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$108 ==.
;	./src/stm8s_it.c: 523: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
; genLabel
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_UPD_OVF_IRQHandler:
	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$109 ==.
	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$110 ==.
;	./src/stm8s_it.c: 528: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$111 ==.
;	./src/stm8s_it.c: 529: }
; genEndFunction
	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$112 ==.
	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$113 ==.
	Sstm8s_it$EEPROM_EEC_IRQHandler$114 ==.
;	./src/stm8s_it.c: 537: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
; genLabel
;	-----------------------------------------
;	 function EEPROM_EEC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EEPROM_EEC_IRQHandler:
	Sstm8s_it$EEPROM_EEC_IRQHandler$115 ==.
	Sstm8s_it$EEPROM_EEC_IRQHandler$116 ==.
;	./src/stm8s_it.c: 542: return;
; genReturn
; genLabel
00101$:
	Sstm8s_it$EEPROM_EEC_IRQHandler$117 ==.
;	./src/stm8s_it.c: 543: }
; genEndFunction
	Sstm8s_it$EEPROM_EEC_IRQHandler$118 ==.
	XG$EEPROM_EEC_IRQHandler$0$0 ==.
	iret
	Sstm8s_it$EEPROM_EEC_IRQHandler$119 ==.
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
	.ascii "./src/stm8s_it.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TRAP_IRQHandler$0)
	.db	3
	.sleb128	67
	.db	1
	.db	9
	.dw	Sstm8s_it$TRAP_IRQHandler$2-Sstm8s_it$TRAP_IRQHandler$0
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$TRAP_IRQHandler$3-Sstm8s_it$TRAP_IRQHandler$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TRAP_IRQHandler$4-Sstm8s_it$TRAP_IRQHandler$3
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
	.db	3
	.sleb128	81
	.db	1
	.db	9
	.dw	Sstm8s_it$TLI_IRQHandler$8-Sstm8s_it$TLI_IRQHandler$6
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_it$TLI_IRQHandler$9-Sstm8s_it$TLI_IRQHandler$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TLI_IRQHandler$10-Sstm8s_it$TLI_IRQHandler$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$AWU_IRQHandler$12)
	.db	3
	.sleb128	95
	.db	1
	.db	9
	.dw	Sstm8s_it$AWU_IRQHandler$14-Sstm8s_it$AWU_IRQHandler$12
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$AWU_IRQHandler$15-Sstm8s_it$AWU_IRQHandler$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$AWU_IRQHandler$16-Sstm8s_it$AWU_IRQHandler$15
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$CLK_IRQHandler$18)
	.db	3
	.sleb128	108
	.db	1
	.db	9
	.dw	Sstm8s_it$CLK_IRQHandler$20-Sstm8s_it$CLK_IRQHandler$18
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$CLK_IRQHandler$21-Sstm8s_it$CLK_IRQHandler$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$CLK_IRQHandler$22-Sstm8s_it$CLK_IRQHandler$21
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$24)
	.db	3
	.sleb128	121
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTA_IRQHandler$26-Sstm8s_it$EXTI_PORTA_IRQHandler$24
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTA_IRQHandler$27-Sstm8s_it$EXTI_PORTA_IRQHandler$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$EXTI_PORTA_IRQHandler$28-Sstm8s_it$EXTI_PORTA_IRQHandler$27
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$30)
	.db	3
	.sleb128	134
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTB_IRQHandler$32-Sstm8s_it$EXTI_PORTB_IRQHandler$30
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTB_IRQHandler$33-Sstm8s_it$EXTI_PORTB_IRQHandler$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$EXTI_PORTB_IRQHandler$34-Sstm8s_it$EXTI_PORTB_IRQHandler$33
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$36)
	.db	3
	.sleb128	147
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTC_IRQHandler$38-Sstm8s_it$EXTI_PORTC_IRQHandler$36
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTC_IRQHandler$39-Sstm8s_it$EXTI_PORTC_IRQHandler$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$EXTI_PORTC_IRQHandler$40-Sstm8s_it$EXTI_PORTC_IRQHandler$39
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$42)
	.db	3
	.sleb128	160
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTD_IRQHandler$44-Sstm8s_it$EXTI_PORTD_IRQHandler$42
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTD_IRQHandler$45-Sstm8s_it$EXTI_PORTD_IRQHandler$44
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$EXTI_PORTD_IRQHandler$46-Sstm8s_it$EXTI_PORTD_IRQHandler$45
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$48)
	.db	3
	.sleb128	173
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTE_IRQHandler$50-Sstm8s_it$EXTI_PORTE_IRQHandler$48
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$EXTI_PORTE_IRQHandler$51-Sstm8s_it$EXTI_PORTE_IRQHandler$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$EXTI_PORTE_IRQHandler$52-Sstm8s_it$EXTI_PORTE_IRQHandler$51
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$SPI_IRQHandler$54)
	.db	3
	.sleb128	229
	.db	1
	.db	9
	.dw	Sstm8s_it$SPI_IRQHandler$56-Sstm8s_it$SPI_IRQHandler$54
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$SPI_IRQHandler$57-Sstm8s_it$SPI_IRQHandler$56
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$SPI_IRQHandler$58-Sstm8s_it$SPI_IRQHandler$57
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60)
	.db	3
	.sleb128	242
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
	.db	3
	.sleb128	255
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM1_CAP_COM_IRQHandler$68-Sstm8s_it$TIM1_CAP_COM_IRQHandler$66
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM1_CAP_COM_IRQHandler$69-Sstm8s_it$TIM1_CAP_COM_IRQHandler$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TIM1_CAP_COM_IRQHandler$70-Sstm8s_it$TIM1_CAP_COM_IRQHandler$69
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72)
	.db	3
	.sleb128	296
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$75-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$76-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$75
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$78)
	.db	3
	.sleb128	309
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM2_CAP_COM_IRQHandler$80-Sstm8s_it$TIM2_CAP_COM_IRQHandler$78
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM2_CAP_COM_IRQHandler$81-Sstm8s_it$TIM2_CAP_COM_IRQHandler$80
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TIM2_CAP_COM_IRQHandler$82-Sstm8s_it$TIM2_CAP_COM_IRQHandler$81
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$84)
	.db	3
	.sleb128	354
	.db	1
	.db	9
	.dw	Sstm8s_it$UART1_TX_IRQHandler$86-Sstm8s_it$UART1_TX_IRQHandler$84
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$UART1_TX_IRQHandler$87-Sstm8s_it$UART1_TX_IRQHandler$86
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$UART1_TX_IRQHandler$88-Sstm8s_it$UART1_TX_IRQHandler$87
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$90)
	.db	3
	.sleb128	367
	.db	1
	.db	9
	.dw	Sstm8s_it$UART1_RX_IRQHandler$92-Sstm8s_it$UART1_RX_IRQHandler$90
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$UART1_RX_IRQHandler$93-Sstm8s_it$UART1_RX_IRQHandler$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$UART1_RX_IRQHandler$94-Sstm8s_it$UART1_RX_IRQHandler$93
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$I2C_IRQHandler$96)
	.db	3
	.sleb128	409
	.db	1
	.db	9
	.dw	Sstm8s_it$I2C_IRQHandler$98-Sstm8s_it$I2C_IRQHandler$96
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$I2C_IRQHandler$99-Sstm8s_it$I2C_IRQHandler$98
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$I2C_IRQHandler$100-Sstm8s_it$I2C_IRQHandler$99
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$ADC1_IRQHandler$102)
	.db	3
	.sleb128	494
	.db	1
	.db	9
	.dw	Sstm8s_it$ADC1_IRQHandler$104-Sstm8s_it$ADC1_IRQHandler$102
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$ADC1_IRQHandler$105-Sstm8s_it$ADC1_IRQHandler$104
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$ADC1_IRQHandler$106-Sstm8s_it$ADC1_IRQHandler$105
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$TIM4_UPD_OVF_IRQHandler$108)
	.db	3
	.sleb128	522
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$110-Sstm8s_it$TIM4_UPD_OVF_IRQHandler$108
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$TIM4_UPD_OVF_IRQHandler$111-Sstm8s_it$TIM4_UPD_OVF_IRQHandler$110
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$TIM4_UPD_OVF_IRQHandler$112-Sstm8s_it$TIM4_UPD_OVF_IRQHandler$111
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$114)
	.db	3
	.sleb128	536
	.db	1
	.db	9
	.dw	Sstm8s_it$EEPROM_EEC_IRQHandler$116-Sstm8s_it$EEPROM_EEC_IRQHandler$114
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_it$EEPROM_EEC_IRQHandler$117-Sstm8s_it$EEPROM_EEC_IRQHandler$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_it$EEPROM_EEC_IRQHandler$118-Sstm8s_it$EEPROM_EEC_IRQHandler$117
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$115)
	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$119)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TIM4_UPD_OVF_IRQHandler$109)
	.dw	0,(Sstm8s_it$TIM4_UPD_OVF_IRQHandler$113)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$ADC1_IRQHandler$103)
	.dw	0,(Sstm8s_it$ADC1_IRQHandler$107)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$I2C_IRQHandler$97)
	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$91)
	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$95)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$85)
	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$89)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)
	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$83)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73)
	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$77)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$67)
	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$71)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$65)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)
	.dw	0,(Sstm8s_it$SPI_IRQHandler$59)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$49)
	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$53)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$43)
	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$47)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$37)
	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$41)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$31)
	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$35)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$25)
	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$29)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)
	.dw	0,(Sstm8s_it$CLK_IRQHandler$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$AWU_IRQHandler$13)
	.dw	0,(Sstm8s_it$AWU_IRQHandler$17)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TLI_IRQHandler$7)
	.dw	0,(Sstm8s_it$TLI_IRQHandler$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
	.dw	0,(Sstm8s_it$TRAP_IRQHandler$5)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
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
	.uleb128	2
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
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
	.ascii "./src/stm8s_it.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.9.0 #11195"
	.db	0
	.uleb128	2
	.ascii "TRAP_IRQHandler"
	.db	0
	.dw	0,(_TRAP_IRQHandler)
	.dw	0,(XG$TRAP_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	2
	.ascii "TLI_IRQHandler"
	.db	0
	.dw	0,(_TLI_IRQHandler)
	.dw	0,(XG$TLI_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	2
	.ascii "AWU_IRQHandler"
	.db	0
	.dw	0,(_AWU_IRQHandler)
	.dw	0,(XG$AWU_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	2
	.ascii "CLK_IRQHandler"
	.db	0
	.dw	0,(_CLK_IRQHandler)
	.dw	0,(XG$CLK_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	2
	.ascii "EXTI_PORTA_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTA_IRQHandler)
	.dw	0,(XG$EXTI_PORTA_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	2
	.ascii "EXTI_PORTB_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTB_IRQHandler)
	.dw	0,(XG$EXTI_PORTB_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	2
	.ascii "EXTI_PORTC_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTC_IRQHandler)
	.dw	0,(XG$EXTI_PORTC_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.uleb128	2
	.ascii "EXTI_PORTD_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTD_IRQHandler)
	.dw	0,(XG$EXTI_PORTD_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	2
	.ascii "EXTI_PORTE_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTE_IRQHandler)
	.dw	0,(XG$EXTI_PORTE_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.uleb128	2
	.ascii "SPI_IRQHandler"
	.db	0
	.dw	0,(_SPI_IRQHandler)
	.dw	0,(XG$SPI_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.uleb128	2
	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
	.db	0
	.dw	0,(_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
	.dw	0,(XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	2
	.ascii "TIM1_CAP_COM_IRQHandler"
	.db	0
	.dw	0,(_TIM1_CAP_COM_IRQHandler)
	.dw	0,(XG$TIM1_CAP_COM_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	2
	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
	.db	0
	.dw	0,(_TIM2_UPD_OVF_BRK_IRQHandler)
	.dw	0,(XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	2
	.ascii "TIM2_CAP_COM_IRQHandler"
	.db	0
	.dw	0,(_TIM2_CAP_COM_IRQHandler)
	.dw	0,(XG$TIM2_CAP_COM_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.uleb128	2
	.ascii "UART1_TX_IRQHandler"
	.db	0
	.dw	0,(_UART1_TX_IRQHandler)
	.dw	0,(XG$UART1_TX_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.uleb128	2
	.ascii "UART1_RX_IRQHandler"
	.db	0
	.dw	0,(_UART1_RX_IRQHandler)
	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	2
	.ascii "I2C_IRQHandler"
	.db	0
	.dw	0,(_I2C_IRQHandler)
	.dw	0,(XG$I2C_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	2
	.ascii "ADC1_IRQHandler"
	.db	0
	.dw	0,(_ADC1_IRQHandler)
	.dw	0,(XG$ADC1_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	2
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	2
	.ascii "EEPROM_EEC_IRQHandler"
	.db	0
	.dw	0,(_EEPROM_EEC_IRQHandler)
	.dw	0,(XG$EEPROM_EEC_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start)
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
	.dw	0,60
	.ascii "TRAP_IRQHandler"
	.db	0
	.dw	0,91
	.ascii "TLI_IRQHandler"
	.db	0
	.dw	0,121
	.ascii "AWU_IRQHandler"
	.db	0
	.dw	0,151
	.ascii "CLK_IRQHandler"
	.db	0
	.dw	0,181
	.ascii "EXTI_PORTA_IRQHandler"
	.db	0
	.dw	0,218
	.ascii "EXTI_PORTB_IRQHandler"
	.db	0
	.dw	0,255
	.ascii "EXTI_PORTC_IRQHandler"
	.db	0
	.dw	0,292
	.ascii "EXTI_PORTD_IRQHandler"
	.db	0
	.dw	0,329
	.ascii "EXTI_PORTE_IRQHandler"
	.db	0
	.dw	0,366
	.ascii "SPI_IRQHandler"
	.db	0
	.dw	0,396
	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
	.db	0
	.dw	0,443
	.ascii "TIM1_CAP_COM_IRQHandler"
	.db	0
	.dw	0,482
	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
	.db	0
	.dw	0,525
	.ascii "TIM2_CAP_COM_IRQHandler"
	.db	0
	.dw	0,564
	.ascii "UART1_TX_IRQHandler"
	.db	0
	.dw	0,599
	.ascii "UART1_RX_IRQHandler"
	.db	0
	.dw	0,634
	.ascii "I2C_IRQHandler"
	.db	0
	.dw	0,664
	.ascii "ADC1_IRQHandler"
	.db	0
	.dw	0,695
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,734
	.ascii "EEPROM_EEC_IRQHandler"
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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$115)	;initial loc
	.dw	0,Sstm8s_it$EEPROM_EEC_IRQHandler$119-Sstm8s_it$EEPROM_EEC_IRQHandler$115
	.db	1
	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$115)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_it$TIM4_UPD_OVF_IRQHandler$109)	;initial loc
	.dw	0,Sstm8s_it$TIM4_UPD_OVF_IRQHandler$113-Sstm8s_it$TIM4_UPD_OVF_IRQHandler$109
	.db	1
	.dw	0,(Sstm8s_it$TIM4_UPD_OVF_IRQHandler$109)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_it$ADC1_IRQHandler$103)	;initial loc
	.dw	0,Sstm8s_it$ADC1_IRQHandler$107-Sstm8s_it$ADC1_IRQHandler$103
	.db	1
	.dw	0,(Sstm8s_it$ADC1_IRQHandler$103)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_it$I2C_IRQHandler$97)	;initial loc
	.dw	0,Sstm8s_it$I2C_IRQHandler$101-Sstm8s_it$I2C_IRQHandler$97
	.db	1
	.dw	0,(Sstm8s_it$I2C_IRQHandler$97)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$91)	;initial loc
	.dw	0,Sstm8s_it$UART1_RX_IRQHandler$95-Sstm8s_it$UART1_RX_IRQHandler$91
	.db	1
	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$91)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$85)	;initial loc
	.dw	0,Sstm8s_it$UART1_TX_IRQHandler$89-Sstm8s_it$UART1_TX_IRQHandler$85
	.db	1
	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$85)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE6_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)	;initial loc
	.dw	0,Sstm8s_it$TIM2_CAP_COM_IRQHandler$83-Sstm8s_it$TIM2_CAP_COM_IRQHandler$79
	.db	1
	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE7_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73)	;initial loc
	.dw	0,Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$77-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73
	.db	1
	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE8_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$67)	;initial loc
	.dw	0,Sstm8s_it$TIM1_CAP_COM_IRQHandler$71-Sstm8s_it$TIM1_CAP_COM_IRQHandler$67
	.db	1
	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$67)
	.db	14
	.uleb128	9

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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE9_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)	;initial loc
	.dw	0,Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$65-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61
	.db	1
	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE10_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)	;initial loc
	.dw	0,Sstm8s_it$SPI_IRQHandler$59-Sstm8s_it$SPI_IRQHandler$55
	.db	1
	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
Ldebug_CIE11_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE11_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE11_start-4)
	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$49)	;initial loc
	.dw	0,Sstm8s_it$EXTI_PORTE_IRQHandler$53-Sstm8s_it$EXTI_PORTE_IRQHandler$49
	.db	1
	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$49)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
Ldebug_CIE12_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE12_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE12_start-4)
	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$43)	;initial loc
	.dw	0,Sstm8s_it$EXTI_PORTD_IRQHandler$47-Sstm8s_it$EXTI_PORTD_IRQHandler$43
	.db	1
	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$43)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
Ldebug_CIE13_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE13_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE13_start-4)
	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$37)	;initial loc
	.dw	0,Sstm8s_it$EXTI_PORTC_IRQHandler$41-Sstm8s_it$EXTI_PORTC_IRQHandler$37
	.db	1
	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$37)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
Ldebug_CIE14_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE14_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE14_start-4)
	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$31)	;initial loc
	.dw	0,Sstm8s_it$EXTI_PORTB_IRQHandler$35-Sstm8s_it$EXTI_PORTB_IRQHandler$31
	.db	1
	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$31)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
Ldebug_CIE15_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE15_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE15_start-4)
	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$25)	;initial loc
	.dw	0,Sstm8s_it$EXTI_PORTA_IRQHandler$29-Sstm8s_it$EXTI_PORTA_IRQHandler$25
	.db	1
	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$25)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
Ldebug_CIE16_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE16_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE16_start-4)
	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)	;initial loc
	.dw	0,Sstm8s_it$CLK_IRQHandler$23-Sstm8s_it$CLK_IRQHandler$19
	.db	1
	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
Ldebug_CIE17_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE17_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE17_start-4)
	.dw	0,(Sstm8s_it$AWU_IRQHandler$13)	;initial loc
	.dw	0,Sstm8s_it$AWU_IRQHandler$17-Sstm8s_it$AWU_IRQHandler$13
	.db	1
	.dw	0,(Sstm8s_it$AWU_IRQHandler$13)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
Ldebug_CIE18_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE18_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE18_start-4)
	.dw	0,(Sstm8s_it$TLI_IRQHandler$7)	;initial loc
	.dw	0,Sstm8s_it$TLI_IRQHandler$11-Sstm8s_it$TLI_IRQHandler$7
	.db	1
	.dw	0,(Sstm8s_it$TLI_IRQHandler$7)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
Ldebug_CIE19_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE19_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE19_start-4)
	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)	;initial loc
	.dw	0,Sstm8s_it$TRAP_IRQHandler$5-Sstm8s_it$TRAP_IRQHandler$1
	.db	1
	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
	.db	14
	.uleb128	9
