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
	.file	"krlintupt.c"
	.text
	.align	2
	.global	krldisable_intline
	.type	krldisable_intline, %function
krldisable_intline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	hal_disable_intline
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krldisable_intline, .-krldisable_intline
	.align	2
	.global	krlenable_intline
	.type	krlenable_intline, %function
krlenable_intline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	hal_enable_intline
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlenable_intline, .-krlenable_intline
	.align	2
	.global	krladd_irqhandle
	.type	krladd_irqhandle, %function
krladd_irqhandle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	cmp	r0, #0
	cmpne	r1, #0
	sub	sp, sp, #8
	mov	r4, r1
	mov	r8, r0
	movne	r7, #0
	moveq	r7, #1
	bne	.L10
.L6:
	mov	r5, #0
.L7:
	mov	r0, r5
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L10:
	mov	r0, r2
	bl	hal_retn_intfltdsc
	subs	r6, r0, #0
	beq	.L6
	mov	r0, #36
	bl	krlnew
	subs	r5, r0, #0
	beq	.L7
	mov	r3, r8
	mov	r1, r7
	mov	r2, r6
	str	r4, [sp, #0]
	bl	intserdsc_t_init
	mov	r0, r6
	mov	r1, r5
	bl	hal_add_ihandle
	cmp	r0, #0
	bne	.L7
	mov	r0, r5
	mov	r1, #36
	bl	krldelete
	subs	r5, r0, #0
	bne	.L6
	ldr	r0, .L11
	bl	hal_sysdie
	b	.L7
.L12:
	.align	2
.L11:
	.word	.LC0
	.size	krladd_irqhandle, .-krladd_irqhandle
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"krladd_irqhandle ERR\000"
	.section	.note.GNU-stack,"",%progbits
