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
	.file	"task.c"
	.text
	.align	2
	.global	task1
	.type	task1, %function
task1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #0
	sub	sp, sp, #12
	mov	r1, ip
	ldr	r0, .L6
	mov	r2, #5
	mov	r3, ip
	str	ip, [sp, #0]
	str	ip, [sp, #4]
	bl	krlnew_thread
	cmp	r0, #0
	beq	.L5
.L3:
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L5:
	ldr	r0, .L6+4
	bl	hal_sysdie
	b	.L3
.L7:
	.align	2
.L6:
	.word	task1_main
	.word	.LC0
	.size	task1, .-task1
	.align	2
	.global	task0
	.type	task0, %function
task0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #0
	sub	sp, sp, #12
	mov	r1, ip
	ldr	r0, .L12
	mov	r2, #5
	mov	r3, ip
	str	ip, [sp, #0]
	str	ip, [sp, #4]
	bl	krlnew_thread
	cmp	r0, #0
	beq	.L11
.L10:
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L11:
	ldr	r0, .L12+4
	bl	hal_sysdie
	b	.L10
.L13:
	.align	2
.L12:
	.word	task0_main
	.word	.LC1
	.size	task0, .-task0
	.align	2
	.global	init_task
	.type	init_task, %function
init_task:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	task0
	ldmfd	sp!, {r4, lr}
	b	task1
	.size	init_task, .-init_task
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"task1 err\000"
	.space	2
.LC1:
	.ascii	"task0 err\000"
	.section	.note.GNU-stack,"",%progbits
