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
	.file	"krlcpuidle.c"
	.text
	.align	2
	.global	krlcpuidle_main
	.type	krlcpuidle_main, %function
krlcpuidle_main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.L2:
	ldr	r0, .L5
	bl	printfk
	bl	krlschedul
	b	.L2
.L6:
	.align	2
.L5:
	.word	.LC0
	.size	krlcpuidle_main, .-krlcpuidle_main
	.align	2
	.global	new_cpuidle_thread
	.type	new_cpuidle_thread, %function
new_cpuidle_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r0, #32768
	bl	krlnew
	subs	r6, r0, #0
	moveq	r4, r6
	bne	.L13
.L9:
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L13:
	mov	r0, #32768
	bl	krlnew
	subs	r5, r0, #0
	beq	.L14
	bl	krlnew_thread_dsc
	subs	r4, r0, #0
	beq	.L15
	mov	r1, #5
	add	r2, r5, #32512
	add	r3, r6, #32512
	add	r2, r2, #255
	add	r3, r3, #255
	str	r1, [r4, #32]
	mov	r1, #64
	str	r1, [r4, #36]
	str	r2, [r4, #44]
	str	r3, [r4, #52]
	ldr	r1, .L16
	mov	r3, #19
	mov	r2, #211
	str	r5, [r4, #48]
	str	r6, [r4, #56]
	bl	krlthreadkrlsatck_init
	bl	hal_retn_cpuid
	ldr	r3, .L16+4
	add	r0, r0, r0, asl #5
	add	r0, r3, r0, asl #5
	str	r4, [r0, #28]
	str	r4, [r0, #24]
	b	.L9
.L14:
	mov	r0, r6
	mov	r1, #32768
	bl	krldelete
	mov	r4, r5
	b	.L9
.L15:
	mov	r0, r6
	mov	r1, #32768
	bl	krldelete
	mov	r0, r5
	mov	r1, #32768
	bl	krldelete
	b	.L9
.L17:
	.align	2
.L16:
	.word	krlcpuidle_main
	.word	osschedcls+16
	.size	new_cpuidle_thread, .-new_cpuidle_thread
	.align	2
	.global	new_cpuidle
	.type	new_cpuidle, %function
new_cpuidle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	bl	new_cpuidle_thread
	subs	r1, r0, #0
	beq	.L21
.L19:
	ldr	r0, .L22
	bl	printfk
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L21:
	ldr	r0, .L22+4
	str	r1, [sp, #4]
	bl	hal_sysdie
	ldr	r1, [sp, #4]
	b	.L19
.L23:
	.align	2
.L22:
	.word	.LC2
	.word	.LC1
	.size	new_cpuidle, .-new_cpuidle
	.align	2
	.global	krlcpuidle_start
	.type	krlcpuidle_start, %function
krlcpuidle_start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	hal_retn_cpuid
	ldr	r3, .L26
	add	r0, r0, r0, asl #5
	add	r0, r3, r0, asl #5
	ldr	r0, [r0, #24]
	mov	r3, #0
	str	r3, [r0, #16]
	bl	retnfrom_first_sched
	ldmfd	sp!, {r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	osschedcls+16
	.size	krlcpuidle_start, .-krlcpuidle_start
	.align	2
	.global	init_krlcpuidle
	.type	init_krlcpuidle, %function
init_krlcpuidle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	new_cpuidle
	ldmfd	sp!, {r4, lr}
	b	krlcpuidle_start
	.size	init_krlcpuidle, .-init_krlcpuidle
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"cpuidle is run!!\012\015\000"
	.space	1
.LC1:
	.ascii	"newcpuilde err\000"
	.space	1
.LC2:
	.ascii	"CPUIDLETASK: %x\012\015\000"
	.section	.note.GNU-stack,"",%progbits
