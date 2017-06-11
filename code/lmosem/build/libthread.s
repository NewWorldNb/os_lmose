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
	.file	"libthread.c"
	.text
	.align	2
	.global	set_threadstats
	.type	set_threadstats, %function
set_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_set_threadstats
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	set_threadstats, .-set_threadstats
	.align	2
	.global	retn_threadstats
	.type	retn_threadstats, %function
retn_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_retn_threadstats
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	retn_threadstats, .-retn_threadstats
	.align	2
	.global	pid
	.type	pid, %function
pid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_retn_threadhand
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	pid, .-pid
	.align	2
	.global	exit
	.type	exit, %function
exit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_exit_thread
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	exit, .-exit
	.align	2
	.global	exel
	.type	exel, %function
exel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_exel_thread
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	exel, .-exel
	.section	.note.GNU-stack,"",%progbits
