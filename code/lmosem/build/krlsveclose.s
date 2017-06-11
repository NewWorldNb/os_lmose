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
	.file	"krlsveclose.c"
	.text
	.align	2
	.global	krlsve_close_device
	.type	krlsve_close_device, %function
krlsve_close_device:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #56]
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	bne	.L6
.L2:
	mvn	r0, #0
.L3:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	bl	krldev_io
	cmn	r0, #1
	movne	r0, #0
	bne	.L3
	b	.L2
	.size	krlsve_close_device, .-krlsve_close_device
	.align	2
	.global	krlsve_core_close
	.type	krlsve_core_close, %function
krlsve_core_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	bl	krlsched_retn_currthread
	mov	r1, r4
	mov	r6, r0
	bl	krlthd_retn_objnode
	subs	r5, r0, #0
	bne	.L14
.L8:
	mvn	r0, #0
.L12:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L14:
	ldr	r3, [r5, #52]
	cmp	r3, #1
	bne	.L8
.L9:
	str	r3, [r5, #48]
	bl	krlsve_close_device
	cmn	r0, #1
	beq	.L8
	mov	r0, r6
	mov	r1, r4
	bl	krlthd_del_objnode
	cmn	r0, #1
	beq	.L15
.L10:
	mov	r0, r5
	bl	krldel_objnode
	subs	r4, r0, #0
	movne	r0, #0
	bne	.L12
	ldr	r0, .L16
	bl	hal_sysdie
	mov	r0, r4
	b	.L12
.L15:
	ldr	r0, .L16+4
	bl	hal_sysdie
	b	.L10
.L17:
	.align	2
.L16:
	.word	.LC1
	.word	.LC0
	.size	krlsve_core_close, .-krlsve_core_close
	.align	2
	.global	krlsve_close
	.type	krlsve_close, %function
krlsve_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #7
	bls	.L19
	mvn	r0, #0
	bx	lr
.L19:
	b	krlsve_core_close
	.size	krlsve_close, .-krlsve_close
	.align	2
	.global	krlsvetabl_close
	.type	krlsvetabl_close, %function
krlsvetabl_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #9
	beq	.L23
	mvn	r0, #0
	bx	lr
.L23:
	ldr	r0, [r1, #8]
	b	krlsve_close
	.size	krlsvetabl_close, .-krlsvetabl_close
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"close api td del objnode err\000"
	.space	3
.LC1:
	.ascii	"close api del objnode err\000"
	.section	.note.GNU-stack,"",%progbits
