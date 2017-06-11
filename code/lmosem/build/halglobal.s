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
	.file	"halglobal.c"
	.global	machadrspce
	.global	osmach
	.global	osphymem
	.global	machintflt
	.section	.data,"aw",%progbits
	.align	2
	.type	machadrspce, %object
	.size	machadrspce, 464
machadrspce:
	.word	5
	.word	0
	.word	0
	.word	2097151
	.word	1
	.word	0
	.word	134217728
	.word	134217743
	.word	1
	.word	0
	.word	268435456
	.word	268435471
	.word	1
	.word	0
	.word	419430400
	.word	420478975
	.word	1
	.word	0
	.word	536870912
	.word	536870927
	.word	1
	.word	0
	.word	671088640
	.word	671088647
	.word	1
	.word	0
	.word	687865856
	.word	687865863
	.word	2
	.word	0
	.word	805306368
	.word	872415231
	.word	1
	.word	0
	.word	1207959552
	.word	1207959600
	.word	1
	.word	0
	.word	1224736768
	.word	1224736856
	.word	1
	.word	0
	.word	1241513984
	.word	1241514012
	.word	1
	.word	0
	.word	1258291200
	.word	1258291424
	.word	1
	.word	0
	.word	1275068416
	.word	1275068440
	.word	1
	.word	0
	.word	1291845632
	.word	1291845728
	.word	1
	.word	0
	.word	1308622848
	.word	1308622908
	.word	1
	.word	0
	.word	1325400064
	.word	1325400224
	.word	1
	.word	0
	.word	1342177280
	.word	1342210088
	.word	1
	.word	0
	.word	1358954496
	.word	1358954560
	.word	1
	.word	0
	.word	1375731712
	.word	1375732335
	.word	1
	.word	0
	.word	1392508928
	.word	1392508936
	.word	1
	.word	0
	.word	1409286144
	.word	1409286160
	.word	1
	.word	0
	.word	1426063360
	.word	1426063378
	.word	1
	.word	0
	.word	1442840576
	.word	1442840780
	.word	1
	.word	0
	.word	1459617856
	.word	1459617931
	.word	1
	.word	0
	.word	1476395008
	.word	1476395028
	.word	1
	.word	0
	.word	1493172224
	.word	1493172276
	.word	1
	.word	0
	.word	1509949440
	.word	1509949507
	.word	1
	.word	0
	.word	1526726656
	.word	1526726684
	.word	0
	.word	-1
	.word	0
	.word	0
	.type	osmach, %object
	.size	osmach, 52
osmach:
	.space	52
	.type	osphymem, %object
	.size	osphymem, 212
osphymem:
	.space	212
	.type	machintflt, %object
	.size	machintflt, 2840
machintflt:
	.space	2840
	.section	.note.GNU-stack,"",%progbits
