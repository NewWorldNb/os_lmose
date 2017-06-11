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
	.file	"krlthread.c"
	.text
	.align	2
	.global	micrstk_t_init
	.type	micrstk_t_init, %function
micrstk_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #12]
	str	r3, [r0, #0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	bx	lr
	.size	micrstk_t_init, .-micrstk_t_init
	.align	2
	.global	context_t_init
	.type	context_t_init, %function
context_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #16]
	str	r3, [r0, #0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
	.size	context_t_init, .-context_t_init
	.align	2
	.global	krlthreadkrlsatck_init
	.type	krlthreadkrlsatck_init, %function
krlthreadkrlsatck_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	r4, [r0, #44]
	ldr	ip, [r0, #52]
	bic	r4, r4, #15
	sub	r5, r4, #60
	mov	r6, #0
	bic	ip, ip, #15
	str	r6, [r4, #-60]
	str	r6, [r5, #48]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	str	r6, [r5, #12]
	str	r6, [r5, #16]
	str	r6, [r5, #20]
	str	r6, [r5, #24]
	str	r6, [r5, #28]
	str	r6, [r5, #32]
	str	r6, [r5, #36]
	str	r6, [r5, #40]
	str	r6, [r5, #44]
	str	ip, [r5, #52]
	str	r1, [r5, #56]
	str	r4, [r0, #44]
	str	r1, [r0, #92]
	str	ip, [r0, #76]
	str	r5, [r0, #80]
	str	r3, [r0, #84]
	str	r2, [r0, #88]
	str	ip, [r0, #52]
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.size	krlthreadkrlsatck_init, .-krlthreadkrlsatck_init
	.align	2
	.global	krlthd_retn_objnode
	.type	krlthd_retn_objnode, %function
krlthd_retn_objnode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	cmp	r1, #7
	mov	r4, r1
	sub	sp, sp, #8
	mov	r5, r0
	movhi	r4, #0
	bhi	.L9
.L10:
	add	r6, sp, #4
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	add	r4, r4, #24
	mov	r0, r5
	mov	r1, r6
	ldr	r4, [r5, r4, asl #2]
	bl	hal_spinunlock_restflg_sti
.L9:
	mov	r0, r4
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krlthd_retn_objnode, .-krlthd_retn_objnode
	.align	2
	.global	krlthd_del_objnode
	.type	krlthd_del_objnode, %function
krlthd_del_objnode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	cmp	r1, #7
	mov	r4, r1
	sub	sp, sp, #8
	mov	r5, r0
	mvnhi	r4, #0
	bhi	.L15
.L17:
	add	r6, sp, #4
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	add	r3, r4, #24
	ldr	r2, [r5, r3, asl #2]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r5, r3, asl #2]
	mov	r0, r5
	mov	r1, r6
	mvneq	r4, #0
	bl	hal_spinunlock_restflg_sti
.L15:
	mov	r0, r4
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krlthd_del_objnode, .-krlthd_del_objnode
	.align	2
	.global	krlthd_add_objnode
	.type	krlthd_add_objnode, %function
krlthd_add_objnode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r5, sp, #4
	mov	r4, r0
	mov	r7, r1
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	mov	r6, #0
	mov	r3, r4
.L22:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	beq	.L26
	add	r6, r6, #1
	cmp	r6, #8
	add	r3, r3, #4
	bne	.L22
	mvn	r6, #0
.L23:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	mov	r0, r6
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L26:
.L21:
	add	r3, r6, #24
	str	r7, [r4, r3, asl #2]
	b	.L23
	.size	krlthd_add_objnode, .-krlthd_add_objnode
	.align	2
	.global	krlthd_retn_nullhand
	.type	krlthd_retn_nullhand, %function
krlthd_retn_nullhand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r4, sp, #4
	mov	r5, r0
	mov	r1, r4
	bl	hal_spinlock_saveflg_cli
	mov	r6, #0
	mov	r3, r5
.L30:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	beq	.L29
	add	r6, r6, #1
	cmp	r6, #8
	add	r3, r3, #4
	bne	.L30
	mvn	r6, #0
.L29:
	mov	r0, r5
	mov	r1, r4
	bl	hal_spinunlock_restflg_sti
	mov	r0, r6
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krlthd_retn_nullhand, .-krlthd_retn_nullhand
	.align	2
	.global	krlthd_inc_tick
	.type	krlthd_inc_tick, %function
krlthd_inc_tick:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	add	r5, sp, #4
	mov	r4, r0
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #28]
	add	r3, r3, #1
	cmp	r3, #20
	str	r3, [r4, #28]
	movhi	r3, #0
	strhi	r3, [r4, #28]
	blhi	krlsched_set_schedflgs
.L34:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
	.size	krlthd_inc_tick, .-krlthd_inc_tick
	.align	2
	.global	thread_t_init
	.type	thread_t_init, %function
thread_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, #0
	bl	hal_spinlock_init
	mov	r6, #5
	add	r3, r4, #4
	str	r3, [r4, #8]
	str	r3, [r4, #4]
	str	r5, [r4, #12]
	str	r6, [r4, #16]
	bl	hal_retn_cpuid
	str	r0, [r4, #20]
	mov	r0, r4
	bl	krlretn_thread_id
	str	r6, [r4, #32]
	str	r0, [r4, #24]
	str	r5, [r4, #28]
	str	r5, [r4, #36]
	str	r5, [r4, #40]
	str	r5, [r4, #44]
	str	r5, [r4, #48]
	str	r5, [r4, #52]
	str	r5, [r4, #56]
	str	r5, [r4, #60]
	str	r5, [r4, #64]
	str	r5, [r4, #68]
	str	r5, [r4, #72]
	str	r5, [r4, #76]
	str	r5, [r4, #80]
	str	r5, [r4, #84]
	str	r5, [r4, #88]
	str	r5, [r4, #92]
	mov	r3, r5
	mov	r2, r5
.L37:
	add	r3, r3, #1
	cmp	r3, #8
	str	r2, [r4, #96]
	add	r4, r4, #4
	bne	.L37
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	thread_t_init, .-thread_t_init
	.align	2
	.global	krlnew_thread_dsc
	.type	krlnew_thread_dsc, %function
krlnew_thread_dsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #128
	bl	krlnew
	subs	r4, r0, #0
	blne	thread_t_init
.L41:
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlnew_thread_dsc, .-krlnew_thread_dsc
	.align	2
	.global	krlnew_thread_core
	.type	krlnew_thread_core, %function
krlnew_thread_core:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, [sp, #40]
	mov	r6, r0
	mov	r0, r5
	mov	r8, r2
	mov	fp, r3
	ldr	r7, [sp, #44]
	bl	krlnew
	subs	r9, r0, #0
	moveq	r4, r9
	bne	.L49
.L45:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L49:
	mov	r0, r7
	bl	krlnew
	subs	sl, r0, #0
	beq	.L50
	bl	krlnew_thread_dsc
	subs	r4, r0, #0
	beq	.L51
	sub	r7, r7, #1
	sub	r5, r5, #1
	add	r7, r7, sl
	add	r5, r5, r9
	str	r8, [r4, #32]
	str	fp, [r4, #36]
	str	r7, [r4, #44]
	str	sl, [r4, #48]
	str	r5, [r4, #52]
	str	r9, [r4, #56]
	mov	r1, r6
	mov	r2, #211
	mov	r3, #16
	bl	krlthreadkrlsatck_init
	mov	r0, r4
	bl	krlschdclass_add_thread
	b	.L45
.L50:
	mov	r0, r9
	mov	r1, r5
	bl	krldelete
	mov	r4, sl
	b	.L45
.L51:
	mov	r1, r5
	mov	r0, r9
	bl	krldelete
	mov	r0, sl
	mov	r1, r7
	bl	krldelete
	b	.L45
	.size	krlnew_thread_core, .-krlnew_thread_core
	.align	2
	.global	krlnew_thread
	.type	krlnew_thread, %function
krlnew_thread:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	movne	ip, r1
	orreq	ip, r1, #1
	stmfd	sp!, {r4, r5, r6}
	tst	ip, #1
	mov	r5, r2
	mov	r6, r3
	add	r4, sp, #12
	ldmia	r4, {r4, ip}	@ phole ldm
	beq	.L59
.L53:
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L59:
	cmp	r4, #32768
	cmpls	ip, #32768
	bhi	.L53
	cmp	r2, #0
	cmpne	r2, #5
	bne	.L53
	cmp	r3, #64
	bhi	.L53
	cmp	r4, #32768
	movne	r4, #32768
	moveq	r4, #0
	cmp	ip, #32768
	movne	ip, #32768
	moveq	ip, #0
	str	r4, [sp, #12]
	str	ip, [sp, #16]
	ldmfd	sp!, {r4, r5, r6}
	b	krlnew_thread_core
	.size	krlnew_thread, .-krlnew_thread
	.section	.note.GNU-stack,"",%progbits
