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
	.file	"krlsveread.c"
	.text
	.align	2
	.global	krlsve_read_device
	.type	krlsve_read_device, %function
krlsve_read_device:
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
	.size	krlsve_read_device, .-krlsve_read_device
	.align	2
	.global	krlsve_core_read
	.type	krlsve_core_read, %function
krlsve_core_read:
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
	mov	r2, #2
	str	r7, [r3, #60]
	str	r2, [r3, #48]
	str	r6, [r3, #80]
	str	r5, [r3, #72]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	krlsve_read_device
	.size	krlsve_core_read, .-krlsve_core_read
	.align	2
	.global	krlsve_read
	.type	krlsve_read, %function
krlsve_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmn	r0, #1
	cmpne	r1, #0
	bne	.L14
.L12:
	mvn	r0, #0
	bx	lr
.L14:
	cmp	r2, #0
	beq	.L12
	b	krlsve_core_read
	.size	krlsve_read, .-krlsve_read
	.align	2
	.global	krlsvetabl_read
	.type	krlsvetabl_read, %function
krlsvetabl_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #10
	mov	r2, r1
	beq	.L16
	mvn	r0, #0
	bx	lr
.L16:
	ldr	r3, [r1, #20]
	ldr	r0, [r1, #8]
	ldr	r2, [r2, #16]
	ldr	r1, [r1, #12]
	b	krlsve_read
	.size	krlsvetabl_read, .-krlsvetabl_read
	.section	.note.GNU-stack,"",%progbits
