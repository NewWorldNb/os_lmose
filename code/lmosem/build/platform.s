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
	.file	"platform.c"
	.section	.head.text,"ax",%progbits
	.align	2
	.global	s3c2440mmu_invalid_dicache
	.type	s3c2440mmu_invalid_dicache, %function
s3c2440mmu_invalid_dicache:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 45 "../hal/platform.c" 1
	mov    r0, #0 
	mcr    p15, 0, r0, c7, c7, 0 
	mcr    p15, 0, r0, c7, c10, 4 
	mcr    p15, 0, r0, c8, c7, 0 
	
@ 0 "" 2
	bx	lr
	.size	s3c2440mmu_invalid_dicache, .-s3c2440mmu_invalid_dicache
	.align	2
	.global	s3c2440mmu_set_domain
	.type	s3c2440mmu_set_domain, %function
s3c2440mmu_set_domain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 60 "../hal/platform.c" 1
	mcr p15,0,r0,c3,c0,0 
	
@ 0 "" 2
	bx	lr
	.size	s3c2440mmu_set_domain, .-s3c2440mmu_set_domain
	.align	2
	.global	s3c2440mmu_set_tblbass
	.type	s3c2440mmu_set_tblbass, %function
s3c2440mmu_set_tblbass:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 72 "../hal/platform.c" 1
	mcr p15,0,r0,c2,c0,0 
	
@ 0 "" 2
	bx	lr
	.size	s3c2440mmu_set_tblbass, .-s3c2440mmu_set_tblbass
	.align	2
	.global	s3c2440mmu_enable
	.type	s3c2440mmu_enable, %function
s3c2440mmu_enable:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 84 "../hal/platform.c" 1
	mrc p15,0,r0,c1,c0,0 
	orr r0 ,#1 
	mcr p15,0,r0,c1,c0,0 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	
@ 0 "" 2
	bx	lr
	.size	s3c2440mmu_enable, .-s3c2440mmu_enable
	.align	2
	.global	s3c2440vector_init
	.type	s3c2440vector_init, %function
s3c2440vector_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L17
	mov	r3, #0
	mov	r1, r0
	mov	r2, r3
.L10:
	str	r2, [r3], #4
	cmp	r3, #16384
	bne	.L10
	ldr	r3, .L17+4
	cmp	r3, r1
	bxls	lr
	ldr	ip, .L17+8
	ldr	r3, .L17+12
	rsb	ip, r3, ip
	mov	ip, ip, lsr #2
	add	ip, ip, #1
	rsb	r0, r0, #0
.L12:
	ldr	r3, [r1, #0]
	add	r2, r2, #1
	cmp	r2, ip
	str	r3, [r1, r0]
	add	r1, r1, #4
	bne	.L12
	bx	lr
.L18:
	.align	2
.L17:
	.word	vector
	.word	__end_lmosem_hal_vector
	.word	__end_lmosem_hal_vector+3
	.word	vector+4
	.size	s3c2440vector_init, .-s3c2440vector_init
	.align	2
	.global	s3c2440vector_copy
	.type	s3c2440vector_copy, %function
s3c2440vector_copy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L26
	mov	r3, #0
	mov	r1, r0
	mov	r2, r3
.L20:
	str	r2, [r3], #4
	cmp	r3, #16384
	bne	.L20
	ldr	r3, .L26+4
	cmp	r3, r1
	bxls	lr
	ldr	ip, .L26+8
	ldr	r3, .L26+12
	rsb	ip, r3, ip
	mov	ip, ip, lsr #2
	add	ip, ip, #1
	rsb	r0, r0, #0
.L22:
	ldr	r3, [r1, #0]
	add	r2, r2, #1
	cmp	r2, ip
	str	r3, [r1, r0]
	add	r1, r1, #4
	bne	.L22
	bx	lr
.L27:
	.align	2
.L26:
	.word	vector
	.word	__end_lmosem_hal_vector
	.word	__end_lmosem_hal_vector+3
	.word	vector+4
	.size	s3c2440vector_copy, .-s3c2440vector_copy
	.align	2
	.global	s3c2440mmu_init
	.type	s3c2440mmu_init, %function
s3c2440mmu_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #805306368
	mov	r0, r2
	add	r0, r0, #32768
	add	r2, r2, #16384
	mov	r1, #0
.L29:
	orr	r3, r1, #3072
	orr	r3, r3, #2
	str	r3, [r2], #4
	cmp	r2, r0
	add	r1, r1, #1048576
	bne	.L29
	mov	r3, #805306368
	mov	r2, #3072
	add	r3, r3, #16384
	add	r2, r2, #805306370
	str	r2, [r3, #0]
#APP
@ 72 "../hal/platform.c" 1
	mcr p15,0,r3,c2,c0,0 
	
@ 0 "" 2
	mvn	r3, #0
#APP
@ 60 "../hal/platform.c" 1
	mcr p15,0,r3,c3,c0,0 
	
@ 0 "" 2
@ 45 "../hal/platform.c" 1
	mov    r0, #0 
	mcr    p15, 0, r0, c7, c7, 0 
	mcr    p15, 0, r0, c7, c10, 4 
	mcr    p15, 0, r0, c8, c7, 0 
	
@ 0 "" 2
	bl	hal_disable_cache
#APP
@ 84 "../hal/platform.c" 1
	mrc p15,0,r0,c1,c0,0 
	orr r0 ,#1 
	mcr p15,0,r0,c1,c0,0 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	
@ 0 "" 2
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	s3c2440mmu_init, .-s3c2440mmu_init
	.text
	.align	2
	.global	init_paltform
	.type	init_paltform, %function
init_paltform:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	s3c2440mmu_init
	ldr	r0, .L39
	mov	r3, #0
	mov	r1, r0
	mov	r2, r3
.L33:
	str	r2, [r3], #4
	cmp	r3, #16384
	bne	.L33
	ldr	r3, .L39+4
	cmp	r3, r1
	bls	.L36
	ldr	ip, .L39+8
	ldr	r3, .L39+12
	rsb	ip, r3, ip
	mov	ip, ip, lsr #2
	add	ip, ip, #1
	rsb	r0, r0, #0
.L35:
	ldr	r3, [r1, #0]
	add	r2, r2, #1
	cmp	r2, ip
	str	r3, [r1, r0]
	add	r1, r1, #4
	bne	.L35
.L36:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	vector
	.word	__end_lmosem_hal_vector
	.word	__end_lmosem_hal_vector+3
	.word	vector+4
	.size	init_paltform, .-init_paltform
	.section	.note.GNU-stack,"",%progbits
