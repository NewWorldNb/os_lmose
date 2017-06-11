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
	.file	"krlinit.c"
	.text
	.align	2
	.global	init_krl
	.type	init_krl, %function
init_krl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	init_krlmm
	bl	init_krldevice
	bl	init_krldriver
	bl	hal_enable_irq
.L2:
	b	.L2
	.size	init_krl, .-init_krl
	.section	.note.GNU-stack,"",%progbits
