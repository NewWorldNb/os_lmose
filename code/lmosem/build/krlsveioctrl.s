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
	.file	"krlsveioctrl.c"
	.text
	.align	2
	.global	krlsve_ioctrl_device
	.type	krlsve_ioctrl_device, %function
krlsve_ioctrl_device:
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
	.size	krlsve_ioctrl_device, .-krlsve_ioctrl_device
	.align	2
	.global	krlsve_core_ioctrl
	.type	krlsve_core_ioctrl, %function
krlsve_core_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r7, r3
	mov	r5, r2
	mov	r6, r1
	bl	krlsched_retn_currthread
	mov	r1, r4
	bl	krlthd_retn_objnode
	subs	r3, r0, #0
	bne	.L10
.L8:
	mvn	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L10:
	ldr	r2, [r3, #52]
	cmp	r2, #1
	bne	.L8
	mov	r2, #5
	str	r7, [r3, #60]
	str	r2, [r3, #48]
	str	r6, [r3, #80]
	str	r5, [r3, #76]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	krlsve_ioctrl_device
	.size	krlsve_core_ioctrl, .-krlsve_core_ioctrl
	.align	2
	.global	krlsve_ioctrl
	.type	krlsve_ioctrl, %function
krlsve_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmn	r0, #1
	cmpne	r1, #0
	bne	.L12
	mvn	r0, #0
	bx	lr
.L12:
	b	krlsve_core_ioctrl
	.size	krlsve_ioctrl, .-krlsve_ioctrl
	.align	2
	.global	krlsvetabl_ioctrl
	.type	krlsvetabl_ioctrl, %function
krlsvetabl_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #12
	mov	r2, r1
	beq	.L16
	mvn	r0, #0
	bx	lr
.L16:
	ldr	r3, [r1, #20]
	ldr	r0, [r1, #8]
	ldr	r2, [r2, #16]
	ldr	r1, [r1, #12]
	b	krlsve_ioctrl
	.size	krlsvetabl_ioctrl, .-krlsvetabl_ioctrl
	.section	.note.GNU-stack,"",%progbits
