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
	.file	"haluart.c"
	.text
	.align	2
	.global	hal_uart_read
	.type	hal_uart_read, %function
hal_uart_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	hal_uart_read, .-hal_uart_read
	.align	2
	.global	hal_uart_ioctrl
	.type	hal_uart_ioctrl, %function
hal_uart_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	hal_uart_ioctrl, .-hal_uart_ioctrl
	.align	2
	.global	uart_receive_char
	.type	uart_receive_char, %function
uart_receive_char:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	uart_receive_char, .-uart_receive_char
	.align	2
	.global	uart_send_char
	.type	uart_send_char, %function
uart_send_char:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r4, r0, #0
	moveq	r5, #1048576
	mov	r6, r1
	addeq	r5, r5, #1
	beq	.L9
	b	.L8
.L10:
	cmp	r4, r5
	beq	.L8
	add	r4, r4, #1
.L9:
	mov	r0, #1342177280
	add	r0, r0, #16
	bl	hal_io32_read
	tst	r0, #4
	beq	.L10
	mov	r0, #1342177280
	add	r0, r0, #32
	mov	r1, r6
	bl	hal_io32_write
	mov	r0, #0
.L11:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L8:
	mvn	r0, #0
	b	.L11
	.size	uart_send_char, .-uart_send_char
	.align	2
	.global	hal_uart0_putc
	.type	hal_uart0_putc, %function
hal_uart0_putc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
.L15:
	mov	r0, #1342177280
	add	r0, r0, #16
	bl	hal_io32_read
	tst	r0, #4
	beq	.L15
	mov	r0, #1342177280
	add	r0, r0, #32
	mov	r1, r4
	bl	hal_io32_write
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	hal_uart0_putc, .-hal_uart0_putc
	.align	2
	.global	init_uart0
	.type	init_uart0, %function
init_uart0:
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
	mov	r1, #0
	bl	hal_io32_write
	mov	r0, #1342177280
	add	r0, r0, #40
	mov	r1, #26
	bl	hal_io32_write
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	init_uart0, .-init_uart0
	.align	2
	.global	init_haluart
	.type	init_haluart, %function
init_haluart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	init_uart0
	.size	init_haluart, .-init_haluart
	.align	2
	.global	hal_uart_write
	.type	hal_uart_write, %function
hal_uart_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r6, sp, #4
	mov	r4, r1
	mov	r5, r0
	mov	r0, r6
	bl	hal_disableirq_savecpuflg
	ldrb	r1, [r4, #0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L26
	b	.L23
.L24:
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L23
.L26:
	mov	r0, r5
	bl	uart_send_char
	cmn	r0, #1
	mov	r7, r0
	bne	.L24
	ldr	r0, .L29
	bl	hal_sysdie
	mov	r0, r7
	b	.L25
.L23:
	mov	r0, r6
	bl	hal_enableirq_restcpuflg
	mov	r0, #0
.L25:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LC0
	.size	hal_uart_write, .-hal_uart_write
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"uart err\000"
	.section	.note.GNU-stack,"",%progbits
