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
	.file	"krldevice.c"
	.text
	.align	2
	.global	devtlst_t_init
	.type	devtlst_t_init, %function
devtlst_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #8
	mov	r2, #0
	str	r3, [r0, #12]
	stmia	r0, {r1, r2, r3}	@ phole stm
	bx	lr
	.size	devtlst_t_init, .-devtlst_t_init
	.align	2
	.global	devid_t_init
	.type	devid_t_init, %function
devid_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmia	r0, {r1, r2, r3}	@ phole stm
	bx	lr
	.size	devid_t_init, .-devid_t_init
	.align	2
	.global	krlretn_driverid
	.type	krlretn_driverid, %function
krlretn_driverid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r0, [r0, #20]
	bx	lr
	.size	krlretn_driverid, .-krlretn_driverid
	.align	2
	.global	drv_defalt_func
	.type	drv_defalt_func, %function
drv_defalt_func:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	drv_defalt_func, .-drv_defalt_func
	.align	2
	.global	krlcmp_devid
	.type	krlcmp_devid, %function
krlcmp_devid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]
	ldr	r3, [r1, #0]
	cmp	r2, r3
	beq	.L14
.L10:
	mov	r0, #0
	bx	lr
.L14:
	ldr	r2, [r0, #4]
	ldr	r3, [r1, #4]
	cmp	r2, r3
	bne	.L10
	ldr	r0, [r0, #8]
	ldr	r3, [r1, #8]
	cmp	r0, r3
	movne	r0, #0
	moveq	r0, #1
	bx	lr
	.size	krlcmp_devid, .-krlcmp_devid
	.align	2
	.global	krldev_add_driver
	.type	krldev_add_driver, %function
krldev_add_driver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	cmpne	r1, #0
	stmfd	sp!, {r4, r5, r6, r7}
	beq	.L16
	ldr	r7, [r1, #120]
	add	r5, r1, #116
	cmp	r7, r5
	moveq	r3, r7
	beq	.L18
	ldr	r4, [r0, #68]
	mov	r3, r7
.L20:
	sub	r2, r3, #8
	ldr	ip, [r2, #68]
	cmp	ip, r4
	beq	.L24
.L19:
	ldr	r3, [r3, #4]
	cmp	r3, r5
	bne	.L20
.L18:
	add	r2, r0, #8
	str	r7, [r0, #12]
	str	r1, [r0, #132]
	str	r2, [r7, #0]
	str	r2, [r1, #120]
	str	r3, [r0, #8]
	mov	r0, #0
	b	.L21
.L24:
	ldr	r6, [r0, #72]
	ldr	ip, [r2, #72]
	cmp	r6, ip
	bne	.L19
	ldr	r2, [r2, #76]
	ldr	ip, [r0, #76]
	cmp	ip, r2
	bne	.L19
.L16:
	mvn	r0, #0
.L21:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.size	krldev_add_driver, .-krldev_add_driver
	.align	2
	.global	krldev_wait_intupt
	.type	krldev_wait_intupt, %function
krldev_wait_intupt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	krldev_wait_intupt, .-krldev_wait_intupt
	.align	2
	.global	krldev_up_intupt
	.type	krldev_up_intupt, %function
krldev_up_intupt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	krldev_up_intupt, .-krldev_up_intupt
	.align	2
	.global	krldev_retn_rqueparm
	.type	krldev_retn_rqueparm, %function
krldev_retn_rqueparm:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	cmp	r0, #0
	ldr	r5, [sp, #12]
	add	r4, sp, #16
	ldmia	r4, {r4, ip}	@ phole ldm
	mvneq	r0, #0
	beq	.L31
	cmp	r1, #0
	ldrne	r6, [r0, #80]
	strne	r6, [r1, #0]
	cmp	r2, #0
	ldrne	r1, [r0, #68]
	strne	r1, [r2, #0]
	cmp	r3, #0
	ldrne	r2, [r0, #72]
	strne	r2, [r3, #0]
	cmp	r5, #0
	ldrne	r3, [r0, #76]
	strne	r3, [r5, #0]
	cmp	r4, #0
	ldrne	r3, [r0, #84]
	strne	r3, [r4, #0]
	cmp	ip, #0
	ldrne	r3, [r0, #88]
	strne	r3, [ip, #0]
	moveq	r0, ip
	movne	r0, #0
.L31:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.size	krldev_retn_rqueparm, .-krldev_retn_rqueparm
	.align	2
	.global	krldev_call_driver
	.type	krldev_call_driver, %function
krldev_call_driver:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	rsbs	r3, r0, #1
	movcc	r3, #0
	cmp	r1, #11
	orrhi	r3, r3, #1
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	beq	.L43
.L40:
	mvn	r0, #0
.L41:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L43:
	ldr	r3, [r0, #132]
	cmp	r3, #0
	beq	.L40
	add	r3, r3, r1, asl #2
	ldr	r1, [sp, #12]
	ldr	ip, [r3, #68]
	mov	lr, pc
	bx	ip
	b	.L41
	.size	krldev_call_driver, .-krldev_call_driver
	.align	2
	.global	krldev_io
	.type	krldev_io, %function
krldev_io:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #52]
	cmp	r3, #1
	mov	ip, r0
	sub	sp, sp, #12
	ldr	r0, [r0, #56]
	beq	.L48
.L45:
	mvn	r0, #0
.L46:
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L48:
	cmp	r0, #0
	beq	.L45
	ldr	r1, [ip, #48]
	cmp	r1, #11
	bhi	.L45
	mov	lr, #0
	mov	r2, lr
	mov	r3, lr
	str	ip, [sp, #4]
	str	lr, [sp, #0]
	bl	krldev_call_driver
	b	.L46
	.size	krldev_io, .-krldev_io
	.align	2
	.global	krlnew_devhandle
	.type	krlnew_devhandle, %function
krlnew_devhandle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	mov	r4, r0
	bl	krladd_irqhandle
	subs	r5, r0, #0
	mvneq	r0, #0
	beq	.L51
	add	r7, r4, #24
	add	r6, sp, #4
	mov	r0, r7
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r0, [r4, #80]
	ldr	r3, [r4, #88]
	add	r2, r5, #8
	add	r0, r0, #1
	add	r1, r4, #84
	str	r0, [r4, #80]
	str	r3, [r5, #12]
	str	r2, [r3, #0]
	mov	r0, r7
	str	r1, [r5, #8]
	str	r2, [r4, #88]
	mov	r1, r6
	bl	hal_spinunlock_restflg_sti
	mov	r0, #0
.L51:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
	.size	krlnew_devhandle, .-krlnew_devhandle
	.align	2
	.global	krlonidfl_retn_device
	.type	krlonidfl_retn_device, %function
krlonidfl_retn_device:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	rsbs	r3, r0, #1
	movcc	r3, #0
	cmp	r1, #1
	orrne	r3, r3, #1
	cmp	r3, #0
	sub	sp, sp, #8
	mov	r5, r0
	beq	.L62
.L54:
	mov	r4, #0
.L59:
	mov	r0, r4
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L62:
	ldr	r4, [r0, #0]
	cmp	r4, #32
	bhi	.L54
	add	r6, sp, #4
	ldr	r0, .L65
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r3, .L65+4
	add	r2, r3, r4, asl #4
	ldr	r2, [r2, #36]
	cmp	r2, r4
	beq	.L63
.L55:
	mov	r4, #0
.L57:
	mov	r1, r6
	ldr	r0, .L65
	bl	hal_spinunlock_restflg_sti
	b	.L59
.L63:
	mov	r2, r2, asl #4
	add	r1, r3, r2
	ldr	r3, [r1, #48]
	add	r0, r1, #44
	cmp	r3, r0
	beq	.L55
	ldr	r1, [r5, #0]
.L58:
	sub	r4, r3, #16
	ldr	r2, [r4, #68]
	cmp	r2, r1
	beq	.L64
.L56:
	ldr	r3, [r3, #4]
	cmp	r3, r0
	bne	.L58
	b	.L55
.L64:
	ldr	ip, [r5, #4]
	ldr	r2, [r4, #72]
	cmp	ip, r2
	bne	.L56
	ldr	ip, [r5, #8]
	ldr	r2, [r4, #76]
	cmp	ip, r2
	bne	.L56
	b	.L57
.L66:
	.align	2
.L65:
	.word	osdevtable+8
	.word	osdevtable
	.size	krlonidfl_retn_device, .-krlonidfl_retn_device
	.align	2
	.global	krldev_retn_request
	.type	krldev_retn_request, %function
krldev_retn_request:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	cmp	r1, #11
	movls	r3, #0
	movhi	r3, #1
	cmp	r2, #0
	orreq	r3, r3, #1
	cmp	r3, #0
	mov	r4, r1
	sub	sp, sp, #8
	mov	r5, r2
	mov	r6, r0
	mvnne	r4, #0
	beq	.L78
.L69:
	mov	r0, r4
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L78:
	add	r8, r0, #24
	add	r7, sp, #4
	mov	r0, r8
	mov	r1, r7
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r6, #96]
	add	r6, r6, #92
	cmp	r3, r6
	beq	.L70
	sub	r2, r3, #4
	ldr	r1, [r2, #48]
	cmp	r1, r4
	bne	.L76
	b	.L71
.L74:
	ldr	r1, [r2, #48]
	cmp	r1, r4
	beq	.L71
.L76:
	ldr	r3, [r3, #4]
	cmp	r3, r6
	sub	r2, r3, #4
	bne	.L74
.L70:
	mov	r3, #0
	str	r3, [r5, #0]
	mvn	r4, #0
.L73:
	mov	r0, r8
	mov	r1, r7
	bl	hal_spinunlock_restflg_sti
	b	.L69
.L71:
	str	r2, [r5, #0]
	mov	r4, #0
	b	.L73
	.size	krldev_retn_request, .-krldev_retn_request
	.align	2
	.global	krldev_add_request
	.type	krldev_add_request, %function
krldev_add_request:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r7, r0, #24
	add	r6, sp, #4
	mov	r4, r0
	mov	r5, r1
	mov	r0, r7
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r0, [r4, #100]
	add	r1, r5, #4
	mov	r3, r4
	ldr	r2, [r4, #92]
	str	r1, [r3, #92]!
	add	r0, r0, #1
	str	r0, [r4, #100]
	str	r3, [r5, #8]
	mov	r0, r7
	str	r1, [r2, #4]
	str	r2, [r5, #4]
	mov	r1, r6
	bl	hal_spinunlock_restflg_sti
	mov	r0, #0
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
	.size	krldev_add_request, .-krldev_add_request
	.align	2
	.global	krldev_dec_devcount
	.type	krldev_dec_devcount, %function
krldev_dec_devcount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #8
	mvneq	r0, #0
	beq	.L83
	add	r6, r4, #24
	add	r5, sp, #4
	mov	r0, r6
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #28]
	sub	r3, r3, #1
	mov	r0, r6
	str	r3, [r4, #28]
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	mov	r0, #0
.L83:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krldev_dec_devcount, .-krldev_dec_devcount
	.align	2
	.global	krldev_inc_devcount
	.type	krldev_inc_devcount, %function
krldev_inc_devcount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0, #28]
	cmn	r0, #1
	sub	sp, sp, #8
	beq	.L87
	add	r6, r4, #24
	add	r5, sp, #4
	mov	r0, r6
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #28]
	add	r3, r3, #1
	mov	r0, r6
	str	r3, [r4, #28]
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	mov	r0, #0
.L87:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krldev_inc_devcount, .-krldev_inc_devcount
	.align	2
	.global	krlnew_device
	.type	krlnew_device, %function
krlnew_device:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	r3, [r0, #132]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	ldr	r5, [r0, #68]
	bne	.L100
.L90:
	mvn	r4, #0
.L97:
	mov	r0, r4
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L100:
	cmp	r5, #32
	bhi	.L90
	add	r6, sp, #4
	ldr	r0, .L103
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r0, .L103+4
	add	r3, r0, r5, asl #4
	ldr	r7, [r3, #36]
	cmp	r7, r5
	beq	.L101
.L91:
	mvn	r4, #0
.L96:
	mov	r1, r6
	ldr	r0, .L103
	bl	hal_spinunlock_restflg_sti
	b	.L97
.L101:
	mov	sl, r7, asl #4
	add	r3, r0, sl
	ldr	r8, [r3, #48]
	add	lr, r3, #44
	cmp	r8, lr
	moveq	r3, r8
	beq	.L93
	ldr	ip, [r4, #68]
	mov	r3, r8
.L95:
	sub	r2, r3, #16
	ldr	r1, [r2, #68]
	cmp	r1, ip
	beq	.L102
.L94:
	ldr	r3, [r3, #4]
	cmp	r3, lr
	bne	.L95
.L93:
	add	r2, r7, #2
	add	r2, r0, r2, asl #4
	ldr	r1, [r2, #8]
	add	r1, r1, #1
	str	r1, [r2, #8]
	add	sl, r0, sl
	add	r1, r4, #16
	str	r8, [r4, #20]
	str	r1, [sl, #48]
	ldr	ip, [r0, #28]
	ldr	r2, [r0, #16]
	str	r1, [r8, #0]
	str	r3, [r4, #16]
	ldr	r3, .L103+8
	add	ip, ip, #1
	str	r2, [r4, #4]
	str	r4, [r2, #0]
	str	r4, [r0, #16]
	str	r3, [r4, #0]
	str	ip, [r0, #28]
	mov	r4, #0
	b	.L96
.L102:
	ldr	r5, [r4, #72]
	ldr	r1, [r2, #72]
	cmp	r5, r1
	bne	.L94
	ldr	r2, [r2, #76]
	ldr	r1, [r4, #76]
	cmp	r1, r2
	bne	.L94
	b	.L91
.L104:
	.align	2
.L103:
	.word	osdevtable+8
	.word	osdevtable
	.word	osdevtable+12
	.size	krlnew_device, .-krlnew_device
	.align	2
	.global	krldriver_add_system
	.type	krldriver_add_system, %function
krldriver_add_system:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L107
	sub	sp, sp, #8
	add	r6, sp, #4
	mov	r5, r0
	mov	r1, r6
	mov	r0, r4
	bl	hal_spinlock_saveflg_cli
	sub	r3, r4, #8
	ldr	ip, [r3, #32]
	ldr	r1, [r3, #24]
	add	r2, r5, #4
	add	r0, r4, #12
	add	ip, ip, #1
	str	r1, [r5, #8]
	str	r2, [r1, #0]
	str	ip, [r3, #32]
	str	r0, [r5, #4]
	mov	r1, r6
	mov	r0, r4
	str	r2, [r3, #24]
	bl	hal_spinunlock_restflg_sti
	mov	r0, #0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L108:
	.align	2
.L107:
	.word	osdevtable+8
	.size	krldriver_add_system, .-krldriver_add_system
	.align	2
	.global	krldev_wait_request
	.type	krldev_wait_request, %function
krldev_wait_request:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	cmpne	r1, #0
	stmfd	sp!, {r4, lr}
	mvneq	r0, #0
	movne	r4, #0
	moveq	r4, #1
	beq	.L111
	add	r0, r1, #12
	bl	krlsem_down
	mov	r0, r4
.L111:
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krldev_wait_request, .-krldev_wait_request
	.align	2
	.global	krldev_complete_request
	.type	krldev_complete_request, %function
krldev_complete_request:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	cmp	r0, #0
	cmpne	r1, #0
	mov	r5, r0
	sub	sp, sp, #12
	mov	r4, r1
	mvneq	r0, #0
	beq	.L115
	ldr	r3, [r5, #100]
	cmp	r3, #0
	beq	.L118
.L116:
	add	r7, r5, #24
	add	r6, sp, #4
	mov	r0, r7
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r0, [r5, #100]
	ldmib	r4, {r1, r2}	@ phole ldm
	add	r3, r4, #4
	sub	r0, r0, #1
	str	r2, [r1, #4]
	str	r1, [r2, #0]
	str	r0, [r5, #100]
	str	r3, [r4, #8]
	mov	r0, r7
	mov	r1, r6
	str	r3, [r4, #4]
	bl	hal_spinunlock_restflg_sti
	add	r0, r4, #12
	bl	krlsem_up
	mov	r0, #0
.L115:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L118:
	ldr	r0, .L119
	bl	hal_sysdie
	b	.L116
.L120:
	.align	2
.L119:
	.word	.LC0
	.size	krldev_complete_request, .-krldev_complete_request
	.align	2
	.global	del_device_dsc
	.type	del_device_dsc, %function
del_device_dsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r1, #156
	bl	krldelete
	cmp	r0, #0
	mvneq	r0, #0
	movne	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	del_device_dsc, .-del_device_dsc
	.align	2
	.global	del_driver_dsc
	.type	del_driver_dsc, %function
del_driver_dsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r1, #144
	bl	krldelete
	cmp	r0, #0
	mvneq	r0, #0
	movne	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	del_driver_dsc, .-del_driver_dsc
	.align	2
	.global	devtable_t_init
	.type	devtable_t_init, %function
devtable_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r0, [r4, #0]
	str	r0, [r4, #4]
	add	r0, r0, #8
	bl	hal_spinlock_init
	mov	r3, #0
	add	r1, r4, #20
	add	r0, r4, #12
	mov	r2, r3
	str	r1, [r4, #24]
	str	r1, [r4, #20]
	str	r0, [r4, #16]
	str	r0, [r4, #12]
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	mov	r0, r2
	mov	r3, r4
.L130:
	str	r2, [r3, #36]
	add	r1, r4, r2, asl #4
	add	r2, r2, #1
	add	r1, r1, #44
	cmp	r2, #33
	str	r1, [r3, #48]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	r3, r3, #16
	bne	.L130
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	devtable_t_init, .-devtable_t_init
	.align	2
	.global	init_krldevice
	.type	init_krldevice, %function
init_krldevice:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L135
	b	devtable_t_init
.L136:
	.align	2
.L135:
	.word	osdevtable
	.size	init_krldevice, .-init_krldevice
	.align	2
	.global	driver_t_init
	.type	driver_t_init, %function
driver_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, #0
	bl	hal_spinlock_init
	add	r3, r4, #4
	str	r3, [r4, #8]
	str	r3, [r4, #4]
	str	r5, [r4, #12]
	str	r5, [r4, #16]
	str	r4, [r4, #20]
	str	r5, [r4, #24]
	add	r0, r4, #28
	bl	krlsem_t_init
	str	r5, [r4, #56]
	str	r5, [r4, #60]
	str	r5, [r4, #64]
	ldr	r2, .L141
	mov	r3, r4
.L138:
	add	r5, r5, #1
	cmp	r5, #12
	str	r2, [r3, #68]
	add	r3, r3, #4
	bne	.L138
	mov	r3, #0
	add	r2, r4, #116
	str	r3, [r4, #140]
	str	r2, [r4, #120]
	str	r2, [r4, #116]
	str	r3, [r4, #124]
	str	r3, [r4, #128]
	str	r3, [r4, #132]
	str	r3, [r4, #136]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	drv_defalt_func
	.size	driver_t_init, .-driver_t_init
	.align	2
	.global	new_driver_dsc
	.type	new_driver_dsc, %function
new_driver_dsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #144
	bl	krlnew
	subs	r4, r0, #0
	blne	driver_t_init
.L144:
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	new_driver_dsc, .-new_driver_dsc
	.align	2
	.global	krlrun_driverentry
	.type	krlrun_driverentry, %function
krlrun_driverentry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	bl	new_driver_dsc
	subs	r5, r0, #0
	bne	.L150
.L147:
	mvn	r0, #0
.L148:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L150:
	mov	r1, #0
	mov	r2, r1
	mov	lr, pc
	bx	r4
	cmn	r0, #1
	beq	.L147
	mov	r0, r5
	bl	krldriver_add_system
	cmn	r0, #1
	movne	r0, #0
	bne	.L148
	b	.L147
	.size	krlrun_driverentry, .-krlrun_driverentry
	.align	2
	.global	init_krldriver
	.type	init_krldriver, %function
init_krldriver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L157
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L154
	b	.L155
.L153:
	ldr	r0, [r4, #4]!
	cmp	r0, #0
	beq	.L155
.L154:
	bl	krlrun_driverentry
	cmn	r0, #1
	bne	.L153
	ldr	r0, .L157+4
	bl	hal_sysdie
	ldr	r0, [r4, #4]!
	cmp	r0, #0
	bne	.L154
.L155:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L158:
	.align	2
.L157:
	.word	osdrvetytabl
	.word	.LC1
	.size	init_krldriver, .-init_krldriver
	.align	2
	.global	device_t_init
	.type	device_t_init, %function
device_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #8
	add	r3, r0, #16
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, #0
	str	r2, [r0, #12]
	str	r3, [r0, #20]
	str	r2, [r0, #8]
	str	r3, [r0, #16]
	str	r0, [r4, #0]
	str	r0, [r4, #4]
	add	r0, r0, #24
	bl	hal_spinlock_init
	add	r0, r4, #32
	str	r5, [r4, #28]
	bl	krlsem_t_init
	add	r2, r4, #84
	add	r3, r4, #92
	str	r2, [r4, #88]
	str	r3, [r4, #96]
	str	r5, [r4, #60]
	str	r5, [r4, #64]
	str	r5, [r4, #68]
	str	r5, [r4, #72]
	str	r5, [r4, #76]
	str	r5, [r4, #80]
	str	r2, [r4, #84]
	str	r3, [r4, #92]
	str	r5, [r4, #100]
	add	r0, r4, #104
	bl	krlsem_t_init
	str	r5, [r4, #152]
	str	r5, [r4, #132]
	str	r5, [r4, #136]
	str	r5, [r4, #140]
	str	r5, [r4, #144]
	str	r5, [r4, #148]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	device_t_init, .-device_t_init
	.align	2
	.global	new_device_dsc
	.type	new_device_dsc, %function
new_device_dsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #156
	bl	krlnew
	subs	r4, r0, #0
	blne	device_t_init
.L162:
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	new_device_dsc, .-new_device_dsc
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"krldev_complete_request err devp->dev_rqlnr<1\000"
	.space	2
.LC1:
	.ascii	"init driver err\000"
	.section	.note.GNU-stack,"",%progbits
