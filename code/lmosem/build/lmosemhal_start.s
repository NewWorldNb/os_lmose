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
	.file	"lmosemhal_start.c"
	.section	.head.text,"ax",%progbits
	.align	2
	.global	lmosemhal_start
	.type	lmosemhal_start, %function
lmosemhal_start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	init_hal
	bl	init_krl
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	lmosemhal_start, .-lmosemhal_start
	.section	.note.GNU-stack,"",%progbits
