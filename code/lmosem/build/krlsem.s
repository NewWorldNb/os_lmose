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
	.file	"krlsem.c"
	.text
	.align	2
	.global	krlsem_set_sem
	.type	krlsem_set_sem, %function
krlsem_set_sem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r4, sp, #4
	mov	r6, r0
	mov	r5, r1
	mov	r7, r2
	mov	r1, r4
	bl	hal_spinlock_saveflg_cli
	stmib	r6, {r5, r7}	@ phole stm
	mov	r0, r6
	mov	r1, r4
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
	.size	krlsem_set_sem, .-krlsem_set_sem
	.align	2
	.global	krlsem_up
	.type	krlsem_up, %function
krlsem_up:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	add	r5, sp, #4
	mov	r4, r0
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #8]
	ble	.L7
.L4:
	add	r0, r4, #12
	bl	krlwlst_allup
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	bl	krlsched_set_schedflgs
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L7:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	ldr	r0, .L8
	bl	hal_sysdie
	b	.L4
.L9:
	.align	2
.L8:
	.word	.LC0
	.size	krlsem_up, .-krlsem_up
	.align	2
	.global	krlsem_down
	.type	krlsem_down, %function
krlsem_down:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.L11:
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r6, r0, #12
	add	r5, sp, #4
	b	.L13
.L15:
	mov	r0, r6
	bl	krlwlst_wait
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	bl	krlschedul
.L13:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #8]
	cmp	r3, #0
	ble	.L15
	sub	r3, r3, #1
	str	r3, [r4, #8]
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	krlsem_down, .-krlsem_down
	.align	2
	.global	krlsem_t_init
	.type	krlsem_t_init, %function
krlsem_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	mov	r3, #0
	str	r3, [r4, #8]
	str	r3, [r4, #4]
	add	r0, r4, #12
	bl	kwlst_t_init
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlsem_t_init, .-krlsem_t_init
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"sem up err\000"
	.section	.note.GNU-stack,"",%progbits
