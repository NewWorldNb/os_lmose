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
	.file	"krlglobal.c"
	.global	osscalltab
	.global	osdrvetytabl
	.global	oskmempool
	.global	osschedcls
	.global	osktime
	.global	osdevtable
	.section	.data,"aw",%progbits
	.align	2
	.type	osscalltab, %object
	.size	osscalltab, 60
osscalltab:
	.word	0
	.word	krlsvetabl_mallocblk
	.word	krlsvetabl_mfreeblk
	.word	krlsvetabl_exel_thread
	.word	krlsvetabl_exit_thread
	.word	krlsvetabl_retn_threadhand
	.word	krlsvetabl_retn_threadstats
	.word	krlsvetabl_set_threadstats
	.word	krlsvetabl_open
	.word	krlsvetabl_close
	.word	krlsvetabl_read
	.word	krlsvetabl_write
	.word	krlsvetabl_ioctrl
	.word	krlsvetabl_lseek
	.word	krlsvetabl_time
	.type	osdrvetytabl, %object
	.size	osdrvetytabl, 16
osdrvetytabl:
	.word	systick_entry
	.word	uart_entry
	.word	rtc_entry
	.word	0
	.type	oskmempool, %object
	.size	oskmempool, 60
oskmempool:
	.space	60
	.type	osschedcls, %object
	.size	osschedcls, 1072
osschedcls:
	.space	1072
	.type	osktime, %object
	.size	osktime, 36
osktime:
	.space	36
	.type	osdevtable, %object
	.size	osdevtable, 564
osdevtable:
	.space	564
	.section	.note.GNU-stack,"",%progbits
