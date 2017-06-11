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
	.file	"halmmu.c"
	.text
	.align	2
	.global	hal_disable_cache
	.type	hal_disable_cache, %function
hal_disable_cache:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #4096
	add	r3, r3, #4
#APP
@ 15 "../hal/halmmu.c" 1
	mrc p15,0,r0,c1,c0,0  
	orr r0,r0,r3 
	mcr p15,0,r0,c1,c0,0 
	
@ 0 "" 2
	bx	lr
	.size	hal_disable_cache, .-hal_disable_cache
	.align	2
	.global	cp15_read_c5
	.type	cp15_read_c5, %function
cp15_read_c5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 31 "../hal/halmmu.c" 1
	mrc p15,0,r0,c5,c0,0  
	
@ 0 "" 2
	bx	lr
	.size	cp15_read_c5, .-cp15_read_c5
	.align	2
	.global	cp15_read_c6
	.type	cp15_read_c6, %function
cp15_read_c6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 44 "../hal/halmmu.c" 1
	mrc p15,0,r0,c6,c0,0  
	
@ 0 "" 2
	bx	lr
	.size	cp15_read_c6, .-cp15_read_c6
	.align	2
	.global	hal_read_cp15regs
	.type	hal_read_cp15regs, %function
hal_read_cp15regs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #5
	beq	.L9
	cmp	r0, #6
	movne	r0, #0
	bxne	lr
#APP
@ 44 "../hal/halmmu.c" 1
	mrc p15,0,r0,c6,c0,0  
	
@ 0 "" 2
	bx	lr
.L9:
#APP
@ 31 "../hal/halmmu.c" 1
	mrc p15,0,r0,c5,c0,0  
	
@ 0 "" 2
	bx	lr
	.size	hal_read_cp15regs, .-hal_read_cp15regs
	.section	.note.GNU-stack,"",%progbits
