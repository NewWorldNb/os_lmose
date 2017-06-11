	.arch armv4
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"printfk.c"
	.text
	.align	2
	.global	strcopyk
	.type	strcopyk, %function
strcopyk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
.L3:
	strb	r3, [r0], #1
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	bx	lr
	.size	strcopyk, .-strcopyk
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	numberk
	.type	numberk, %function
numberk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r1, #0
	sub	sp, sp, #44
	mov	r3, #0
	add	r7, sp, #39
	moveq	r6, #48
	strb	r3, [sp, #39]
	mov	r4, r0
	mov	r8, r2
	streqb	r6, [r7, #-1]!
	beq	.L9
	ldr	sl, .L20
.L12:
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r6, [sl, r1]	@ zero_extendqisi2
	mov	r0, r5
	mov	r1, r8
	strb	r6, [r7, #-1]!
	bl	__aeabi_uidiv
	subs	r5, r0, #0
	bne	.L12
	cmp	r6, #0
	beq	.L19
.L9:
	strb	r6, [r4], #1
	ldrb	r6, [r7, #1]!	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L9
.L19:
	mov	r0, r4
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LC0
	.size	numberk, .-numberk
	.align	2
	.global	vsprintfk
	.type	vsprintfk, %function
vsprintfk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r3, r2
	ldrb	r2, [r1, #0]	@ zero_extendqisi2
	sub	sp, sp, #8
	mov	r4, r1
.L23:
	cmp	r2, #0
	beq	.L37
.L32:
	cmp	r2, #37
	beq	.L24
	strb	r2, [r0], #1
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L32
.L37:
	strb	r2, [r0, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L24:
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #115
	beq	.L28
	cmp	r2, #120
	beq	.L29
	cmp	r2, #100
	bne	.L23
	ldr	r1, [r3, #0]
	mov	r2, #10
.L36:
	add	r3, r3, #4
	str	r3, [sp, #4]
	bl	numberk
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	b	.L23
.L29:
	ldr	r1, [r3, #0]
	mov	r2, #16
	b	.L36
.L28:
	ldr	r1, [r3, #0]
	ldrb	r2, [r1, #0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L30
.L34:
	strb	r2, [r0], #1
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L34
.L30:
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	add	r3, r3, #4
	b	.L23
	.size	vsprintfk, .-vsprintfk
	.align	2
	.global	char_write_uart
	.type	char_write_uart, %function
char_write_uart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldrb	r0, [r0, #0]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L41
.L40:
	bl	hal_uart0_putc
	ldrb	r0, [r4, #1]!	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L40
.L41:
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	char_write_uart, .-char_write_uart
	.align	2
	.global	printfk
	.type	printfk, %function
printfk:
	@ Function supports interworking.
	@ args = 4, pretend = 16, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 1
	stmfd	sp!, {r0, r1, r2, r3}
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #524
	add	r4, sp, #516
	add	r3, sp, #540
	mov	r0, r4
	str	r3, [sp, #512]
	bl	hal_disableirq_savecpuflg
	ldr	r1, [sp, #536]
	mov	r0, sp
	ldr	r2, [sp, #512]
	bl	vsprintfk
	mov	r0, #0
	mov	r1, sp
	mov	r2, r0
	bl	hal_uart_write
	mov	r0, r4
	mov	r5, sp
	bl	hal_enableirq_restcpuflg
	add	sp, sp, #524
	ldmfd	sp!, {r4, r5, lr}
	add	sp, sp, #16
	bx	lr
	.size	printfk, .-printfk
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"0123456789abcdef\000"
	.section	.note.GNU-stack,"",%progbits
