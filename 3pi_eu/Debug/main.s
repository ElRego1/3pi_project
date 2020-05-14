	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.set_mottors.part.0,"ax",@progbits
	.type	set_mottors.part.0, @function
set_mottors.part.0:
.LFB39:
	.file 1 ".././main.c"
	.loc 1 251 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	.loc 1 254 0
	cbi 0x4,3
	.loc 1 255 0
	in r24,0xa
	andi r24,lo8(-105)
	out 0xa,r24
	.loc 1 259 0
/* #APP */
 ;  259 ".././main.c" 1
	nop
	nop
	
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE39:
	.size	set_mottors.part.0, .-set_mottors.part.0
	.section	.text._pololu_atmel_studio_6_workaround,"ax",@progbits
	.type	_pololu_atmel_studio_6_workaround, @function
_pololu_atmel_studio_6_workaround:
.LFB27:
	.file 2 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\pololu\\workaround.h"
	.loc 2 10 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 2 12 0
	lds r24,w.2154
	subi r24,lo8(-(1))
	sts w.2154,r24
	ret
	.cfi_endproc
.LFE27:
	.size	_pololu_atmel_studio_6_workaround, .-_pololu_atmel_studio_6_workaround
	.section	.text.test_temperature_sensor,"ax",@progbits
.global	test_temperature_sensor
	.type	test_temperature_sensor, @function
test_temperature_sensor:
.LFB30:
	.loc 1 82 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE30:
	.size	test_temperature_sensor, .-test_temperature_sensor
	.section	.text.init_test_temperature_sensor,"ax",@progbits
.global	init_test_temperature_sensor
	.type	init_test_temperature_sensor, @function
init_test_temperature_sensor:
.LFB31:
	.loc 1 121 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 123 0
	ldi r30,lo8(124)
	ldi r31,0
	ldi r24,lo8(-64)
	st Z,r24
	.loc 1 125 0
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	.loc 1 128 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(7)
	st Z,r24
	.loc 1 131 0
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	ret
	.cfi_endproc
.LFE31:
	.size	init_test_temperature_sensor, .-init_test_temperature_sensor
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"Test 1 ADC"
.LC2:
	.string	" times"
.LC3:
	.string	"loop "
	.section	.text.test_potentiometer_read_8_bit,"ax",@progbits
.global	test_potentiometer_read_8_bit
	.type	test_potentiometer_read_8_bit, @function
test_potentiometer_read_8_bit:
.LFB32:
	.loc 1 134 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI4:
	.cfi_def_cfa_register 28
	sbiw r28,11
.LCFI5:
	.cfi_def_cfa_offset 17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 11 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 136 0
	push __zero_reg__
	ldi r24,lo8(5)
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	push r17
	push r16
	call sprintf
.LVL1:
	.loc 1 137 0
	call clear
.LVL2:
	.loc 1 138 0
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL3:
	.loc 1 139 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call print
.LVL4:
	.loc 1 140 0
	ldi r22,lo8(1)
	ldi r24,0
	call lcd_goto_xy
.LVL5:
	.loc 1 141 0
	movw r26,r16
	0:
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne 0b
	sbiw r26,1
	ldi r24,lo8(7)
	ldi r30,lo8(.LC2)
	ldi r31,hi8(.LC2)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	movw r24,r16
	call print
.LVL6:
.LBB19:
.LBB20:
	.loc 1 180 0
	ldi r24,lo8(96)
	sts 124,r24
	.loc 1 182 0
	lds r24,124
	ori r24,lo8(7)
	sts 124,r24
	.loc 1 185 0
	lds r24,122
	ori r24,lo8(5)
	sts 122,r24
	.loc 1 188 0
	lds r24,122
	ori r24,lo8(-128)
	sts 122,r24
.LBE20:
.LBE19:
	.loc 1 144 0
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	call delay_ms
.LVL7:
	.loc 1 146 0
	std Y+11,__zero_reg__
.LVL8:
	.loc 1 151 0
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
	.loc 1 153 0
	ldd r17,Y+11
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r17,lo8(5)
	brlo .L15
	rjmp .L7
.L11:
	.loc 1 155 0
/* #APP */
 ;  155 ".././main.c" 1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	
 ;  0 "" 2
/* #NOAPP */
.L15:
	.loc 1 154 0
	lds r24,122
	.loc 1 154 0
	sbrc r24,6
	rjmp .L11
	.loc 1 161 0
	call clear
.LVL9:
	.loc 1 162 0
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL10:
	.loc 1 163 0
	ldi r22,0
	ldi r24,0
	call lcd_goto_xy
.LVL11:
	.loc 1 164 0
	lds r22,121
	.loc 1 164 0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call print_long
.LVL12:
	.loc 1 165 0
	ldi r22,lo8(1)
	ldi r24,0
	call lcd_goto_xy
.LVL13:
	.loc 1 166 0
	movw r22,r28
	subi r22,-11
	sbci r23,-1
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	call strcat
.LVL14:
	call print
.LVL15:
	.loc 1 167 0
	subi r17,lo8(-(1))
	std Y+11,r17
	.loc 1 168 0
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	call delay_ms
.LVL16:
	.loc 1 171 0
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
	.loc 1 153 0
	ldd r17,Y+11
	cpi r17,lo8(5)
	brlo .L15
.L7:
	.loc 1 175 0
	lds r24,122
	sts 122,r24
/* epilogue start */
	.loc 1 176 0
	adiw r28,11
.LVL17:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
.LVL18:
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE32:
	.size	test_potentiometer_read_8_bit, .-test_potentiometer_read_8_bit
	.section	.text.init_potentiometer,"ax",@progbits
.global	init_potentiometer
	.type	init_potentiometer, @function
init_potentiometer:
.LFB33:
	.loc 1 178 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 180 0
	ldi r30,lo8(124)
	ldi r31,0
	ldi r24,lo8(96)
	st Z,r24
	.loc 1 182 0
	ld r24,Z
	ori r24,lo8(7)
	st Z,r24
	.loc 1 185 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(5)
	st Z,r24
	.loc 1 188 0
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	ret
	.cfi_endproc
.LFE33:
	.size	init_potentiometer, .-init_potentiometer
	.section	.rodata.str1.1
.LC4:
	.string	"Stopped"
	.section	.text.move_test,"ax",@progbits
.global	move_test
	.type	move_test, @function
move_test:
.LFB34:
	.loc 1 191 0
	.cfi_startproc
	push r14
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL19:
.LBB21:
.LBB22:
	.loc 1 267 0
	sbi 0x4,3
	.loc 1 268 0
	in r24,0xa
	ori r24,lo8(104)
	out 0xa,r24
	.loc 1 269 0
/* #APP */
 ;  269 ".././main.c" 1
	nop
	nop
	
 ;  0 "" 2
.LVL20:
/* #NOAPP */
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 1 217 0
	ldi r28,lo8(-86)
	out 0x27,r28
	.loc 1 218 0
	out 0x28,r28
	.loc 1 220 0
	ldi r24,lo8(-77)
	mov r14,r24
	mov r15,__zero_reg__
	movw r30,r14
	st Z,r28
	.loc 1 221 0
	ldi r16,lo8(-76)
	ldi r17,0
	movw r30,r16
	st Z,r28
.LVL21:
.LBE24:
.LBE23:
	.loc 1 195 0
	ldi r24,lo8(-80)
	ldi r25,lo8(4)
	call delay_ms
.LVL22:
.LBB25:
.LBB26:
	.loc 1 217 0
	out 0x27,r28
	.loc 1 218 0
	out 0x28,r28
	.loc 1 220 0
	ldi r24,lo8(86)
	movw r30,r14
	st Z,r24
	.loc 1 221 0
	movw r30,r16
	st Z,r24
.LVL23:
.LBE26:
.LBE25:
	.loc 1 198 0
	ldi r24,lo8(126)
	ldi r25,lo8(4)
	call delay_ms
.LVL24:
.LBB27:
.LBB28:
	.loc 1 217 0
	out 0x27,r28
	.loc 1 218 0
	out 0x28,r28
	.loc 1 220 0
	movw r30,r14
	st Z,r28
	.loc 1 221 0
	movw r30,r16
	st Z,r28
.LVL25:
.LBE28:
.LBE27:
	.loc 1 201 0
	ldi r24,lo8(-80)
	ldi r25,lo8(4)
	call delay_ms
.LVL26:
.LBB29:
.LBB30:
	.loc 1 217 0
	ldi r24,lo8(-128)
	out 0x27,r24
	.loc 1 218 0
	out 0x28,r24
	.loc 1 220 0
	movw r30,r14
	st Z,r24
	.loc 1 221 0
	movw r30,r16
	st Z,r24
.LVL27:
.LBE30:
.LBE29:
	.loc 1 204 0
	call clear
.LVL28:
	.loc 1 205 0
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	call print
.LVL29:
	.loc 1 206 0
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	call delay_ms
.LVL30:
/* epilogue start */
	.loc 1 209 0
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LBB31:
.LBB32:
	jmp set_mottors.part.0
.LVL31:
.LBE32:
.LBE31:
	.cfi_endproc
.LFE34:
	.size	move_test, .-move_test
	.section	.text.set_PWM,"ax",@progbits
.global	set_PWM
	.type	set_PWM, @function
set_PWM:
.LFB35:
	.loc 1 211 0
	.cfi_startproc
.LVL32:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 217 0
	out 0x27,r24
	.loc 1 218 0
	out 0x28,r24
	.loc 1 220 0
	sts 179,r22
	.loc 1 221 0
	sts 180,r22
	ret
	.cfi_endproc
.LFE35:
	.size	set_PWM, .-set_PWM
	.section	.text.config_fast_pwm,"ax",@progbits
.global	config_fast_pwm
	.type	config_fast_pwm, @function
config_fast_pwm:
.LFB36:
	.loc 1 224 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 236 0
	ldi r24,lo8(-128)
	out 0x27,r24
	.loc 1 237 0
	out 0x28,r24
	.loc 1 239 0
	in r25,0x24
	ori r25,lo8(-77)
	out 0x24,r25
	.loc 1 240 0
	in r25,0x25
	ori r25,lo8(3)
	out 0x25,r25
	.loc 1 244 0
	sts 179,r24
	.loc 1 245 0
	sts 180,r24
	.loc 1 247 0
	ldi r30,lo8(-80)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-77)
	st Z,r24
	.loc 1 248 0
	ldi r30,lo8(-79)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(3)
	st Z,r24
	ret
	.cfi_endproc
.LFE36:
	.size	config_fast_pwm, .-config_fast_pwm
	.section	.rodata.str1.1
.LC5:
	.string	"mid down"
.LC6:
	.string	"left down"
.LC7:
	.string	"right down"
.LC8:
	.string	"waiting"
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB29:
	.loc 1 30 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB33:
.LBB34:
	.loc 1 278 0
	in r24,0x5
	ori r24,lo8(50)
	out 0x5,r24
	.loc 1 282 0
	in r24,0xa
	ori r24,lo8(-126)
	out 0xa,r24
.LBE34:
.LBE33:
	.loc 1 32 0
	call config_fast_pwm
.LVL33:
	.loc 1 34 0
	ldi r24,lo8(__c.2502)
	ldi r25,hi8(__c.2502)
	call play_from_program_space
.LVL34:
	.loc 1 37 0
	call move_test
.LVL35:
	.loc 1 38 0
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	call delay_ms
.LVL36:
	.loc 1 41 0
	call test_potentiometer_read_8_bit
.LVL37:
	.loc 1 42 0
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	call delay_ms
.LVL38:
	.loc 1 45 0
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	call delay_ms
.LVL39:
	.loc 1 49 0
	call clear
.LVL40:
	.loc 1 50 0
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	call print
.LVL41:
	.loc 1 48 0
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
.LVL42:
	.loc 1 63 0
	sbic 0x3,1
	rjmp .L24
.LVL43:
.L28:
	.loc 1 65 0
	sbi 0xb,1
	.loc 1 66 0
	cbi 0xb,7
	.loc 1 64 0
	ldi r28,lo8(.LC6)
	ldi r29,hi8(.LC6)
.LVL44:
.L25:
	.loc 1 53 0
	cp r24,r28
	cpc r25,r29
	breq .L23
	.loc 1 54 0
	call clear
.LVL45:
	.loc 1 55 0
	movw r24,r28
	call print
.LVL46:
	.loc 1 58 0
	in r24,0xb
	andi r24,lo8(125)
	out 0xb,r24
	.loc 1 59 0
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL47:
.L23:
	.loc 1 75 0
	movw r24,r28
.LVL48:
	.loc 1 63 0
	sbis 0x3,1
	rjmp .L28
.LVL49:
.L24:
	.loc 1 67 0
	sbic 0x3,4
	rjmp .L26
.LVL50:
	.loc 1 69 0
	in r18,0xb
	ori r18,lo8(-126)
	out 0xb,r18
	.loc 1 68 0
	ldi r28,lo8(.LC5)
	ldi r29,hi8(.LC5)
	rjmp .L25
.LVL51:
.L26:
	.loc 1 70 0
	sbic 0x3,5
	rjmp .L27
.LVL52:
	.loc 1 72 0
	sbi 0xb,7
	.loc 1 73 0
	cbi 0xb,1
	.loc 1 71 0
	ldi r28,lo8(.LC7)
	ldi r29,hi8(.LC7)
	rjmp .L25
.LVL53:
.L27:
	.loc 1 75 0
	ldi r28,lo8(.LC8)
	ldi r29,hi8(.LC8)
	rjmp .L25
	.cfi_endproc
.LFE29:
	.size	main, .-main
	.section	.text.set_mottors,"ax",@progbits
.global	set_mottors
	.type	set_mottors, @function
set_mottors:
.LFB37:
	.loc 1 251 0
	.cfi_startproc
.LVL54:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 252 0
	tst r24
	breq .L31
	.loc 1 267 0
	sbi 0x4,3
	.loc 1 268 0
	in r24,0xa
.LVL55:
	ori r24,lo8(104)
	out 0xa,r24
	.loc 1 269 0
/* #APP */
 ;  269 ".././main.c" 1
	nop
	nop
	
 ;  0 "" 2
/* #NOAPP */
	ret
.LVL56:
.L31:
	jmp set_mottors.part.0
.LVL57:
	.cfi_endproc
.LFE37:
	.size	set_mottors, .-set_mottors
	.section	.text.config_pins,"ax",@progbits
.global	config_pins
	.type	config_pins, @function
config_pins:
.LFB38:
	.loc 1 275 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 278 0
	in r24,0x5
	ori r24,lo8(50)
	out 0x5,r24
	.loc 1 282 0
	in r24,0xa
	ori r24,lo8(-126)
	out 0xa,r24
	ret
	.cfi_endproc
.LFE38:
	.size	config_pins, .-config_pins
	.section	.progmem.data.__c.2502,"a",@progbits
	.type	__c.2502, @object
	.size	__c.2502, 10
__c.2502:
	.string	">g32>>c32"
	.section	.data.w.2154,"aw",@progbits
	.type	w.2154, @object
	.size	w.2154, 1
w.2154:
	.byte	1
	.text
.Letext0:
	.file 3 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h"
	.file 4 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\pololu\\orangutanlcd\\orangutanlcd.h"
	.file 5 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\pololu\\orangutantime\\orangutantime.h"
	.file 6 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h"
	.file 7 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\pololu\\orangutanbuzzer\\orangutanbuzzer.h"
	.file 8 "e:\\tools\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x690
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF34
	.byte	0xc
	.long	.LASF35
	.long	.LASF36
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x8
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.long	0x3b
	.uleb128 0x6
	.byte	0x2
	.long	0x77
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x7
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.byte	0x1
	.long	0xa1
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.byte	0xfb
	.long	0x77
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF9
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.byte	0x1
	.long	0xc6
	.uleb128 0x9
	.long	.LASF11
	.byte	0x1
	.byte	0xd3
	.long	0x77
	.uleb128 0x9
	.long	.LASF12
	.byte	0x1
	.byte	0xd3
	.long	0x77
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.word	0x113
	.byte	0x1
	.uleb128 0xb
	.long	0x87
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf3
	.uleb128 0xc
	.long	0x95
	.byte	0x6
	.byte	0xfa
	.long	0x95
	.byte	0x9f
	.byte	0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x2
	.byte	0x9
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x11c
	.uleb128 0xe
	.string	"w"
	.byte	0x2
	.byte	0xb
	.long	0x6c
	.byte	0x5
	.byte	0x3
	.long	w.2154
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x52
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x79
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x86
	.long	.LFB32
	.long	.LFE32
	.long	.LLST0
	.byte	0x1
	.long	0x2cd
	.uleb128 0x11
	.long	.LASF17
	.byte	0x1
	.byte	0x87
	.long	0x2cd
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x11
	.long	.LASF18
	.byte	0x1
	.byte	0x92
	.long	0x77
	.byte	0x2
	.byte	0x8c
	.sleb128 11
	.uleb128 0x12
	.long	.LASF19
	.byte	0x1
	.byte	0x93
	.long	0x71
	.long	.LLST1
	.uleb128 0x13
	.long	0x7e
	.long	.LBB19
	.long	.LBE19
	.byte	0x1
	.byte	0x8f
	.uleb128 0x14
	.long	.LVL1
	.long	0x625
	.uleb128 0x14
	.long	.LVL2
	.long	0x633
	.uleb128 0x15
	.long	.LVL3
	.long	0x641
	.long	0x1c4
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.long	.LVL4
	.long	0x64e
	.long	0x1e0
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.uleb128 0x15
	.long	.LVL5
	.long	0x65c
	.long	0x1f8
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL6
	.long	0x64e
	.long	0x211
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL7
	.long	0x641
	.long	0x22b
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x3e8
	.byte	0
	.uleb128 0x14
	.long	.LVL9
	.long	0x633
	.uleb128 0x15
	.long	.LVL10
	.long	0x641
	.long	0x24d
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.long	.LVL11
	.long	0x65c
	.long	0x265
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL12
	.long	0x66a
	.uleb128 0x15
	.long	.LVL13
	.long	0x65c
	.long	0x286
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL14
	.long	0x678
	.long	0x2ad
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC3
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 10
	.byte	0
	.uleb128 0x14
	.long	.LVL15
	.long	0x64e
	.uleb128 0x17
	.long	.LVL16
	.long	0x641
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x77
	.long	0x2dd
	.uleb128 0x19
	.long	0x2dd
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF20
	.uleb128 0x1a
	.long	0x7e
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0xbf
	.long	.LFB34
	.long	.LFE34
	.long	.LLST2
	.byte	0x1
	.long	0x47a
	.uleb128 0x1b
	.long	0x87
	.long	.LBB21
	.long	.LBE21
	.byte	0x1
	.byte	0xc0
	.long	0x32c
	.uleb128 0x1c
	.long	0x95
	.long	.LLST3
	.byte	0
	.uleb128 0x1b
	.long	0xa1
	.long	.LBB23
	.long	.LBE23
	.byte	0x1
	.byte	0xc2
	.long	0x352
	.uleb128 0x1c
	.long	0xba
	.long	.LLST4
	.uleb128 0x1c
	.long	0xaf
	.long	.LLST4
	.byte	0
	.uleb128 0x1b
	.long	0xa1
	.long	.LBB25
	.long	.LBE25
	.byte	0x1
	.byte	0xc5
	.long	0x378
	.uleb128 0x1c
	.long	0xba
	.long	.LLST6
	.uleb128 0x1c
	.long	0xaf
	.long	.LLST7
	.byte	0
	.uleb128 0x1b
	.long	0xa1
	.long	.LBB27
	.long	.LBE27
	.byte	0x1
	.byte	0xc8
	.long	0x39e
	.uleb128 0x1c
	.long	0xba
	.long	.LLST8
	.uleb128 0x1c
	.long	0xaf
	.long	.LLST8
	.byte	0
	.uleb128 0x1b
	.long	0xa1
	.long	.LBB29
	.long	.LBE29
	.byte	0x1
	.byte	0xcb
	.long	0x3c4
	.uleb128 0x1c
	.long	0xba
	.long	.LLST10
	.uleb128 0x1c
	.long	0xaf
	.long	.LLST10
	.byte	0
	.uleb128 0x1b
	.long	0x87
	.long	.LBB31
	.long	.LBE31
	.byte	0x1
	.byte	0xd0
	.long	0x3f0
	.uleb128 0x1d
	.long	0x95
	.byte	0
	.uleb128 0x1e
	.long	.LVL31
	.byte	0x1
	.long	0xd0
	.uleb128 0x1f
	.long	0x95
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LVL22
	.long	0x641
	.long	0x40a
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x4b0
	.byte	0
	.uleb128 0x15
	.long	.LVL24
	.long	0x641
	.long	0x424
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x47e
	.byte	0
	.uleb128 0x15
	.long	.LVL26
	.long	0x641
	.long	0x43e
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x4b0
	.byte	0
	.uleb128 0x14
	.long	.LVL28
	.long	0x633
	.uleb128 0x15
	.long	.LVL29
	.long	0x64e
	.long	0x463
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC4
	.byte	0
	.uleb128 0x17
	.long	.LVL30
	.long	0x641
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x3e8
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xa1
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x49f
	.uleb128 0xc
	.long	0xaf
	.byte	0x1
	.byte	0x68
	.uleb128 0xc
	.long	0xba
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0xe0
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x1e
	.long	0x42
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5e1
	.uleb128 0x12
	.long	.LASF24
	.byte	0x1
	.byte	0x2f
	.long	0x71
	.long	.LLST12
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x30
	.long	0x71
	.long	.LLST13
	.uleb128 0x13
	.long	0xc6
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.byte	0x1f
	.uleb128 0x14
	.long	.LVL33
	.long	0x49f
	.uleb128 0x15
	.long	.LVL34
	.long	0x685
	.long	0x524
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2502
	.byte	0
	.uleb128 0x14
	.long	.LVL35
	.long	0x2f6
	.uleb128 0x15
	.long	.LVL36
	.long	0x641
	.long	0x547
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x3e8
	.byte	0
	.uleb128 0x14
	.long	.LVL37
	.long	0x146
	.uleb128 0x15
	.long	.LVL38
	.long	0x641
	.long	0x56a
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x3e8
	.byte	0
	.uleb128 0x15
	.long	.LVL39
	.long	0x641
	.long	0x584
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x3e8
	.byte	0
	.uleb128 0x14
	.long	.LVL40
	.long	0x633
	.uleb128 0x15
	.long	.LVL41
	.long	0x64e
	.long	0x5a9
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC8
	.byte	0
	.uleb128 0x14
	.long	.LVL45
	.long	0x633
	.uleb128 0x15
	.long	.LVL46
	.long	0x64e
	.long	0x5cb
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.long	.LVL47
	.long	0x641
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x87
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x613
	.uleb128 0x1c
	.long	0x95
	.long	.LLST14
	.uleb128 0x1e
	.long	.LVL57
	.byte	0x1
	.long	0xd0
	.uleb128 0x1f
	.long	0x95
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0xc6
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x3
	.word	0x29f
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF27
	.long	.LASF27
	.byte	0x4
	.word	0x14a
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.long	.LASF28
	.long	.LASF28
	.byte	0x5
	.byte	0x66
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF29
	.long	.LASF29
	.byte	0x4
	.word	0x14b
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF30
	.long	.LASF30
	.byte	0x4
	.word	0x153
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF31
	.long	.LASF31
	.byte	0x4
	.word	0x14e
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.long	.LASF32
	.long	.LASF32
	.byte	0x6
	.byte	0xf8
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF33
	.long	.LASF33
	.byte	0x7
	.word	0x108
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB32
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	.LCFI5
	.long	.LFE32
	.word	0x2
	.byte	0x8c
	.sleb128 17
	.long	0
	.long	0
.LLST1:
	.long	.LVL8
	.long	.LVL17
	.word	0x3
	.byte	0x91
	.sleb128 -6
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE32
	.word	0x3
	.byte	0x91
	.sleb128 -6
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB34
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST3:
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL20
	.long	.LVL21
	.word	0x3
	.byte	0x9
	.byte	0xaa
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL22
	.long	.LVL23
	.word	0x3
	.byte	0x8
	.byte	0x56
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL22
	.long	.LVL23
	.word	0x3
	.byte	0x9
	.byte	0xaa
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL24
	.long	.LVL25
	.word	0x3
	.byte	0x9
	.byte	0xaa
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL26
	.long	.LVL27
	.word	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL44
	.long	.LVL49
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL42
	.long	.LVL45-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LFE29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL55
	.long	.LVL56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57-1
	.word	0x1
	.byte	0x68
	.long	.LVL57-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x74
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB39
	.long	.LFE39
	.long	.LFB27
	.long	.LFE27
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB29
	.long	.LFE29
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"print_long"
.LASF28:
	.string	"delay_ms"
.LASF10:
	.string	"on_off"
.LASF8:
	.string	"set_mottors"
.LASF19:
	.string	"count_string"
.LASF20:
	.string	"sizetype"
.LASF15:
	.string	"test_temperature_sensor"
.LASF39:
	.string	"main"
.LASF16:
	.string	"init_test_temperature_sensor"
.LASF37:
	.string	"uint8_t"
.LASF11:
	.string	"left_mottor"
.LASF23:
	.string	"config_fast_pwm"
.LASF9:
	.string	"set_PWM"
.LASF25:
	.string	"old_message"
.LASF30:
	.string	"lcd_goto_xy"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"init_potentiometer"
.LASF3:
	.string	"long int"
.LASF27:
	.string	"clear"
.LASF26:
	.string	"sprintf"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"print"
.LASF2:
	.string	"unsigned int"
.LASF21:
	.string	"test_potentiometer_read_8_bit"
.LASF35:
	.string	".././main.c"
.LASF24:
	.string	"message"
.LASF36:
	.string	"E:\\\\Tools\\\\libpololu-avr\\\\Mine\\\\teste IO\\\\3pi_eu\\\\3pi_eu\\\\Debug"
.LASF7:
	.string	"char"
.LASF17:
	.string	"temp_char"
.LASF32:
	.string	"strcat"
.LASF4:
	.string	"long unsigned int"
.LASF34:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O2 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF18:
	.string	"count"
.LASF38:
	.string	"_pololu_atmel_studio_6_workaround"
.LASF22:
	.string	"move_test"
.LASF33:
	.string	"play_from_program_space"
.LASF14:
	.string	"config_pins"
.LASF12:
	.string	"right_mottor"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
