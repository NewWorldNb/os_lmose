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
	.file	"halinit.c"
	.section	.head.text,"ax",%progbits
	.align	2
	.global	init_hal
	.type	init_hal, %function
init_hal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	init_paltform
	bl	init_haluart
	bl	init_halmach
	bl	init_halmm
	bl	init_halintupt
	ldr	r0, .L5
	bl	print_mach
	ldr	r0, .L5
	bl	print_mmapdsc
.L2:
	b	.L2
.L6:
	.align	2
.L5:
	.word	osmach
	.size	init_hal, .-init_hal
	.section	.note.GNU-stack,"",%progbits
