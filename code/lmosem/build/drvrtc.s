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
	.file	"drvrtc.c"
	.text
	.align	2
	.global	rtc_set_driver
	.type	rtc_set_driver, %function
rtc_set_driver:
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
	.word	rtc_open
	.word	rtc_close
	.word	rtc_read
	.word	rtc_write
	.word	rtc_lseek
	.word	rtc_ioctrl
	.word	rtc_dev_start
	.word	rtc_dev_stop
	.word	rtc_set_powerstus
	.word	rtc_enum_dev
	.word	rtc_flush
	.word	rtc_shutdown
	.size	rtc_set_driver, .-rtc_set_driver
	.align	2
	.global	rtc_set_device
	.type	rtc_set_device, %function
rtc_set_device:
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
	mov	r2, #22
	str	r2, [r0, #68]
	str	r3, [r0, #76]
	str	r3, [r0, #72]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LC1
	.size	rtc_set_device, .-rtc_set_device
	.align	2
	.global	rtc_exit
	.type	rtc_exit, %function
rtc_exit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_exit, .-rtc_exit
	.align	2
	.global	rtc_write
	.type	rtc_write, %function
rtc_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_write, .-rtc_write
	.align	2
	.global	rtc_lseek
	.type	rtc_lseek, %function
rtc_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_lseek, .-rtc_lseek
	.align	2
	.global	rtc_dev_start
	.type	rtc_dev_start, %function
rtc_dev_start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_dev_start, .-rtc_dev_start
	.align	2
	.global	rtc_dev_stop
	.type	rtc_dev_stop, %function
rtc_dev_stop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_dev_stop, .-rtc_dev_stop
	.align	2
	.global	rtc_set_powerstus
	.type	rtc_set_powerstus, %function
rtc_set_powerstus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_set_powerstus, .-rtc_set_powerstus
	.align	2
	.global	rtc_enum_dev
	.type	rtc_enum_dev, %function
rtc_enum_dev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_enum_dev, .-rtc_enum_dev
	.align	2
	.global	rtc_flush
	.type	rtc_flush, %function
rtc_flush:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_flush, .-rtc_flush
	.align	2
	.global	rtc_shutdown
	.type	rtc_shutdown, %function
rtc_shutdown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	rtc_shutdown, .-rtc_shutdown
	.align	2
	.global	rtc_upfreq
	.type	rtc_upfreq, %function
rtc_upfreq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #1459617792
	mov	r5, r0
	mov	r1, #1
	add	r0, r4, #64
	bl	hal_io8_write
	and	r1, r5, #63
	add	r0, r4, #68
	orr	r1, r1, #128
	bl	hal_io8_write
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	rtc_upfreq, .-rtc_upfreq
	.align	2
	.global	rtc_setime
	.type	rtc_setime, %function
rtc_setime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, #1459617792
	sub	sp, sp, #36
	mov	r5, r0
	mov	r1, #1
	add	r0, r4, #64
	bl	hal_io8_write
	ldr	r7, [r5, #24]
	ldr	r3, .L31
	ldr	fp, [r5, #0]
	str	r7, [sp, #4]
	umull	r2, r1, r3, fp
	ldr	r2, [sp, #4]
	ldr	r9, [r5, #4]
	umull	ip, lr, r3, r2
	ldr	r7, [r5, #16]
	umull	ip, r0, r3, r9
	umull	r2, ip, r3, r7
	ldr	sl, [r5, #8]
	str	lr, [sp, #0]
	ldr	r8, [r5, #12]
	ldr	r6, [r5, #20]
	umull	lr, r5, r3, sl
	str	ip, [sp, #8]
	umull	r2, lr, r3, r8
	umull	ip, r2, r3, r6
	mov	r1, r1, lsr #3
	add	r3, r1, r1, asl #2
	sub	fp, fp, r3, asl #1
	add	r1, fp, r1, asl #4
	ldr	r3, [sp, #8]
	ldr	fp, [sp, #0]
	mov	r0, r0, lsr #3
	mov	ip, r3, lsr #3
	mov	r5, r5, lsr #3
	mov	r3, fp, lsr #3
	add	fp, r0, r0, asl #2
	sub	fp, r9, fp, asl #1
	add	r9, r5, r5, asl #2
	mov	r2, r2, lsr #3
	str	r9, [sp, #8]
	add	r9, ip, ip, asl #2
	str	r9, [sp, #0]
	add	r9, r2, r2, asl #2
	str	r9, [sp, #24]
	add	r9, r3, r3, asl #2
	str	r9, [sp, #28]
	ldr	r9, [sp, #8]
	mov	lr, lr, lsr #3
	str	fp, [sp, #16]
	sub	sl, sl, r9, asl #1
	add	fp, lr, lr, asl #2
	str	sl, [sp, #12]
	sub	fp, r8, fp, asl #1
	ldr	sl, [sp, #0]
	ldr	r8, [sp, #4]
	ldr	r9, [sp, #28]
	str	fp, [sp, #8]
	mov	r0, r0, asl #4
	ldr	fp, [sp, #24]
	str	r0, [sp, #20]
	sub	r7, r7, sl, asl #1
	add	r0, r4, #136
	and	r1, r1, #255
	str	r7, [sp, #0]
	mov	sl, ip, asl #4
	sub	r7, r8, r9, asl #1
	sub	r6, r6, fp, asl #1
	mov	r9, r2, asl #4
	mov	fp, r3, asl #4
	mov	r8, lr, asl #4
	bl	hal_io8_write
	ldr	ip, [sp, #20]
	ldr	lr, [sp, #16]
	add	r1, ip, lr
	add	r0, r4, #132
	and	r1, r1, #255
	bl	hal_io8_write
	ldr	r2, [sp, #12]
	mov	r5, r5, asl #4
	add	r5, r5, r2
	and	r1, r5, #255
	add	r0, r4, #128
	bl	hal_io8_write
	ldr	r3, [sp, #8]
	add	r8, r8, r3
	and	r1, r8, #255
	add	r0, r4, #124
	bl	hal_io8_write
	ldr	r8, [sp, #0]
	add	sl, sl, r8
	and	r1, sl, #255
	add	r0, r4, #120
	add	r6, r9, r6
	bl	hal_io8_write
	add	r7, fp, r7
	and	r1, r6, #255
	add	r0, r4, #116
	bl	hal_io8_write
	add	r0, r4, #112
	and	r1, r7, #255
	bl	hal_io8_write
	mov	r0, #0
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	-858993459
	.size	rtc_setime, .-rtc_setime
	.align	2
	.global	init_rtc
	.type	init_rtc, %function
init_rtc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #1459617792
	add	r0, r4, #64
	mov	r1, #1
	bl	hal_io8_write
	add	r0, r4, #68
	mov	r1, #255
	bl	hal_io8_write
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	init_rtc, .-init_rtc
	.align	2
	.global	rtc_read
	.type	rtc_read, %function
rtc_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, #0
	sub	sp, sp, #60
	mov	r0, r1
	mov	r2, r4
	add	r1, sp, #48
	add	r3, sp, #52
	str	r4, [sp, #0]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	krldev_retn_rqueparm
	cmn	r0, #1
	bne	.L40
.L36:
	mvn	r0, #0
.L37:
	add	sp, sp, #60
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L40:
	ldr	r3, [sp, #48]
	cmp	r3, r4
	beq	.L36
	ldr	r3, [sp, #52]
	cmp	r3, #27
	bls	.L36
	mov	r0, #1459617792
	add	r0, r0, #136
	bl	hal_io8_read
	mov	r7, r0
	mov	r0, #1459617792
	add	r0, r0, #132
	bl	hal_io8_read
	mov	r6, r0
	mov	r0, #1459617792
	add	r0, r0, #128
	bl	hal_io8_read
	mov	r5, r0
	mov	r0, #1459617792
	add	r0, r0, #124
	bl	hal_io8_read
	mov	fp, r0
	mov	r0, #1459617792
	add	r0, r0, #120
	bl	hal_io8_read
	str	r0, [sp, #28]
	mov	r0, #1459617792
	add	r0, r0, #116
	bl	hal_io8_read
	str	r0, [sp, #32]
	mov	r0, #1459617792
	add	r0, r0, #112
	bl	hal_io8_read
	ldr	r3, [sp, #28]
	mov	sl, r5, lsr #4
	mov	ip, r3, lsr #4
	mov	r8, fp, lsr #4
	ldr	r3, [sp, #32]
	mov	r9, r6, lsr #4
	add	sl, sl, sl, asl #2
	add	r8, r8, r8, asl #2
	mov	r1, r3, lsr #4
	add	r9, r9, r9, asl #2
	mov	r3, r7, lsr #4
	str	sl, [sp, #20]
	str	r8, [sp, #40]
	add	r8, sp, #28
	ldmia	r8, {r8, sl}	@ phole ldm
	and	r7, r7, #15
	str	r9, [sp, #36]
	add	r7, r7, #2000
	add	r3, r3, r3, asl #2
	add	r9, ip, ip, asl #2
	add	r1, r1, r1, asl #2
	and	ip, r8, #15
	add	r3, r7, r3, asl #1
	and	r8, sl, #15
	ldr	r7, [sp, #36]
	ldr	sl, [sp, #20]
	str	r1, [sp, #44]
	and	r6, r6, #15
	and	r5, r5, #15
	mov	r2, r0, lsr #4
	add	r6, r6, r7, asl #1
	add	r5, r5, sl, asl #1
	add	r7, sp, #40
	ldmia	r7, {r7, sl}	@ phole ldm
	ldr	r1, [sp, #48]
	and	r0, r0, #15
	add	r2, r2, r2, asl #2
	and	fp, fp, #15
	add	r2, r0, r2, asl #1
	add	fp, fp, r7, asl #1
	add	ip, ip, r9, asl #1
	add	r8, r8, sl, asl #1
	str	r2, [r1, #24]
	stmia	r1, {r3, r6}	@ phole stm
	str	r5, [r1, #8]
	str	fp, [r1, #12]
	str	ip, [r1, #16]
	str	r8, [r1, #20]
	mov	r0, r4
	b	.L37
	.size	rtc_read, .-rtc_read
	.align	2
	.global	rtc_set_synsecalm
	.type	rtc_set_synsecalm, %function
rtc_set_synsecalm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r2, #59
	mov	r6, r0
	sub	sp, sp, #12
	mov	r4, r2
	mov	r5, r1
	mvnhi	r0, #0
	bls	.L46
.L43:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L46:
	mov	r0, #1459617792
	mov	r1, #1
	add	r0, r0, #64
	bl	hal_io8_write
	mov	r0, #1459617792
	add	r0, r0, #136
	bl	hal_io8_read
	mov	r1, r0
	mov	r0, #1459617792
	add	r0, r0, #132
	str	r1, [sp, #4]
	bl	hal_io8_read
	mov	r9, r0
	mov	r0, #1459617792
	add	r0, r0, #124
	bl	hal_io8_read
	mov	sl, r0
	mov	r0, #1459617792
	add	r0, r0, #120
	bl	hal_io8_read
	mov	r8, r0
	mov	r0, #1459617792
	add	r0, r0, #116
	bl	hal_io8_read
	mov	r7, r0
	mov	r0, #1459617792
	add	r0, r0, #112
	bl	hal_io8_read
	mov	r3, r0, lsr #4
	and	r0, r0, #15
	add	r4, r0, r4
	add	r3, r3, r3, asl #2
	add	r4, r4, r3, asl #1
	ldr	r3, .L48
	umull	r2, fp, r3, r4
	mov	r0, #1459617792
	mov	fp, fp, lsr #3
	add	r3, fp, fp, asl #2
	add	r0, r0, #104
	ldr	r1, [sp, #4]
	sub	r4, r4, r3, asl #1
	bl	hal_io8_write
	mov	r0, #1459617792
	add	r0, r0, #100
	mov	r1, r9
	bl	hal_io8_write
	mov	r0, #1459617792
	add	r0, r0, #96
	mov	r1, sl
	bl	hal_io8_write
	mov	r0, #1459617792
	add	r0, r0, #92
	mov	r1, r8
	bl	hal_io8_write
	mov	r0, #1459617792
	add	r0, r0, #88
	mov	r1, r7
	mov	fp, fp, asl #4
	bl	hal_io8_write
	add	r4, fp, r4
	mov	r0, #1459617792
	and	r1, r4, #255
	add	r0, r0, #84
	bl	hal_io8_write
	mov	r0, r6
	mov	r1, r5
	bl	krldev_add_request
	cmn	r0, #1
	mov	r4, r0
	beq	.L47
	mov	r0, #1459617792
	add	r0, r0, #80
	mov	r1, #65
	bl	hal_io8_write
	mov	r0, r6
	mov	r1, r5
	bl	krldev_wait_request
	mov	r0, #0
	b	.L43
.L47:
	ldr	r0, .L48+4
	bl	hal_sysdie
	mov	r0, r4
	b	.L43
.L49:
	.align	2
.L48:
	.word	-858993459
	.word	.LC2
	.size	rtc_set_synsecalm, .-rtc_set_synsecalm
	.align	2
	.global	rtc_ioctrl
	.type	rtc_ioctrl, %function
rtc_ioctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #28
	mov	ip, #0
	add	r3, sp, #24
	str	ip, [r3, #-8]!
	mov	r4, r1
	add	lr, sp, #20
	mov	r1, r3
	mov	r2, ip
	mov	r5, r0
	mov	r3, ip
	mov	r0, r4
	str	lr, [sp, #0]
	str	ip, [sp, #20]
	str	ip, [sp, #4]
	str	ip, [sp, #8]
	bl	krldev_retn_rqueparm
	cmn	r0, #1
	bne	.L56
.L51:
	mvn	r0, #0
.L53:
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L56:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L51
	ldr	r2, [sp, #20]
	cmp	r2, #3
	beq	.L57
	cmp	r2, #1
	bne	.L54
	mov	r0, r3
	bl	rtc_setime
	b	.L53
.L54:
	cmp	r2, #2
	bne	.L51
	ldr	r0, [r3, #0]
	bl	rtc_upfreq
	b	.L53
.L57:
	mov	r0, r5
	mov	r1, r4
	ldr	r2, [r3, #0]
	bl	rtc_set_synsecalm
	b	.L53
	.size	rtc_ioctrl, .-rtc_ioctrl
	.align	2
	.global	rtc_close
	.type	rtc_close, %function
rtc_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krldev_dec_devcount
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	rtc_close, .-rtc_close
	.align	2
	.global	rtc_open
	.type	rtc_open, %function
rtc_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krldev_inc_devcount
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	rtc_open, .-rtc_open
	.align	2
	.global	rtc_tick_handle
	.type	rtc_tick_handle, %function
rtc_tick_handle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, #1459617792
	sub	sp, sp, #36
	add	r0, r4, #136
	bl	hal_io8_read
	mov	r9, r0
	add	r0, r4, #132
	bl	hal_io8_read
	mov	sl, r0
	add	r0, r4, #128
	bl	hal_io8_read
	mov	r8, r0
	add	r0, r4, #124
	bl	hal_io8_read
	mov	r7, r0
	add	r0, r4, #120
	bl	hal_io8_read
	mov	r6, r0
	add	r0, r4, #116
	bl	hal_io8_read
	mov	r5, r0
	add	r0, r4, #112
	bl	hal_io8_read
	mov	fp, r9, lsr #4
	mov	lr, r5, lsr #4
	add	fp, fp, fp, asl #2
	str	fp, [sp, #16]
	mov	r1, sl, lsr #4
	and	r5, r5, #15
	add	lr, lr, lr, asl #2
	add	lr, r5, lr, asl #1
	add	r1, r1, r1, asl #2
	ldr	r5, [sp, #16]
	and	r9, r9, #15
	str	r1, [sp, #20]
	mov	ip, r0, lsr #4
	mov	r2, r8, lsr #4
	add	r9, r9, #2000
	add	fp, ip, ip, asl #2
	add	r2, r2, r2, asl #2
	and	ip, r0, #15
	add	r0, r9, r5, asl #1
	ldr	r5, [sp, #20]
	str	r2, [sp, #24]
	mov	r3, r7, lsr #4
	and	r1, sl, #15
	add	r1, r1, r5, asl #1
	add	r3, r3, r3, asl #2
	ldr	r5, [sp, #24]
	str	r3, [sp, #28]
	and	r2, r8, #15
	add	r2, r2, r5, asl #1
	mov	r4, r6, lsr #4
	ldr	r5, [sp, #28]
	and	r3, r7, #15
	and	r6, r6, #15
	add	r4, r4, r4, asl #2
	add	ip, ip, fp, asl #1
	add	r4, r6, r4, asl #1
	add	r3, r3, r5, asl #1
	stmia	sp, {r4, lr}	@ phole stm
	str	ip, [sp, #8]
	bl	krlupdate_times
	mov	r0, #0
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	rtc_tick_handle, .-rtc_tick_handle
	.align	2
	.global	rtc_handle
	.type	rtc_handle, %function
rtc_handle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r1, #100]
	cmp	r3, #0
	sub	sp, sp, #8
	mov	r4, r1
	bne	.L68
.L65:
	mov	r0, #0
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L68:
	mov	r0, r1
	add	r2, sp, #4
	mov	r1, #5
	bl	krldev_retn_request
	cmn	r0, #1
	beq	.L69
.L66:
	mov	r0, r4
	ldr	r1, [sp, #4]
	bl	krldev_complete_request
	cmn	r0, #1
	bne	.L65
	ldr	r0, .L70
	bl	hal_sysdie
	b	.L65
.L69:
	ldr	r0, .L70+4
	bl	hal_sysdie
	b	.L66
.L71:
	.align	2
.L70:
	.word	.LC4
	.word	.LC3
	.size	rtc_handle, .-rtc_handle
	.align	2
	.global	rtc_entry
	.type	rtc_entry, %function
rtc_entry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r6, r0, #0
	bne	.L79
.L73:
	mvn	r0, #0
.L75:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L79:
	bl	new_device_dsc
	subs	r4, r0, #0
	beq	.L73
	ldr	r3, .L80
	str	r3, [r6, #140]
	ldr	r3, .L80+4
	str	r3, [r6, #68]
	ldr	r3, .L80+8
	str	r3, [r6, #72]
	ldr	r3, .L80+12
	str	r3, [r6, #76]
	ldr	r3, .L80+16
	str	r3, [r6, #80]
	ldr	r3, .L80+20
	str	r3, [r6, #84]
	ldr	r3, .L80+24
	str	r3, [r6, #88]
	ldr	r3, .L80+28
	str	r3, [r6, #92]
	ldr	r3, .L80+32
	str	r3, [r6, #96]
	ldr	r3, .L80+36
	str	r3, [r6, #100]
	ldr	r3, .L80+40
	str	r3, [r6, #104]
	ldr	r3, .L80+44
	str	r3, [r6, #108]
	ldr	r3, .L80+48
	str	r3, [r6, #112]
	mov	r3, #2
	str	r3, [r4, #64]
	mov	r3, #1
	str	r3, [r4, #60]
	mov	r3, #22
	str	r3, [r4, #68]
	ldr	r3, .L80+52
	mov	r5, #0
	mov	r1, r6
	str	r3, [r4, #152]
	str	r5, [r4, #72]
	str	r5, [r4, #76]
	bl	krldev_add_driver
	cmn	r0, #1
	mov	r6, r0
	beq	.L78
	mov	r0, r4
	bl	krlnew_device
	cmn	r0, #1
	mov	r6, r0
	beq	.L78
	mov	r0, r4
	ldr	r1, .L80+56
	mov	r2, #30
	bl	krlnew_devhandle
	cmn	r0, #1
	beq	.L73
	mov	r0, r4
	ldr	r1, .L80+60
	mov	r2, #8
	bl	krlnew_devhandle
	cmn	r0, #1
	beq	.L73
	mov	r0, #30
	bl	krlenable_intline
	cmn	r0, #1
	beq	.L73
	mov	r0, #8
	bl	krlenable_intline
	cmn	r0, #1
	beq	.L73
	bl	init_rtc
	mov	r0, r5
	b	.L75
.L78:
	mov	r0, r4
	bl	del_device_dsc
	mov	r0, r6
	b	.L75
.L81:
	.align	2
.L80:
	.word	.LC0
	.word	rtc_open
	.word	rtc_close
	.word	rtc_read
	.word	rtc_write
	.word	rtc_lseek
	.word	rtc_ioctrl
	.word	rtc_dev_start
	.word	rtc_dev_stop
	.word	rtc_set_powerstus
	.word	rtc_enum_dev
	.word	rtc_flush
	.word	rtc_shutdown
	.word	.LC1
	.word	rtc_handle
	.word	rtc_tick_handle
	.size	rtc_entry, .-rtc_entry
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"rtcdrv\000"
	.space	1
.LC1:
	.ascii	"rtc\000"
.LC2:
	.ascii	"rtc_setsynalm run\000"
	.space	2
.LC3:
	.ascii	"rtc hand run err no retn request\000"
	.space	3
.LC4:
	.ascii	"rtc hand run err no complete_request\000"
	.section	.note.GNU-stack,"",%progbits
