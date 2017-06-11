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
	.file	"printf.c"
	.text
	.align	2
	.global	strlen
	.type	strlen, %function
strlen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r0, r3
	bxeq	lr
	mov	r3, #0
.L4:
	add	r3, r3, #1
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4
	mov	r0, r3
	bx	lr
	.size	strlen, .-strlen
	.align	2
	.global	strcopy
	.type	strcopy, %function
strcopy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
.L10:
	strb	r3, [r0], #1
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	bx	lr
	.size	strcopy, .-strcopy
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	number
	.type	number, %function
number:
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
	beq	.L15
	ldr	sl, .L26
.L18:
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r6, [sl, r1]	@ zero_extendqisi2
	mov	r0, r5
	mov	r1, r8
	strb	r6, [r7, #-1]!
	bl	__aeabi_uidiv
	subs	r5, r0, #0
	bne	.L18
	cmp	r6, #0
	beq	.L25
.L15:
	strb	r6, [r4], #1
	ldrb	r6, [r7, #1]!	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L15
.L25:
	mov	r0, r4
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LC0
	.size	number, .-number
	.align	2
	.global	vsprintf
	.type	vsprintf, %function
vsprintf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r3, r2
	ldrb	r2, [r1, #0]	@ zero_extendqisi2
	sub	sp, sp, #8
	mov	r4, r1
.L29:
	cmp	r2, #0
	beq	.L43
.L38:
	cmp	r2, #37
	beq	.L30
	strb	r2, [r0], #1
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L38
.L43:
	strb	r2, [r0, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L30:
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #115
	beq	.L34
	cmp	r2, #120
	beq	.L35
	cmp	r2, #100
	bne	.L29
	ldr	r1, [r3, #0]
	mov	r2, #10
.L42:
	add	r3, r3, #4
	str	r3, [sp, #4]
	bl	number
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	b	.L29
.L35:
	ldr	r1, [r3, #0]
	mov	r2, #16
	b	.L42
.L34:
	ldr	r1, [r3, #0]
	ldrb	r2, [r1, #0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L36
.L40:
	strb	r2, [r0], #1
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L40
.L36:
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	add	r3, r3, #4
	b	.L29
	.size	vsprintf, .-vsprintf
	.align	2
	.global	printf
	.type	printf, %function
printf:
	@ Function supports interworking.
	@ args = 4, pretend = 16, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 1
	stmfd	sp!, {r0, r1, r2, r3}
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #16
	add	r3, sp, #36
	mov	r0, #4096
	str	r3, [sp, #12]
	bl	mallocblk
	subs	r4, r0, #0
	mvneq	r5, #0
	beq	.L46
	mov	r6, #0
	mov	r3, #15
	mov	r0, sp
	mov	r1, #49
	mov	r2, r6
	stmia	sp, {r3, r6}	@ phole stm
	str	r6, [sp, #8]
	bl	open
	cmn	r0, #1
	mov	r5, r0
	beq	.L47
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #32]
	mov	r0, r4
	bl	vsprintf
	ldrb	r2, [r4, #0]	@ zero_extendqisi2
	cmp	r2, r6
	beq	.L49
.L50:
	add	r6, r6, #1
	ldrb	r3, [r4, r6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L50
	mov	r2, r6
.L49:
	mov	r0, r5
	mov	r1, r4
	mov	r3, #0
	bl	write
	cmn	r0, #1
	beq	.L47
	mov	r0, r5
	bl	close
	mov	r5, #0
	b	.L51
.L47:
	mvn	r5, #0
.L51:
	mov	r0, r4
	mov	r1, #4096
	bl	mfreeblk
	cmn	r0, #1
	moveq	r5, r0
.L46:
	mov	r0, r5
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, lr}
	add	sp, sp, #16
	bx	lr
	.size	printf, .-printf
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"0123456789abcdef\000"
	.section	.note.GNU-stack,"",%progbits
