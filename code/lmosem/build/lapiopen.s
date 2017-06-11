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
	.file	"lapiopen.c"
	.text
	.align	2
	.global	api_open
	.type	api_open, %function
api_open:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	ip, r1
	mov	r5, r0
	mov	r6, r2
	mov	r4, #8
#APP
@ 14 "../lib/lapiopen.c" 1
	mov r0,r4 
	mov r1,r5 
	mov r2,ip 
	mov r3,r6 
	swi 0 
	mov ip,r0 
	
@ 0 "" 2
	mov	r0, ip
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	api_open, .-api_open
	.section	.note.GNU-stack,"",%progbits
