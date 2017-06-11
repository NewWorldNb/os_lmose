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
	.file	"drvtick.c"
	.text
	.align	2
	.global	systick_set_driver
	.type	systick_set_driver, %function
systick_set_driver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	str	r3, [r0, #140]
	ldr	r3, .L3+4
	str	r3, [r0, #68]
	ldr	r3, .L3+8
	str	r3, [r0, #72]
	ldr	r3, .L3+12
	str	r3, [r0, #76]
	ldr	r3, .L3+16
	str	r3, [r0, #80]
	ldr	r3, .L3+20
	str	r3, [r0, #84]
	ldr	r3, .L3+24
	str	r3, [r0, #88]
	ldr	r3, .L3+28
	str	r3, [r0, #92]
	ldr	r3, .L3+32
	str	r3, [r0, #96]
	ldr	r3, .L3+36
	str	r3, [r0, #100]
	ldr	r3, .L3+40
	str	r3, [r0, #104]
	ldr	r3, .L3+44
	str	r3, [r0, #108]
	ldr	r3, .L3+48
	str	r3, [r0, #112]
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	systick_open
	.word	systick_close
	.word	systick_read
	.word	systick_write
	.word	systick_lseek
	.word	systick_ioctrl
	.word	systick_dev_start
	.word	systick_dev_stop
	.word	systick_set_powerstus
	.word	systick_enum_dev
	.word	systick_flush
	.word	systick_shutdown
	.size	systick_set_driver, .-systick_set_driver
	.align	2
	.global	systick_set_device
	.type	systick_set_device, %function
systick_set_device:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L7
	str	r2, [r0, #152]
	mov	r2, #2
	str	r2, [r0, #64]
	mov	r2, #1
	mov	r3, #0
	str	r2, [r0, #60]
	mov	r2, #31
	str	r2, [r0, #68]
	str	r3, [r0, #76]
	str	r3, [r0, #72]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LC1
	.size	systick_set_device, .-systick_set_device
	.align	2
	.global	systick_exit
	.type	systick_exit, %function
systick_exit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_exit, .-systick_exit
	.align	2
	.global	systick_open
	.type	systick_open, %function
systick_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_open, .-systick_open
	.align	2
	.global	systick_close
	.type	systick_close, %function
systick_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_close, .-systick_close
	.align	2
	.global	systick_read
	.type	systick_read, %function
systick_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_read, .-systick_read
	.align	2
	.global	systick_write
	.type	systick_write, %function
systick_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_write, .-systick_write
	.align	2
	.global	systick_lseek
	.type	systick_lseek, %function
systick_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_lseek, .-systick_lseek
	.align	2
	.global	systick_ioctrl
	.type	systick_ioctrl, %function
systick_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_ioctrl, .-systick_ioctrl
	.align	2
	.global	systick_dev_start
	.type	systick_dev_start, %function
systick_dev_start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_dev_start, .-systick_dev_start
	.align	2
	.global	systick_dev_stop
	.type	systick_dev_stop, %function
systick_dev_stop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_dev_stop, .-systick_dev_stop
	.align	2
	.global	systick_set_powerstus
	.type	systick_set_powerstus, %function
systick_set_powerstus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_set_powerstus, .-systick_set_powerstus
	.align	2
	.global	systick_enum_dev
	.type	systick_enum_dev, %function
systick_enum_dev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_enum_dev, .-systick_enum_dev
	.align	2
	.global	systick_flush
	.type	systick_flush, %function
systick_flush:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_flush, .-systick_flush
	.align	2
	.global	systick_shutdown
	.type	systick_shutdown, %function
systick_shutdown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	systick_shutdown, .-systick_shutdown
	.align	2
	.global	systick_handle
	.type	systick_handle, %function
systick_handle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L37
	bl	printfk
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LC2
	.size	systick_handle, .-systick_handle
	.align	2
	.global	init_s3c2440_timer4
	.type	init_s3c2440_timer4, %function
init_s3c2440_timer4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r0, #1358954496
	bl	hal_io32_read
	mov	r5, #1358954496
	orr	r1, r0, #65280
	add	r4, r5, #4
	mov	r0, r5
	bl	hal_io32_write
	mov	r0, r4
	bl	hal_io32_read
	bic	r1, r0, #983040
	mov	r0, r4
	bl	hal_io32_write
	add	r4, r5, #8
	mov	r1, #65
	add	r0, r5, #60
	bl	hal_io32_write
	mov	r0, r4
	bl	hal_io32_read
	bic	r1, r0, #7340032
	mov	r0, r4
	bl	hal_io32_write
	mov	r0, r4
	bl	hal_io32_read
	orr	r1, r0, #7340032
	mov	r0, r4
	bl	hal_io32_write
	mov	r0, r4
	bl	hal_io32_read
	bic	r1, r0, #2097152
	mov	r0, r4
	bl	hal_io32_write
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	init_s3c2440_timer4, .-init_s3c2440_timer4
	.align	2
	.global	systick_entry
	.type	systick_entry, %function
systick_entry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r6, r0, #0
	bne	.L49
.L42:
	mvn	r0, #0
.L44:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L49:
	bl	new_device_dsc
	subs	r5, r0, #0
	beq	.L42
	ldr	r3, .L50
	str	r3, [r6, #140]
	ldr	r3, .L50+4
	str	r3, [r6, #68]
	ldr	r3, .L50+8
	str	r3, [r6, #72]
	ldr	r3, .L50+12
	str	r3, [r6, #76]
	ldr	r3, .L50+16
	str	r3, [r6, #80]
	ldr	r3, .L50+20
	str	r3, [r6, #84]
	ldr	r3, .L50+24
	str	r3, [r6, #88]
	ldr	r3, .L50+28
	str	r3, [r6, #92]
	ldr	r3, .L50+32
	str	r3, [r6, #96]
	ldr	r3, .L50+36
	str	r3, [r6, #100]
	ldr	r3, .L50+40
	str	r3, [r6, #104]
	ldr	r3, .L50+44
	str	r3, [r6, #108]
	ldr	r3, .L50+48
	str	r3, [r6, #112]
	mov	r3, #2
	str	r3, [r5, #64]
	mov	r3, #1
	str	r3, [r5, #60]
	mov	r3, #31
	str	r3, [r5, #68]
	ldr	r3, .L50+52
	mov	r4, #0
	mov	r1, r6
	str	r3, [r5, #152]
	str	r4, [r5, #72]
	str	r4, [r5, #76]
	bl	krldev_add_driver
	cmn	r0, #1
	mov	r6, r0
	beq	.L47
	mov	r0, r5
	bl	krlnew_device
	cmn	r0, #1
	mov	r6, r0
	beq	.L47
	mov	r0, r5
	ldr	r1, .L50+56
	mov	r2, #14
	bl	krlnew_devhandle
	cmn	r0, #1
	beq	.L42
	bl	init_s3c2440_timer4
	mov	r0, #14
	bl	krlenable_intline
	cmn	r0, #1
	movne	r0, r4
	bne	.L44
	b	.L42
.L47:
	mov	r0, r5
	bl	del_device_dsc
	mov	r0, r6
	b	.L44
.L51:
	.align	2
.L50:
	.word	.LC0
	.word	systick_open
	.word	systick_close
	.word	systick_read
	.word	systick_write
	.word	systick_lseek
	.word	systick_ioctrl
	.word	systick_dev_start
	.word	systick_dev_stop
	.word	systick_set_powerstus
	.word	systick_enum_dev
	.word	systick_flush
	.word	systick_shutdown
	.word	.LC1
	.word	systick_handle
	.size	systick_entry, .-systick_entry
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"systick0drv\000"
.LC1:
	.ascii	"systick0\000"
	.space	3
.LC2:
	.ascii	"systick_handle run!!\012\015\000"
	.section	.note.GNU-stack,"",%progbits
