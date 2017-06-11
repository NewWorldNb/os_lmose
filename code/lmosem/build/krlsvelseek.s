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
	.file	"krlsvelseek.c"
	.text
	.align	2
	.global	krlsvetabl_lseek
	.type	krlsvetabl_lseek, %function
krlsvetabl_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsvetabl_lseek, .-krlsvetabl_lseek
	.align	2
	.global	krlsve_lseek
	.type	krlsve_lseek, %function
krlsve_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_lseek, .-krlsve_lseek
	.align	2
	.global	krlsve_core_lseek
	.type	krlsve_core_lseek, %function
krlsve_core_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	bx	lr
	.size	krlsve_core_lseek, .-krlsve_core_lseek
	.section	.note.GNU-stack,"",%progbits
