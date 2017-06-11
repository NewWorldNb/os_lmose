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
	.file	"drvuart.c"
	.text
	.align	2
	.global	uart_set_driver
	.type	uart_set_driver, %function
uart_set_driver:
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
	.word	uart_open
	.word	uart_close
	.word	uart_read
	.word	uart_write
	.word	uart_lseek
	.word	uart_ioctrl
	.word	uart_dev_start
	.word	uart_dev_stop
	.word	uart_set_powerstus
	.word	uart_enum_dev
	.word	uart_flush
	.word	uart_shutdown
	.size	uart_set_driver, .-uart_set_driver
	.align	2
	.global	uart0_set_device
	.type	uart0_set_device, %function
uart0_set_device:
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
	mov	r2, #15
	str	r2, [r0, #68]
	str	r3, [r0, #76]
	str	r3, [r0, #72]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LC1
	.size	uart0_set_device, .-uart0_set_device
	.align	2
	.global	uart_exit
	.type	uart_exit, %function
uart_exit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_exit, .-uart_exit
	.align	2
	.global	uart_read
	.type	uart_read, %function
uart_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_read, .-uart_read
	.align	2
	.global	uart_lseek
	.type	uart_lseek, %function
uart_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_lseek, .-uart_lseek
	.align	2
	.global	uart_ioctrl
	.type	uart_ioctrl, %function
uart_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_ioctrl, .-uart_ioctrl
	.align	2
	.global	uart_dev_start
	.type	uart_dev_start, %function
uart_dev_start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_dev_start, .-uart_dev_start
	.align	2
	.global	uart_dev_stop
	.type	uart_dev_stop, %function
uart_dev_stop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_dev_stop, .-uart_dev_stop
	.align	2
	.global	uart_set_powerstus
	.type	uart_set_powerstus, %function
uart_set_powerstus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_set_powerstus, .-uart_set_powerstus
	.align	2
	.global	uart_enum_dev
	.type	uart_enum_dev, %function
uart_enum_dev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_enum_dev, .-uart_enum_dev
	.align	2
	.global	uart_flush
	.type	uart_flush, %function
uart_flush:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_flush, .-uart_flush
	.align	2
	.global	uart_shutdown
	.type	uart_shutdown, %function
uart_shutdown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	uart_shutdown, .-uart_shutdown
	.align	2
	.global	uartdev_send_char
	.type	uartdev_send_char, %function
uartdev_send_char:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r4, r0, #0
	moveq	r5, #1048576
	mov	r6, r1
	addeq	r5, r5, #1
	beq	.L31
	b	.L30
.L32:
	cmp	r4, r5
	beq	.L30
	add	r4, r4, #1
.L31:
	mov	r0, #1342177280
	add	r0, r0, #16
	bl	hal_io32_read
	tst	r0, #4
	beq	.L32
	mov	r0, #1342177280
	add	r0, r0, #32
	mov	r1, r6
	bl	hal_io32_write
	mov	r0, #0
.L33:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L30:
	mvn	r0, #0
	b	.L33
	.size	uartdev_send_char, .-uartdev_send_char
	.align	2
	.global	init_devuart0
	.type	init_devuart0, %function
init_devuart0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #1342177280
	mov	r1, #3
	bl	hal_io32_write
	mov	r0, #1342177284
	mov	r1, #5
	bl	hal_io32_write
	mov	r0, #1342177288
	mov	r1, #0
	bl	hal_io32_write
	mov	r0, #1342177292
	mov	r1, #3
	bl	hal_io32_write
	mov	r0, #1342177280
	add	r0, r0, #40
	mov	r1, #26
	bl	hal_io32_write
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	init_devuart0, .-init_devuart0
	.align	2
	.global	uart_write
	.type	uart_write, %function
uart_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, #0
	sub	sp, sp, #24
	ldr	r4, [r0, #76]
	mov	r2, r5
	mov	r0, r1
	add	r3, sp, #20
	add	r1, sp, #16
	str	r5, [sp, #0]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	bl	krldev_retn_rqueparm
	cmn	r0, #1
	beq	.L39
	ldr	r6, [sp, #16]
	b	.L40
.L45:
	ldr	r3, [sp, #20]
	cmp	r3, r5
	bcc	.L44
.L40:
	ldrb	r1, [r6, r5]	@ zero_extendqisi2
	mov	r0, r4
	bl	uartdev_send_char
	cmn	r0, #1
	add	r5, r5, #1
	bne	.L45
.L39:
	mvn	r0, #0
.L41:
	add	sp, sp, #24
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L44:
	mov	r0, #0
	b	.L41
	.size	uart_write, .-uart_write
	.align	2
	.global	uart_close
	.type	uart_close, %function
uart_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krldev_dec_devcount
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	uart_close, .-uart_close
	.align	2
	.global	uart_open
	.type	uart_open, %function
uart_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krldev_inc_devcount
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	uart_open, .-uart_open
	.align	2
	.global	uart0_err_handle
	.type	uart0_err_handle, %function
uart0_err_handle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L52
	bl	printfk
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	.LC2
	.size	uart0_err_handle, .-uart0_err_handle
	.align	2
	.global	uart0_txd_handle
	.type	uart0_txd_handle, %function
uart0_txd_handle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L56
	bl	printfk
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	.LC3
	.size	uart0_txd_handle, .-uart0_txd_handle
	.align	2
	.global	uart0_rxd_handle
	.type	uart0_rxd_handle, %function
uart0_rxd_handle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L60
	bl	printfk
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	.LC4
	.size	uart0_rxd_handle, .-uart0_rxd_handle
	.align	2
	.global	uart_entry
	.type	uart_entry, %function
uart_entry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r6, r0, #0
	bne	.L69
.L63:
	mvn	r0, #0
.L65:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L69:
	bl	new_device_dsc
	subs	r4, r0, #0
	beq	.L63
	ldr	r3, .L70
	str	r3, [r6, #140]
	ldr	r3, .L70+4
	str	r3, [r6, #68]
	ldr	r3, .L70+8
	str	r3, [r6, #72]
	ldr	r3, .L70+12
	str	r3, [r6, #76]
	ldr	r3, .L70+16
	str	r3, [r6, #80]
	ldr	r3, .L70+20
	str	r3, [r6, #84]
	ldr	r3, .L70+24
	str	r3, [r6, #88]
	ldr	r3, .L70+28
	str	r3, [r6, #92]
	ldr	r3, .L70+32
	str	r3, [r6, #96]
	ldr	r3, .L70+36
	str	r3, [r6, #100]
	ldr	r3, .L70+40
	str	r3, [r6, #104]
	ldr	r3, .L70+44
	str	r3, [r6, #108]
	ldr	r3, .L70+48
	str	r3, [r6, #112]
	mov	r3, #2
	str	r3, [r4, #64]
	mov	r3, #1
	str	r3, [r4, #60]
	mov	r3, #15
	str	r3, [r4, #68]
	ldr	r3, .L70+52
	mov	r5, #0
	mov	r1, r6
	str	r3, [r4, #152]
	str	r5, [r4, #72]
	str	r5, [r4, #76]
	bl	krldev_add_driver
	cmn	r0, #1
	mov	r6, r0
	beq	.L68
	mov	r0, r4
	bl	krlnew_device
	cmn	r0, #1
	mov	r6, r0
	beq	.L68
	mov	r0, r4
	ldr	r1, .L70+56
	mov	r2, #32
	bl	krlnew_devhandle
	cmn	r0, #1
	beq	.L63
	mov	r0, r4
	ldr	r1, .L70+60
	mov	r2, #33
	bl	krlnew_devhandle
	cmn	r0, #1
	beq	.L63
	mov	r0, r4
	ldr	r1, .L70+64
	mov	r2, #34
	bl	krlnew_devhandle
	cmn	r0, #1
	beq	.L63
	bl	init_devuart0
	mov	r0, r5
	b	.L65
.L68:
	mov	r0, r4
	bl	del_device_dsc
	mov	r0, r6
	b	.L65
.L71:
	.align	2
.L70:
	.word	.LC0
	.word	uart_open
	.word	uart_close
	.word	uart_read
	.word	uart_write
	.word	uart_lseek
	.word	uart_ioctrl
	.word	uart_dev_start
	.word	uart_dev_stop
	.word	uart_set_powerstus
	.word	uart_enum_dev
	.word	uart_flush
	.word	uart_shutdown
	.word	.LC1
	.word	uart0_rxd_handle
	.word	uart0_txd_handle
	.word	uart0_err_handle
	.size	uart_entry, .-uart_entry
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"uartdrv\000"
.LC1:
	.ascii	"uart0\000"
	.space	2
.LC2:
	.ascii	"err_handle run\012\015\000"
	.space	3
.LC3:
	.ascii	"txd_handle run\012\015\000"
	.space	3
.LC4:
	.ascii	"rxd_handle run\012\015\000"
	.section	.note.GNU-stack,"",%progbits
