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
	.file	"libmm.c"
	.text
	.align	2
	.global	mfreeblk
	.type	mfreeblk, %function
mfreeblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_mfreeblk
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	mfreeblk, .-mfreeblk
	.align	2
	.global	mallocblk
	.type	mallocblk, %function
mallocblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_mallocblk
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	mallocblk, .-mallocblk
	.section	.note.GNU-stack,"",%progbits
