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
	.file	"krlsveopen.c"
	.text
	.align	2
	.global	krlsve_open_device
	.type	krlsve_open_device, %function
krlsve_open_device:
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
	.size	krlsve_open_device, .-krlsve_open_device
	.align	2
	.global	krlsve_core_open
	.type	krlsve_core_open, %function
krlsve_core_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	and	r4, r1, #15
	mov	r6, r0
	bl	krlsched_retn_currthread
	cmp	r4, #1
	mov	r5, r0
	beq	.L16
.L8:
	mvn	r4, #0
.L12:
	mov	r0, r4
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L16:
.L9:
	ldr	r3, [r6, #8]
	ldr	ip, [r6, #0]
	ldr	r2, [r6, #4]
	add	r0, sp, #4
	mov	r1, r4
	str	ip, [sp, #4]
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	bl	krlonidfl_retn_device
	subs	r7, r0, #0
	beq	.L8
	bl	krlnew_objnode
	subs	r6, r0, #0
	beq	.L8
	mov	r3, #0
	str	r4, [r6, #52]
	str	r3, [r6, #48]
	str	r7, [r6, #56]
	mov	r0, r5
	mov	r1, r6
	bl	krlthd_add_objnode
	cmn	r0, #1
	mov	r4, r0
	beq	.L10
	mov	r0, r6
	bl	krlsve_open_device
	cmn	r0, #1
	bne	.L12
	ldr	r0, .L17
	mov	r1, r4
	bl	printfk
	mov	r0, r5
	mov	r1, r4
	bl	krlthd_del_objnode
	cmn	r0, #1
	ldreq	r0, .L17+4
	bleq	hal_sysdie
.L13:
	mov	r0, r6
	bl	krldel_objnode
	cmp	r0, #0
	bne	.L8
	ldr	r0, .L17+8
	bl	hal_sysdie
	mvn	r4, #0
	b	.L12
.L10:
	mov	r1, r0
	ldr	r0, .L17
	bl	printfk
	b	.L13
.L18:
	.align	2
.L17:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	krlsve_core_open, .-krlsve_core_open
	.align	2
	.global	krlsve_open
	.type	krlsve_open, %function
krlsve_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	bne	.L22
.L20:
	mvn	r0, #0
	bx	lr
.L22:
	tst	r1, #15
	beq	.L20
	b	krlsve_core_open
	.size	krlsve_open, .-krlsve_open
	.align	2
	.global	krlsvetabl_open
	.type	krlsvetabl_open, %function
krlsvetabl_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #8
	beq	.L24
	mvn	r0, #0
	bx	lr
.L24:
	add	r0, r1, #8
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	b	krlsve_open
	.size	krlsvetabl_open, .-krlsvetabl_open
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"call open ok had%x \012\015\000"
	.space	2
.LC1:
	.ascii	"open api td del objnode err\000"
.LC2:
	.ascii	"open api del objnode err\000"
	.section	.note.GNU-stack,"",%progbits
