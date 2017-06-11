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
	.file	"krlsvethread.c"
	.text
	.align	2
	.global	krlsvetabl_exel_thread
	.type	krlsvetabl_exel_thread, %function
krlsvetabl_exel_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsvetabl_exel_thread, .-krlsvetabl_exel_thread
	.align	2
	.global	krlsvetabl_exit_thread
	.type	krlsvetabl_exit_thread, %function
krlsvetabl_exit_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsvetabl_exit_thread, .-krlsvetabl_exit_thread
	.align	2
	.global	krlsvetabl_retn_threadhand
	.type	krlsvetabl_retn_threadhand, %function
krlsvetabl_retn_threadhand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsvetabl_retn_threadhand, .-krlsvetabl_retn_threadhand
	.align	2
	.global	krlsvetabl_retn_threadstats
	.type	krlsvetabl_retn_threadstats, %function
krlsvetabl_retn_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsvetabl_retn_threadstats, .-krlsvetabl_retn_threadstats
	.align	2
	.global	krlsvetabl_set_threadstats
	.type	krlsvetabl_set_threadstats, %function
krlsvetabl_set_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsvetabl_set_threadstats, .-krlsvetabl_set_threadstats
	.align	2
	.global	krlsve_exel_thread
	.type	krlsve_exel_thread, %function
krlsve_exel_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_exel_thread, .-krlsve_exel_thread
	.align	2
	.global	krlsve_exit_thread
	.type	krlsve_exit_thread, %function
krlsve_exit_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_exit_thread, .-krlsve_exit_thread
	.align	2
	.global	krlsve_retn_threadhand
	.type	krlsve_retn_threadhand, %function
krlsve_retn_threadhand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_retn_threadhand, .-krlsve_retn_threadhand
	.align	2
	.global	krlsve_retn_threadstats
	.type	krlsve_retn_threadstats, %function
krlsve_retn_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_retn_threadstats, .-krlsve_retn_threadstats
	.align	2
	.global	krlsve_set_threadstats
	.type	krlsve_set_threadstats, %function
krlsve_set_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_set_threadstats, .-krlsve_set_threadstats
	.align	2
	.global	krlsve_core_exel_thread
	.type	krlsve_core_exel_thread, %function
krlsve_core_exel_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_core_exel_thread, .-krlsve_core_exel_thread
	.align	2
	.global	krlsve_core_exit_thread
	.type	krlsve_core_exit_thread, %function
krlsve_core_exit_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	krlsve_core_exit_thread, .-krlsve_core_exit_thread
	.align	2
	.global	krlsve_core_retn_threadhand
	.type	krlsve_core_retn_threadhand, %function
krlsve_core_retn_threadhand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_core_retn_threadhand, .-krlsve_core_retn_threadhand
	.align	2
	.global	krlsve_core_retn_threadstats
	.type	krlsve_core_retn_threadstats, %function
krlsve_core_retn_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_core_retn_threadstats, .-krlsve_core_retn_threadstats
	.align	2
	.global	krlsve_core_set_threadstats
	.type	krlsve_core_set_threadstats, %function
krlsve_core_set_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_core_set_threadstats, .-krlsve_core_set_threadstats
	.section	.note.GNU-stack,"",%progbits
