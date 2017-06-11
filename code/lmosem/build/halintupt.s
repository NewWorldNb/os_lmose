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
	.file	"halintupt.c"
	.text
	.align	2
	.global	intserdsc_t_init
	.type	intserdsc_t_init, %function
intserdsc_t_init:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldr	r4, [sp, #4]
	add	ip, r0, #8
	str	r2, [r0, #20]
	mov	r2, #0
	str	r4, [r0, #32]
	str	ip, [r0, #12]
	str	r1, [r0, #16]
	str	r2, [r0, #28]
	str	r3, [r0, #24]
	str	r0, [r0, #0]
	stmib	r0, {r0, ip}	@ phole stm
	ldmfd	sp!, {r4}
	bx	lr
	.size	intserdsc_t_init, .-intserdsc_t_init
	.align	2
	.global	hal_retn_intfltdsc
	.type	hal_retn_intfltdsc, %function
hal_retn_intfltdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7
	ldr	r2, [r3, #48]
	cmp	r2, r0
	ldrhi	r3, [r3, #44]
	addhi	r0, r0, r0, asl #2
	movls	r0, #0
	addhi	r0, r3, r0, asl #3
	bx	lr
.L8:
	.align	2
.L7:
	.word	osmach
	.size	hal_retn_intfltdsc, .-hal_retn_intfltdsc
	.align	2
	.global	hal_intflt_default
	.type	hal_intflt_default, %function
hal_intflt_default:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmn	r0, #1
	cmpne	r1, #0
	movne	r0, #0
	moveq	r0, #1
	mvneq	r0, #0
	bx	lr
	.size	hal_intflt_default, .-hal_intflt_default
	.align	2
	.global	hal_retn_intnr
	.type	hal_retn_intnr, %function
hal_retn_intnr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1241513984
	stmfd	sp!, {r4, lr}
	add	r0, r0, #20
	bl	hal_io32_read
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	hal_retn_intnr, .-hal_retn_intnr
	.align	2
	.global	hal_disable_intline
	.type	hal_disable_intline, %function
hal_disable_intline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	ldr	r2, [r3, #48]
	cmp	r0, r2
	stmfd	sp!, {r4, r5, r6, lr}
	bcs	.L16
	ldr	r3, [r3, #44]
	add	r0, r0, r0, asl #2
	adds	r0, r3, r0, asl #3
	beq	.L16
	ldrb	r4, [r0, #16]	@ zero_extendqisi2
	cmp	r4, #1
	ldr	r5, [r0, #24]
	beq	.L22
	cmp	r4, #2
	bne	.L19
	mov	r0, #1241513984
	add	r0, r0, #28
	bl	hal_io32_read
	mov	r1, #1
	orr	r1, r0, r1, asl r5
	mov	r0, #1241513984
	add	r0, r0, #28
	bl	hal_io32_write
	mov	r0, #0
.L18:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L19:
	cmp	r4, #3
	beq	.L23
.L16:
	mvn	r0, #0
	b	.L18
.L22:
	mov	r0, #1241513984
	add	r0, r0, #8
	bl	hal_io32_read
	orr	r1, r0, r4, asl r5
	mov	r0, #1241513984
	add	r0, r0, #8
	bl	hal_io32_write
	mov	r0, #0
	b	.L18
.L23:
	mov	r0, #1442840576
	add	r0, r0, #164
	bl	hal_io32_read
	mov	r1, #1
	orr	r1, r0, r1, asl r5
	mov	r0, #1442840576
	add	r0, r0, #164
	bl	hal_io32_write
	mov	r0, #0
	b	.L18
.L25:
	.align	2
.L24:
	.word	osmach
	.size	hal_disable_intline, .-hal_disable_intline
	.align	2
	.global	hal_enable_intline
	.type	hal_enable_intline, %function
hal_enable_intline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	ldr	r2, [r3, #48]
	cmp	r0, r2
	stmfd	sp!, {r4, r5, r6, lr}
	bcs	.L27
	ldr	r3, [r3, #44]
	add	r0, r0, r0, asl #2
	adds	r0, r3, r0, asl #3
	beq	.L27
	ldrb	r4, [r0, #16]	@ zero_extendqisi2
	cmp	r4, #1
	ldr	r5, [r0, #24]
	beq	.L32
	cmp	r4, #2
	bne	.L30
	mov	r0, #1241513984
	add	r0, r0, #28
	bl	hal_io32_read
	mov	r1, #1
	bic	r1, r0, r1, asl r5
	mov	r0, #1241513984
	add	r0, r0, #28
	bl	hal_io32_write
	mov	r0, #0
.L29:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L30:
	cmp	r4, #3
	beq	.L33
.L27:
	mvn	r0, #0
	b	.L29
.L32:
	mov	r0, #1241513984
	add	r0, r0, #8
	bl	hal_io32_read
	bic	r1, r0, r4, asl r5
	mov	r0, #1241513984
	add	r0, r0, #8
	bl	hal_io32_write
	mov	r0, #0
	b	.L29
.L33:
	mov	r0, #1442840576
	add	r0, r0, #164
	bl	hal_io32_read
	mov	r1, #1
	bic	r1, r0, r1, asl r5
	mov	r0, #1442840576
	add	r0, r0, #164
	bl	hal_io32_write
	mov	r0, #0
	b	.L29
.L35:
	.align	2
.L34:
	.word	osmach
	.size	hal_enable_intline, .-hal_enable_intline
	.align	2
	.global	hal_clear_srcpnd
	.type	hal_clear_srcpnd, %function
hal_clear_srcpnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L44
	ldr	r2, [r3, #48]
	cmp	r0, r2
	stmfd	sp!, {r4, lr}
	bcs	.L37
	ldr	r3, [r3, #44]
	add	r0, r0, r0, asl #2
	adds	r0, r3, r0, asl #3
	beq	.L37
	ldrb	r1, [r0, #16]	@ zero_extendqisi2
	cmp	r1, #1
	ldr	r3, [r0, #24]
	beq	.L42
	cmp	r1, #2
	bne	.L40
	mov	r0, #1241513984
	mov	r1, #1
	add	r0, r0, #24
	mov	r1, r1, asl r3
	bl	hal_io32_write
	mov	r0, #0
.L39:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L40:
	cmp	r1, #3
	beq	.L43
.L37:
	mvn	r0, #0
	b	.L39
.L42:
	mov	r0, #1241513984
	mov	r1, r1, asl r3
	bl	hal_io32_write
	mov	r0, #0
	b	.L39
.L43:
	mov	r0, #1442840576
	mov	r1, #1
	add	r0, r0, #168
	mov	r1, r1, asl r3
	bl	hal_io32_write
	mov	r0, #0
	b	.L39
.L45:
	.align	2
.L44:
	.word	osmach
	.size	hal_clear_srcpnd, .-hal_clear_srcpnd
	.align	2
	.global	hal_clear_intpnd
	.type	hal_clear_intpnd, %function
hal_clear_intpnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	mov	r1, r1, asl r0
	mov	r0, #1241513984
	stmfd	sp!, {r4, lr}
	add	r0, r0, #16
	bl	hal_io32_write
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	hal_clear_intpnd, .-hal_clear_intpnd
	.align	2
	.global	hal_add_ihandle
	.type	hal_add_ihandle, %function
hal_add_ihandle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	cmp	r0, #0
	cmpne	r1, #0
	mov	r5, r0
	sub	sp, sp, #8
	mov	r4, r1
	moveq	r0, #0
	beq	.L50
	add	r6, sp, #4
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r1, [r5, #12]
	ldr	r3, [r5, #8]
	add	r1, r1, #1
	add	r2, r5, #4
	str	r3, [r4, #4]
	str	r1, [r5, #12]
	str	r4, [r3, #0]
	mov	r0, r5
	str	r4, [r5, #8]
	str	r2, [r4, #0]
	mov	r1, r6
	bl	hal_spinunlock_restflg_sti
	mov	r0, #1
.L50:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	hal_add_ihandle, .-hal_add_ihandle
	.align	2
	.global	intfltdsc_t_init
	.type	intfltdsc_t_init, %function
intfltdsc_t_init:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r7, r3
	bl	hal_spinlock_init
	mov	r3, #0
	str	r3, [r4, #36]
	ldr	r1, [sp, #24]
	add	r2, r4, #4
	str	r2, [r4, #8]
	str	r5, [r4, #16]
	str	r6, [r4, #20]
	str	r7, [r4, #24]
	str	r1, [r4, #28]
	str	r2, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	intfltdsc_t_init, .-intfltdsc_t_init
	.align	2
	.global	init_intfltdsc
	.type	init_intfltdsc, %function
init_intfltdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #71
	sub	sp, sp, #8
	ldr	r6, [r0, #44]
	bhi	.L63
.L55:
	mov	r5, r6
	mov	r4, #0
.L56:
	str	r4, [sp, #0]
	mov	r0, r5
	mov	r3, r4
	mov	r1, #1
	add	r4, r4, #1
	mov	r2, #0
	bl	intfltdsc_t_init
	cmp	r4, #32
	add	r5, r5, #40
	bne	.L56
	add	r5, r6, #1280
.L57:
	str	r4, [sp, #0]
	mov	r0, r5
	sub	r3, r4, #32
	mov	r1, #2
	add	r4, r4, #1
	mov	r2, #0
	bl	intfltdsc_t_init
	cmp	r4, #47
	add	r5, r5, #40
	bne	.L57
	add	r5, r6, #1872
	add	r5, r5, #8
.L58:
	str	r4, [sp, #0]
	mov	r0, r5
	sub	r3, r4, #47
	mov	r1, #3
	add	r4, r4, #1
	mov	r2, #0
	bl	intfltdsc_t_init
	cmp	r4, #71
	add	r5, r5, #40
	bne	.L58
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L63:
	ldr	r0, .L64
	bl	hal_sysdie
	b	.L55
.L65:
	.align	2
.L64:
	.word	.LC0
	.size	init_intfltdsc, .-init_intfltdsc
	.align	2
	.global	init_halintupt
	.type	init_halintupt, %function
init_halintupt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L68
	b	init_intfltdsc
.L69:
	.align	2
.L68:
	.word	osmach
	.size	init_halintupt, .-init_halintupt
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"init intflt err\000"
	.section	.note.GNU-stack,"",%progbits
