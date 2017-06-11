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
	.file	"halmach.c"
	.text
	.align	2
	.global	print_mach
	.type	print_mach, %function
print_mach:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, [r0, #12]
	mov	r4, r0
	ldr	r0, .L3
	bl	printfk
	ldr	r1, [r4, #16]
	ldr	r0, .L3+4
	bl	printfk
	ldr	r1, [r4, #20]
	ldr	r0, .L3+8
	bl	printfk
	ldr	r1, [r4, #24]
	ldr	r0, .L3+12
	bl	printfk
	ldr	r1, [r4, #44]
	ldr	r0, .L3+16
	bl	printfk
	ldr	r1, [r4, #48]
	ldr	r0, .L3+20
	bl	printfk
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	print_mach, .-print_mach
	.align	2
	.global	mach_t_init
	.type	mach_t_init, %function
mach_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	ldr	r2, .L7
	add	r3, r2, #4080
	add	r3, r3, #15
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #24]
	mov	r3, #29
	str	r3, [r4, #28]
	ldr	r3, .L7+4
	mov	r0, #71
	str	r3, [r4, #32]
	ldr	r3, .L7+8
	add	r1, r4, #4
	str	r0, [r4, #48]
	mov	r0, #805306368
	str	r1, [r4, #8]
	str	r0, [r4, #12]
	str	r3, [r4, #44]
	str	r1, [r4, #4]
	str	r2, [r4, #16]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	__end_kernel
	.word	machadrspce
	.word	machintflt
	.size	mach_t_init, .-mach_t_init
	.align	2
	.global	init_halmach
	.type	init_halmach, %function
init_halmach:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L11
	b	mach_t_init
.L12:
	.align	2
.L11:
	.word	osmach
	.size	init_halmach, .-init_halmach
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"mach.mh_kerinramstart:%x\012\015\000"
	.space	1
.LC1:
	.ascii	"mach.mh_kerinramend:%x\012\015\000"
	.space	3
.LC2:
	.ascii	"mach.mh_mmapdscadr:%x\012\015\000"
.LC3:
	.ascii	"mach.mh_mmapdscnr:%x\012\015\000"
	.space	1
.LC4:
	.ascii	"mach.mh_intfltdsc:%x\012\015\000"
	.space	1
.LC5:
	.ascii	"mach.mh_intfltnr:%x\012\015\000"
	.section	.note.GNU-stack,"",%progbits
