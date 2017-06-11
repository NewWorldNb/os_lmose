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
	.file	"krltime.c"
	.text
	.align	2
	.global	krlsve_time
	.type	krlsve_time, %function
krlsve_time:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r5, r0, #0
	sub	sp, sp, #8
	mvneq	r0, #0
	beq	.L3
	ldr	r4, .L6
	add	r6, sp, #4
	mov	r0, r4
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #4]
	str	r3, [r5, #0]
	ldr	r3, [r4, #8]
	str	r3, [r5, #4]
	ldr	r3, [r4, #12]
	str	r3, [r5, #8]
	ldr	r3, [r4, #16]
	str	r3, [r5, #12]
	ldr	r3, [r4, #20]
	str	r3, [r5, #16]
	ldr	r3, [r4, #24]
	str	r3, [r5, #20]
	ldr	r3, [r4, #28]
	mov	r0, r4
	str	r3, [r5, #24]
	mov	r1, r6
	bl	hal_spinunlock_restflg_sti
	mov	r0, #0
.L3:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	osktime
	.size	krlsve_time, .-krlsve_time
	.align	2
	.global	krlsvetabl_time
	.type	krlsvetabl_time, %function
krlsvetabl_time:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #14
	beq	.L9
	mvn	r0, #0
	bx	lr
.L9:
	ldr	r0, [r1, #8]
	b	krlsve_time
	.size	krlsvetabl_time, .-krlsvetabl_time
	.align	2
	.global	krlupdate_times
	.type	krlupdate_times, %function
krlupdate_times:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	r4, .L14
	sub	sp, sp, #12
	add	r5, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r0, r4
	mov	r1, r5
	mov	sl, r3
	mov	r8, r2
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [sp, #40]
	str	r3, [r4, #20]
	ldr	r3, [sp, #44]
	str	r3, [r4, #24]
	ldr	r3, [sp, #48]
	mov	r0, r4
	mov	r1, r5
	str	r7, [r4, #4]
	str	r6, [r4, #8]
	str	r8, [r4, #12]
	str	sl, [r4, #16]
	str	r3, [r4, #28]
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	osktime
	.size	krlupdate_times, .-krlupdate_times
	.align	2
	.global	ktime_t_init
	.type	ktime_t_init, %function
ktime_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	mov	r3, #0
	str	r3, [r4, #32]
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	ktime_t_init, .-ktime_t_init
	.align	2
	.global	init_ktime
	.type	init_ktime, %function
init_ktime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L20
	b	ktime_t_init
.L21:
	.align	2
.L20:
	.word	osktime
	.size	init_ktime, .-init_ktime
	.section	.note.GNU-stack,"",%progbits
