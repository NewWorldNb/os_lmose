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
	.file	"krlwaitlist.c"
	.text
	.align	2
	.global	krlwlst_del_thread
	.type	krlwlst_del_thread, %function
krlwlst_del_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r5, sp, #4
	mov	r4, r0
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #12]
	add	r2, r4, #8
	cmp	r3, r2
	bne	.L6
.L2:
	mov	r6, #0
.L3:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	mov	r0, r6
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L6:
	subs	r6, r3, #4
	beq	.L3
	ldr	r2, [r4, #4]
	cmp	r2, #0
	beq	.L2
	ldmib	r6, {r0, r1}	@ phole ldm
	sub	r2, r2, #1
	str	r1, [r0, #4]
	str	r0, [r1, #0]
	str	r2, [r4, #4]
	str	r3, [r6, #8]
	str	r3, [r6, #4]
	b	.L3
	.size	krlwlst_del_thread, .-krlwlst_del_thread
	.align	2
	.global	krlwlst_add_thread
	.type	krlwlst_add_thread, %function
krlwlst_add_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r6, sp, #4
	mov	r4, r0
	mov	r5, r1
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #12]
	add	r2, r5, #4
	add	r1, r4, #8
	add	r0, r0, #1
	str	r3, [r5, #8]
	str	r0, [r4, #4]
	str	r2, [r3, #0]
	str	r2, [r4, #12]
	str	r1, [r5, #4]
	mov	r0, r4
	mov	r1, r6
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krlwlst_add_thread, .-krlwlst_add_thread
	.align	2
	.global	krlwlst_allup
	.type	krlwlst_allup, %function
krlwlst_allup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	add	r5, r0, #8
	b	.L11
.L10:
	mov	r0, r4
	bl	krlsched_up
.L11:
	ldr	r3, [r4, #12]
	cmp	r5, r3
	bne	.L10
	ldr	r3, [r4, #8]
	cmp	r5, r3
	bne	.L10
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krlwlst_allup, .-krlwlst_allup
	.align	2
	.global	krlwlst_up
	.type	krlwlst_up, %function
krlwlst_up:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #12]
	add	r3, r0, #8
	cmp	r3, r2
	stmfd	sp!, {r4, lr}
	beq	.L18
.L15:
	bl	krlsched_up
.L17:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L18:
	ldr	r2, [r0, #8]
	cmp	r3, r2
	bne	.L15
	b	.L17
	.size	krlwlst_up, .-krlwlst_up
	.align	2
	.global	krlwlst_wait
	.type	krlwlst_wait, %function
krlwlst_wait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krlsched_wait
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlwlst_wait, .-krlwlst_wait
	.align	2
	.global	kwlst_t_init
	.type	kwlst_t_init, %function
kwlst_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	add	r3, r4, #8
	mov	r2, #0
	str	r3, [r4, #12]
	stmib	r4, {r2, r3}	@ phole stm
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	kwlst_t_init, .-kwlst_t_init
	.section	.note.GNU-stack,"",%progbits
