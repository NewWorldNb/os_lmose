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
	.file	"liblseek.c"
	.text
	.align	2
	.global	lseek
	.type	lseek, %function
lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_lseek
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	lseek, .-lseek
	.section	.note.GNU-stack,"",%progbits
