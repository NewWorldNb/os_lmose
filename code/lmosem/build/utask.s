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
	.file	"utask.c"
	.text
	.align	2
	.global	task0_main
	.type	task0_main, %function
task0_main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r3, #13
	sub	sp, sp, #52
	str	r3, [sp, #20]
	mov	r3, #10
	str	r3, [sp, #24]
	mov	r3, #2
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	add	r3, r3, #8
	mov	r4, #0
	str	r3, [sp, #36]
	add	r3, r3, #25
	str	r3, [sp, #40]
	str	r4, [sp, #44]
	add	r5, sp, #20
.L2:
	add	r4, r4, #1
	mov	r1, r4
	ldr	r0, .L5
	bl	printf
	mov	r0, r5
	bl	gettime
	ldr	ip, [sp, #36]
	str	ip, [sp, #0]
	ldr	ip, [sp, #40]
	str	ip, [sp, #4]
	ldr	ip, [sp, #44]
	add	r1, sp, #20
	ldmia	r1, {r1, r2}	@ phole ldm
	ldr	r3, [sp, #32]
	ldr	r0, .L5+4
	str	ip, [sp, #8]
	bl	printf
	b	.L2
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	.LC1
	.size	task0_main, .-task0_main
	.align	2
	.global	task1_main
	.type	task1_main, %function
task1_main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #52
	mov	r4, #0
	add	r5, sp, #20
.L8:
	add	r4, r4, #1
	mov	r1, r4
	ldr	r0, .L10
	bl	printf
	mov	r0, r5
	bl	time
	ldr	ip, [sp, #36]
	str	ip, [sp, #0]
	ldr	ip, [sp, #40]
	str	ip, [sp, #4]
	ldr	ip, [sp, #44]
	add	r1, sp, #20
	ldmia	r1, {r1, r2}	@ phole ldm
	ldr	r3, [sp, #32]
	ldr	r0, .L10+4
	str	ip, [sp, #8]
	bl	printf
	b	.L8
.L11:
	.align	2
.L10:
	.word	.LC2
	.word	.LC1
	.size	task1_main, .-task1_main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"task2 run %x \012\015\000"
.LC1:
	.ascii	"year:%d mon:%d date:%d hour:%d min:%d sec:%d\012\015"
	.ascii	"\000"
	.space	1
.LC2:
	.ascii	"task1 run %x \012\015\000"
	.section	.note.GNU-stack,"",%progbits
