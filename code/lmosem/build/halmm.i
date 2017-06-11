# 1 "../hal/halmm.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../hal/halmm.c"





# 1 "../include/lmosemtypes.h" 1







# 1 "../include/config.h" 1
# 9 "../include/lmosemtypes.h" 2
# 1 "../include/bastypeinc/bastype.h" 1







# 1 "../include/bastypeinc/bastype_t.h" 1







typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef unsigned int u32_t;
typedef unsigned long long u64_t;
typedef char s8_t;
typedef short s16_t;
typedef int s32_t;
typedef long long s64_t;
typedef long sint_t;
typedef unsigned long uint_t;
typedef u32_t cpuflg_t;
typedef unsigned long adr_t;

typedef sint_t bool_t;
typedef u32_t dev_t;
typedef const char* str_t;
typedef char char_t;
typedef unsigned long drv_t;
typedef unsigned long mrv_t;
typedef sint_t drvstus_t;
typedef sint_t sysstus_t;
typedef sint_t hand_t;
typedef void* buf_t;
typedef unsigned long size_t;
typedef u32_t reg_t;


typedef void (*inthandler_t)();
typedef drv_t (*i_handle_t)(uint_t int_nr);
typedef drv_t (*f_handle_t)(uint_t int_nr,void* sframe);
typedef drvstus_t (*intflthandle_t)(uint_t ift_nr,void* device,void* sframe);
# 9 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/list_t.h" 1
# 9 "../include/bastypeinc/list_t.h"
typedef struct s_LIST_H {
       struct s_LIST_H *prev,*next;
}list_h_t;
# 10 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/spinlock_t.h" 1
# 11 "../include/bastypeinc/spinlock_t.h"
typedef struct
{
  volatile u32_t lock;
} spinlock_t;
# 11 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/sem_t.h" 1
# 13 "../include/bastypeinc/sem_t.h"
typedef struct s_KWLST
{
    spinlock_t wl_lock;
    uint_t wl_tdnr;
    list_h_t wl_list;
}kwlst_t;

typedef struct s_SEM
{
 spinlock_t sem_lock;
 uint_t sem_flg;
 sint_t sem_count;
 kwlst_t sem_waitlst;
}sem_t;
# 12 "../include/bastypeinc/bastype.h" 2

# 1 "../include/bastypeinc/list.h" 1
# 9 "../include/bastypeinc/list.h"
static inline void list_init(list_h_t* list)
{
 list->prev=list;
 list->next=list;
 return;
}

static inline void __list_del(list_h_t* prev, list_h_t* next)
{
 next->prev = prev;
 prev->next = next;
 return;
}

static inline void __list_add(list_h_t *new,list_h_t *prev,list_h_t *next)
{
 next->prev = new;
 new->next = next;
 new->prev = prev;
 prev->next = new;
 return;
}

static inline void list_add(list_h_t *new, list_h_t *head)
{
         __list_add(new, head, head->next);
 return;
}

static inline void list_add_tail(list_h_t* new,list_h_t* head)
{
        __list_add(new, head->prev, head);
 return;
}


static inline void __list_del_entry(list_h_t* entry)
{
 __list_del(entry->prev, entry->next);
 return;
}

static inline void list_del(list_h_t* entry)
{
 __list_del(entry->prev, entry->next);
 list_init(entry);
 return;
}

static inline void list_move(list_h_t* list,list_h_t* head)
{
         list_del(list);
         list_add(list, head);
         return;
}
static inline void list_move_tail(list_h_t* list,list_h_t* head)
{
         list_del(list);
         list_add_tail(list, head);
         return;
}


static inline bool_t list_is_empty(const list_h_t* head)
{
 if(head->next == head)
 {
  return 1;
 }
 return 0;
}

static inline bool_t list_is_empty_careful(const list_h_t* head)
{
 list_h_t* next = head->next;
 if(next == head && next == head->prev)
 {
  return 1;
 }
 return 0;
}
# 14 "../include/bastypeinc/bastype.h" 2
# 10 "../include/lmosemtypes.h" 2
# 1 "../include/halinc/haltypes.h" 1
# 9 "../include/halinc/haltypes.h"
# 1 "../include/halinc/platform_t.h" 1
# 10 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/cpu_t.h" 1
# 14 "../include/halinc/cpu_t.h"
typedef struct s_ARMREGS
{
    reg_t r0;
    reg_t r1;
    reg_t r2;
    reg_t r3;
    reg_t r4;
    reg_t r5;
    reg_t r6;
    reg_t r7;
    reg_t r8;
    reg_t r9;
    reg_t r10;
    reg_t r11;
    reg_t r12;
    reg_t r13;
    reg_t r14;
}armregs_t;

typedef struct s_INTSTKREGS
{
    reg_t s_spsr;
 reg_t c_lr;
    reg_t r0;
    reg_t r1;
    reg_t r2;
    reg_t r3;
    reg_t r4;
    reg_t r5;
    reg_t r6;
    reg_t r7;
    reg_t r8;
    reg_t r9;
    reg_t r10;
    reg_t r11;
    reg_t r12;
    reg_t r13;
    reg_t r14;
    reg_t s_lr;
}intstkregs_t;
# 11 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/cpuctrl_t.h" 1
# 12 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halmmu_t.h" 1
# 13 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/haluart_t.h" 1
# 14 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halintupt_t.h" 1
# 111 "../include/halinc/halintupt_t.h"
typedef struct s_ILNEDSC
{
    u32_t ild_modflg;
    u32_t ild_devid;
    u32_t ild_physid;
    u32_t ild_clxsubinr;
}ilnedsc_t;




typedef struct s_INTFLTDSC
{
    spinlock_t i_lock;
    list_h_t i_serlist;
    uint_t i_sernr;
    u32_t i_flg;
    u32_t i_stus;
    u32_t i_pndbitnr;
    uint_t i_irqnr;
    uint_t i_deep;
    uint_t i_indx;
}intfltdsc_t;



typedef struct s_INTSERDSC
{
    list_h_t s_list;
    list_h_t s_indevlst;
    u32_t s_flg;
    intfltdsc_t* s_intfltp;
    void* s_device;
    uint_t s_indx;
    intflthandle_t s_handle;
}intserdsc_t;
# 15 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halmm_t.h" 1
# 63 "../include/halinc/halmm_t.h"
typedef struct s_PHYADRSPCE
{
    u32_t ap_flgs;
    u32_t ap_devtype;
    adr_t ap_adrstart;
    adr_t ap_adrend;
}phyadrspce_t;

typedef struct s_MMAPDSC
{
    list_h_t map_list;
    spinlock_t map_lock;
    adr_t map_phyadr;
    adr_t map_phyadrend;
    u32_t map_allcount;
    u32_t map_flg;



}mmapdsc_t;
typedef struct s_ALCFRELST
{
    spinlock_t afl_lock;
    size_t afl_sz;
    list_h_t afl_fulllsth;
    list_h_t afl_emtplsth;
    list_h_t afl_fuemlsth;


}alcfrelst_t;
typedef struct s_PHYMEM
{
    list_h_t pmm_list;
    spinlock_t pmm_lock;
    uint_t freeblks;
    uint_t allcblks;
    alcfrelst_t pmm_sz_lsth[6];


}phymem_t;
# 16 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halmach_t.h" 1







typedef struct s_MACH
{
    spinlock_t mh_lock;
    list_h_t mh_list;
    adr_t mh_kerinramstart;
    adr_t mh_kerinramend;
    mmapdsc_t* mh_mmapdscadr;
    uint_t mh_mmapdscnr;

    uint_t mh_spedscnr;
    phyadrspce_t *mh_spedsc;
    ilnedsc_t* mh_ilnedsc;
    uint_t mh_ilnedscnr;
    intfltdsc_t* mh_intfltdsc;
    uint_t mh_intfltnr;
}mach_t;
# 17 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/intabtdistr_t.h" 1
# 18 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halglobal_t.h" 1
# 19 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halinit_t.h" 1
# 20 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/printfk_t.h" 1
# 11 "../include/halinc/printfk_t.h"
typedef __builtin_va_list va_list;
# 21 "../include/halinc/haltypes.h" 2
# 11 "../include/lmosemtypes.h" 2
# 1 "../include/knlinc/krltypes.h" 1







# 1 "../include/knlinc/krlsem_t.h" 1
# 9 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlintupt_t.h" 1
# 10 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlpagempol_t.h" 1
# 23 "../include/knlinc/krlpagempol_t.h"
typedef struct s_PGLMAP
{
    adr_t pgl_start;
    struct s_PGLMAP* pgl_next;
}pglmap_t;

typedef struct s_MPLHEAD
{
    spinlock_t mh_lock;
    list_h_t mh_list;
    uint_t mh_hedty;
    adr_t mh_start;
    adr_t mh_end;
    adr_t mh_firtfreadr;
    pglmap_t* mh_firtpmap;
    uint_t mh_objnr;
    uint_t mh_aliobsz;
    uint_t mh_objsz;
    uint_t mh_nxtpsz;
    uint_t mh_afindx;
    uint_t mh_pmnr;
    pglmap_t* mh_pmap;
}mplhead_t;

typedef struct s_KMEMPOOL
{
    spinlock_t mp_lock;
    list_h_t mp_list;
    uint_t mp_stus;
    uint_t mp_flgs;
    spinlock_t mp_pglock;
    spinlock_t mp_oblock;
    uint_t mp_pgmplnr;
    uint_t mp_obmplnr;
    list_h_t mp_pgmplmheadl;
    list_h_t mp_obmplmheadl;
    mplhead_t* mp_pgmplmhcach;
    mplhead_t* mp_obmplmhcach;
}kmempool_t;
# 11 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlobjsmpol_t.h" 1
# 13 "../include/knlinc/krlobjsmpol_t.h"
typedef struct s_OLCFGDAT
{
    size_t ocd_objsz;
    size_t ocd_nmpsz;
}olcfgdat_t;

typedef struct s_OBJMGRHEAD
{
    list_h_t omh_list;
    struct s_OBJALST* omh_paralst;
    size_t omh_objsz;
    size_t omh_aligobjsz;
    size_t omh_npinobjsz;
    uint_t omh_objnr;
    uint_t omh_alfrindx;
    adr_t omh_start;
    adr_t omh_end;
    adr_t omh_freeobjp;

}objmgrhead_t;



typedef struct s_OBJALST
{
    list_h_t oal_list;
    list_h_t oal_emplist;
    olcfgdat_t* oal_cfgmsz;
    uint_t oal_emplstnr;
    uint_t oal_lstnr;
    objmgrhead_t* oal_omhcahe;
}objalst_t;

typedef struct s_OBJMPLCTRL
{
    spinlock_t omc_lock;
    objalst_t* omc_alstcahe;

    objalst_t omc_alclst[15];
}objmplctrl_t;
# 12 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlmm_t.h" 1
# 13 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlinit_t.h" 1
# 14 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krltime_t.h" 1
# 9 "../include/knlinc/krltime_t.h"
typedef struct s_KTIME
{
    spinlock_t kt_lock;
    uint_t kt_year;
    uint_t kt_mon;
    uint_t kt_day;
    uint_t kt_date;
    uint_t kt_hour;
    uint_t kt_min;
    uint_t kt_sec;
    void* kt_datap;

}ktime_t;

typedef struct s_TIME
{

    uint_t year;
    uint_t mon;
    uint_t day;
    uint_t date;
    uint_t hour;
    uint_t min;
    uint_t sec;

}time_t;
# 15 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlglobal_t.h" 1
# 16 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlobjnode_t.h" 1
# 9 "../include/knlinc/krlobjnode_t.h"
typedef struct s_OBJNODE
{
    spinlock_t on_lock;
    list_h_t on_list;
    sem_t on_complesem;
    uint_t on_flgs;
    uint_t on_stus;
    sint_t on_opercode;
    uint_t on_objtype;
    void* on_objadr;
    uint_t on_acsflgs;
    uint_t on_acsstus;
    uint_t on_currops;
    uint_t on_len;
    uint_t on_ioctrd;
    buf_t on_buf;
    uint_t on_bufcurops;
    size_t on_bufsz;
    uint_t on_count;
    void* on_safedsc;
}objnode_t;
# 17 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlthread_t.h" 1
# 31 "../include/knlinc/krlthread_t.h"
typedef struct s_MICRSTK
{
    uint_t msk_val[4];
}micrstk_t;



typedef struct s_CONTEXT
{
    reg_t ctx_usrsp;
    reg_t ctx_svcsp;
    reg_t ctx_svcspsr;
    reg_t ctx_cpsr;
    reg_t ctx_lr;
}context_t;
typedef struct s_THREAD
{
    spinlock_t td_lock;
    list_h_t td_list;
    uint_t td_flgs;
    uint_t td_stus;
    uint_t td_cpuid;
    uint_t td_id;
    uint_t td_tick;
    uint_t td_privilege;
    uint_t td_priority;
    uint_t td_runmode;
    adr_t td_krlstktop;
    adr_t td_krlstkstart;
    adr_t td_usrstktop;
    adr_t td_usrstkstart;
    void* td_mmdsc;
    void* td_resdsc;
    void* td_privtep;
    void* td_extdatap;
    context_t td_context;
    objnode_t* td_handtbl[8];
}thread_t;
# 18 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsched_t.h" 1
# 13 "../include/knlinc/krlsched_t.h"
typedef struct s_THRDLST
{
    list_h_t tdl_lsth;
    thread_t* tdl_curruntd;
    uint_t tdl_nr;
}thrdlst_t;
typedef struct s_SCHDATA
{
    spinlock_t sda_lock;
    uint_t sda_cpuid;
    uint_t sda_schdflgs;
    uint_t sda_premptidx;
    uint_t sda_threadnr;
    uint_t sda_prityidx;
    thread_t* sda_cpuidle;
    thread_t* sda_currtd;
    thrdlst_t sda_thdlst[64];
}schdata_t;

typedef struct s_SCHEDCALSS
{
    spinlock_t scls_lock;
    uint_t scls_cpunr;
    uint_t scls_threadnr;
    uint_t scls_threadid_inc;
    schdata_t scls_schda[1];
}schedclass_t;
# 19 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlwaitlist_t.h" 1
# 20 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlcpuidle_t.h" 1
# 21 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krldevice_t.h" 1
# 68 "../include/knlinc/krldevice_t.h"
typedef struct s_DEVID
{
    uint_t dev_mtype;
    uint_t dev_stype;
    uint_t dev_nr;
}devid_t;

typedef struct s_DEVTLST
{
    uint_t dtl_type;
    uint_t dtl_nr;
    list_h_t dtl_list;
}devtlst_t;



typedef struct s_DEVTABLE
{
    list_h_t devt_list;
    spinlock_t devt_lock;
    list_h_t devt_devlist;
    list_h_t devt_drvlist;
    uint_t devt_devnr;
    uint_t devt_drvnr;
    devtlst_t devt_devclsl[33];
}devtable_t;




typedef struct s_DEVICE
{
    list_h_t dev_list;
    list_h_t dev_indrvlst;
    list_h_t dev_intbllst;
    spinlock_t dev_lock;
    uint_t dev_count;
    sem_t dev_sem;
    uint_t dev_stus;
    uint_t dev_flgs;
    devid_t dev_id;
    uint_t dev_intlnenr;
    list_h_t dev_intserlst;
    list_h_t dev_rqlist;
    uint_t dev_rqlnr;
    sem_t dev_waitints;
    struct s_DRIVER* dev_drv;
    void* dev_attrb;
    void* dev_privdata;
    void* dev_userdata;
    void* dev_extdata;
    char_t* dev_name;
}device_t;


typedef drvstus_t (*drivcallfun_t)(device_t*,void*);
typedef drvstus_t (*drventyexit_t)(struct s_DRIVER*,uint_t,void*);
typedef struct s_DRIVER
{
    spinlock_t drv_lock;
    list_h_t drv_list;
    uint_t drv_stuts;
    uint_t drv_flg;
    uint_t drv_id;
    uint_t drv_count;
    sem_t drv_sem;
    void* drv_safedsc;
    void* drv_attrb;
    void* drv_privdata;
    drivcallfun_t drv_dipfun[12];
    list_h_t drv_alldevlist;
    drventyexit_t drv_entry;
    drventyexit_t drv_exit;
    void* drv_userdata;
    void* drv_extdata;
    char_t* drv_name;
}driver_t;
# 22 "../include/knlinc/krltypes.h" 2

# 1 "../include/knlinc/krlservice_t.h" 1
# 40 "../include/knlinc/krlservice_t.h"
typedef struct s_STKPARAME
{
    reg_t rvs0;
    reg_t rvs1;
    reg_t parmv1;
    reg_t parmv2;
    reg_t parmv3;
    reg_t parmv4;
    reg_t parmv5;
    reg_t parmv6;
    reg_t parmv7;
}stkparame_t;

typedef sysstus_t (*syscall_t)(uint_t swinr,stkparame_t* stkparm);
# 24 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvemm_t.h" 1
# 25 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvethread_t.h" 1
# 26 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveopen_t.h" 1
# 27 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveclose_t.h" 1
# 28 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveread_t.h" 1
# 29 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvewrite_t.h" 1
# 30 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveioctrl_t.h" 1
# 31 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvelseek_t.h" 1
# 32 "../include/knlinc/krltypes.h" 2
# 12 "../include/lmosemtypes.h" 2
# 1 "../include/drvinc/drvtypes.h" 1


# 1 "../include/drvinc/drvtick_t.h" 1
# 4 "../include/drvinc/drvtypes.h" 2
# 1 "../include/drvinc/drvuart_t.h" 1
# 5 "../include/drvinc/drvtypes.h" 2
# 1 "../include/drvinc/drvrtc_t.h" 1
# 6 "../include/drvinc/drvtypes.h" 2
# 13 "../include/lmosemtypes.h" 2
# 7 "../hal/halmm.c" 2
# 1 "../include/lmosemmctrl.h" 1
# 9 "../include/lmosemmctrl.h"
# 1 "../include/halinc/halheads.h" 1







# 1 "../include/halinc/link.h" 1







extern char __begin_kernel;
extern char __begin_lmosem_hal_head_text;
extern char __end_lmosem_hal_head_text;
extern char __begin_lmosem_hal_head_data;
extern char __end_lmosem_hal_head_data;
extern char __begin_lmosem_hal_init;
extern char __end_lmosem_hal_init;
extern char __begin_lmosem_hal_vector;
extern char __end_lmosem_hal_vector;
extern char __begin_lmosem_hal_intvect;
extern char __end_lmosem_hal_intvect;
extern char __begin_text;
extern char __end_text;
extern char __begin_data;
extern char __end_data;
extern char __begin_rodata;
extern char __end_rodata;
extern char __begin_kstrtab;
extern char __end_kstrtab;
extern char __begin_bss;
extern char __end_bss;
extern char __end_kernel;
# 9 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/platform.h" 1







void init_paltform();


__attribute__((section(".head.text"))) void s3c2440mmu_init();
__attribute__((section(".head.text"))) void s3c2440mmu_invalid_dicache();
__attribute__((section(".head.text"))) void s3c2440mmu_set_domain(u32_t domain);
__attribute__((section(".head.text"))) void s3c2440mmu_set_tblbass(u32_t tblbphyadr);
__attribute__((section(".head.text"))) void s3c2440mmu_enable();
__attribute__((section(".head.text"))) void s3c2440vector_init();
__attribute__((section(".head.text"))) void s3c2440vector_copy();
extern void vector();
# 10 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/cpu.h" 1
# 11 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/cpuctrl.h" 1
# 9 "../include/halinc/cpuctrl.h"
void hal_disable_fiq();
void hal_enable_fiq();
void hal_disable_irq();
void hal_enable_irq();
void hal_disable_irqfiq();
void hal_enable_irqfiq();
void hal_disablefiq_savecpuflg(cpuflg_t* cpuflg);
void hal_enablefiq_restcpuflg(cpuflg_t* cpuflg);
void hal_disableirq_savecpuflg(cpuflg_t* cpuflg);
void hal_enableirq_restcpuflg(cpuflg_t* cpuflg);
void hal_disableirqfiq_savecpuflg(cpuflg_t* cpuflg);
void hal_enableirqfiq_restcpuflg(cpuflg_t* cpuflg);
u32_t hal_read_currmodesp();
cpuflg_t hal_read_cpuflg();
void hal_write_cpuflg(cpuflg_t cpuflg);
void hal_swhmodset_sp_rscurmod(uint_t cpumod,reg_t sp);
cpuflg_t hal_read_scpuflg();
void hal_write_scpuflg(cpuflg_t scpuflg);
void hal_cpumode_switch(uint_t mode);
uint_t hal_cpumodeswitch_retoldmode(uint_t mode);
u8_t hal_io8_read(uint_t ioadr);
u16_t hal_io16_read(uint_t ioadr);
u32_t hal_io32_read(uint_t ioadr);
void hal_io8_write(uint_t ioadr,u8_t val);
void hal_io16_write(uint_t ioadr,u16_t val);
void hal_io32_write(uint_t ioadr,u32_t val);
void hal_spinlock_init(spinlock_t* lock);
void hal_spinlock_lock(spinlock_t* lock);
void hal_spinlock_unlock(spinlock_t* lock);
void hal_spinlock_saveflg_cli(spinlock_t* lock, cpuflg_t* cpuflg);
void hal_spinunlock_restflg_sti(spinlock_t* lock, cpuflg_t* cpuflg);
void hal_memset(void* setp,size_t n,u8_t setval);
void hal_memcpy(void* src,void* dst,size_t n);
void hal_sysdie(char_t* errmsg);
uint_t hal_retn_cpuid();
# 12 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halmmu.h" 1







void hal_disable_cache();
u32_t cp15_read_c5();
u32_t cp15_read_c6();
u32_t hal_read_cp15regs(uint_t regnr);
# 13 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/haluart.h" 1
# 11 "../include/halinc/haluart.h"
void hal_uart0_putc(char_t c);

void init_haluart();
drvstus_t hal_uart_write(uint_t uart,void* buf,uint_t len);
drvstus_t hal_uart_read(uint_t uart,void* buf,uint_t* retlen);
drvstus_t hal_uart_ioctrl(uint_t uart,uint_t ctrlcode,void* ctrdata);
drvstus_t uart_send_char(uint_t uart,char_t ch);
drvstus_t uart_receive_char(uint_t uart,char_t* retch);

void init_uart0();
# 14 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halintupt.h" 1







void init_halintupt();
void init_intfltdsc(mach_t* machp);
void intfltdsc_t_init(intfltdsc_t* initp,u32_t flg,u32_t stus,u32_t pbitnr,uint_t irqnr);
void intserdsc_t_init(intserdsc_t* initp,u32_t flg,intfltdsc_t* intfltp,void* device,intflthandle_t handle);
intfltdsc_t* hal_retn_intfltdsc(uint_t ifdnr);
uint_t hal_retn_intnr();
bool_t hal_add_ihandle(intfltdsc_t* intdscp,intserdsc_t* serdscp);
drvstus_t hal_clear_intpnd(uint_t bitnr);
drvstus_t hal_clear_srcpnd(uint_t ifdnr);
drvstus_t hal_enable_intline(uint_t ifdnr);
drvstus_t hal_disable_intline(uint_t ifdnr);
drvstus_t hal_intflt_default(uint_t ift_nr,void* sframe);
# 15 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halmm.h" 1







void init_halmm();
sint_t cheksum_phyadrspce(mach_t* mahp);
void init_mmapdsc(mach_t* mahp);
uint_t init_core_mmapdsc(adr_t adrs,adr_t adre,mmapdsc_t* gmmp,uint_t curmindx);
void mmapdsc_t_init(mmapdsc_t* mmp,adr_t phyadr,adr_t phyadre,u32_t allcount,u32_t flgs);
void alcfrelst_t_init(alcfrelst_t* initp,size_t bsz);
void phymem_t_init(phymem_t* initp);
void onmmapdsc_inkrlram(mach_t* mahp,phymem_t* pmp);
void init_phymem();
void pmmlist_init(mach_t* mahp,phymem_t* pmp);
void mapdsc_addto_memlst(alcfrelst_t* aflp,mmapdsc_t* mapp,uint_t atflg);
alcfrelst_t* hal_onblksz_findalcfrelst(alcfrelst_t** retalcfrl,size_t* retalcsz,size_t blksz);
mmapdsc_t* hal_onalfl_findmapdsc(alcfrelst_t* allclh);
adr_t hal_onmapdsc_allcblks(u32_t mflg, u32_t mask,u32_t bitls,alcfrelst_t* aflp,alcfrelst_t* mvtoaflp);
adr_t hal_onalcfrel_allocblks(alcfrelst_t* allclh,alcfrelst_t* relaclh,size_t relalcsz);
adr_t hal_memallocblks_core(size_t blksz);
adr_t hal_memallocblks(size_t blksz);
mmapdsc_t* hal_free_findmapdsc(adr_t frebadr,alcfrelst_t* allclh);
bool_t hal_onmapdsc_freeblks(adr_t frebadr,u32_t mflg, u32_t mask,alcfrelst_t* aflp,alcfrelst_t* mvtoaflp);
bool_t hal_onalcfrel_freeblks(adr_t frebadr,alcfrelst_t* allclh,alcfrelst_t* mvaflh,size_t relalcsz);
bool_t hal_memfreeblks_core(adr_t frebadr,size_t blksz);
bool_t hal_memfreeblks(adr_t frebadr,size_t blksz);
void test_halmm();
# 16 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halmach.h" 1







void init_halmach();
void mach_t_init(mach_t* initp);
# 17 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/intabtdistr.h" 1
# 9 "../include/halinc/intabtdistr.h"
void hal_undefins_distr(void* sframe);
sysstus_t hal_swi_distr(uint_t swinr,void* sframe);
void hal_prefabt_distr(void* sframe);
void hal_dataabt_distr(void* sframe);
void hal_bugdie_distr(void* sframe);
void hal_irq_distr(void* sframe);
void hal_frq_distr(void* sframe);
void hal_eint_distr(void* sframe,uint_t mintnr,uint_t pndbts,uint_t pndbte);
void hal_sint_distr(void* sframe,uint_t mintnr,uint_t pndbts,uint_t pndbte);
void hal_lcdint_distr(void* sframe,uint_t mintnr,uint_t pndbts,uint_t pndbte);
void hal_int_distr(void* sframe,uint_t mintnr);
void hal_run_intflthandle(uint_t ifdnr,void* sframe);
# 18 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halglobal.h" 1
# 13 "../include/halinc/halglobal.h"
extern __attribute__((section(".data"))) mach_t osmach;
extern __attribute__((section(".data"))) phymem_t osphymem;

extern __attribute__((section(".data"))) phyadrspce_t machadrspce[29];
extern __attribute__((section(".data"))) intfltdsc_t machintflt[71];
# 19 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halinit.h" 1
# 9 "../include/halinc/halinit.h"
__attribute__((section(".head.text"))) void init_hal();
# 20 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/printfk.h" 1







void printfk(const char* fmt,...);
char_t* strcopyk(char_t* buf,char_t* str_s);
void vsprintfk(char* buf,const char* fmt,va_list args);
char_t* numberk(char_t* str,uint_t n, sint_t base);
void char_write_uart(char_t* buf);
# 21 "../include/halinc/halheads.h" 2
# 10 "../include/lmosemmctrl.h" 2
# 1 "../include/knlinc/krlheads.h" 1







# 1 "../include/knlinc/krlsem.h" 1







void krlsem_t_init(sem_t* initp);
void krlsem_set_sem(sem_t* setsem,uint_t flg,sint_t conut);
void krlsem_down(sem_t* sem);
void krlsem_up(sem_t* sem);
# 9 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlintupt.h" 1







intserdsc_t* krladd_irqhandle(void* device,intflthandle_t handle,uint_t phyiline);
drvstus_t krlenable_intline(uint_t ifdnr);
drvstus_t krldisable_intline(uint_t ifdnr);
# 10 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlpagempol.h" 1
# 9 "../include/knlinc/krlpagempol.h"
void init_krlpagempol();
void kmempool_t_init(kmempool_t* initp);
adr_t kmempool_page_new_callhalmm(size_t msize);
bool_t kmempool_page_delete_callhalmm(adr_t fradr,size_t frze);
void mplhead_t_init(mplhead_t* initp);
bool_t objs_delete_on_mplhead(mplhead_t* mplhdp,adr_t fradr);
adr_t objs_new_on_mplhead(mplhead_t* mplhdp);
bool_t page_delete_on_mplhead(mplhead_t* mplhdp,adr_t fradr);
adr_t page_new_on_mplhead(mplhead_t* mplhdp);
mplhead_t* objs_mpool_init(kmempool_t* kmplockp,mplhead_t* initp,size_t msize,adr_t start,adr_t end);
mplhead_t* page_mpool_init(kmempool_t* kmplockp,mplhead_t* initp,size_t msize,adr_t start,adr_t end);
bool_t del_objs_mpool(kmempool_t* kmplockp,mplhead_t* mphdp);
bool_t del_page_mpool(kmempool_t* kmplockp,mplhead_t* mphdp);
mplhead_t* new_objs_mpool(kmempool_t* kmplockp,size_t msize);
mplhead_t* new_page_mpool(kmempool_t* kmplockp,size_t msize);
mplhead_t* objsdel_mplhead_isok(mplhead_t* mhp,adr_t fradr,size_t msize);
mplhead_t* pagedel_mplhead_isok(mplhead_t* mhp,adr_t fradr,size_t msize);
mplhead_t* objsnew_mplhead_isok(mplhead_t* mhp,size_t msize);
mplhead_t* pagenew_mplhead_isok(mplhead_t* mhp,size_t msize);
mplhead_t* kmemplob_retn_mplhead(kmempool_t* kmplockp,size_t msize);
mplhead_t* kmempldelpg_retn_mplhead(kmempool_t* kmplockp,adr_t fradr,size_t msize);
mplhead_t* kmemplpg_retn_mplhead(kmempool_t* kmplockp,size_t msize);
adr_t kmempool_pages_core_new(size_t msize);
bool_t kmempool_pages_core_delete(adr_t fradr,size_t frsz);
adr_t kmempool_objsz_core_new(size_t msize);
bool_t kmempool_objsz_core_delete(adr_t fradr,size_t frsz);
adr_t kmempool_objsz_new(size_t msize);
bool_t kmempool_objsz_delete(adr_t fradr,size_t frsz);
adr_t kmempool_pages_new(size_t msize);
bool_t kmempool_pages_delete(adr_t fradr,size_t frsz);
adr_t kmempool_onsize_new(size_t msize);
bool_t kmempool_onsize_delete(adr_t fradr,size_t frsz);
adr_t kmempool_new(size_t msize);
bool_t kmempool_delete(adr_t fradr,size_t frsz);
# 11 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlobjsmpol.h" 1







void init_krlobjsmpol();
void objmgrhead_t_init(objmgrhead_t* initp,objalst_t* alstp,size_t objsz,adr_t start,adr_t end);
void objalst_t_init(objalst_t* initp,olcfgdat_t* ocfgp);
void objmplctrl_t_init(objmplctrl_t* initp);
void test_objmpool();
void objs_align(objmgrhead_t* omghp,uint_t ali);
objmgrhead_t* retn_freeobjmgrh_onobjalst(objalst_t* alstp,adr_t fradr,size_t frsz);
objmgrhead_t* retn_alocobjmgrh_onobjalst(objalst_t* alstp);
objmgrhead_t* krlnew_objmpoolandinit(objalst_t* alstp, size_t msize);
objalst_t* retn_objalst_onmsize(objmplctrl_t* omctlp,size_t msz);
bool_t free_objsz_onobjmgrhead(objmgrhead_t* omghp,adr_t fradr,size_t frsz);
bool_t krlfre_objmpoolanddele(objalst_t* alstp,objmgrhead_t* omghp,size_t frsz);
bool_t krlobjmplfree_core_onobjalst(objalst_t *alstp,adr_t fradr, size_t frsz);
bool_t krlobjsmpol_free_core(adr_t fradr, size_t frsz);
bool_t krlobjsmpol_free(adr_t fradr,size_t frsz);
adr_t krlobjsmpol_alloc(size_t msize);
adr_t aloc_objsz_onobjmgrhead(objmgrhead_t* omghp);
adr_t krlobjmplalc_core_onobjalst(objalst_t* alstp, size_t msize);
adr_t krlobjsmpol_alloc_core(size_t msize);
# 12 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlmm.h" 1







void init_krlmm();

adr_t krlnew(size_t mmsize);

bool_t krldelete(adr_t fradr,size_t frsz);
# 13 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlinit.h" 1







void init_krl();
# 14 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krltime.h" 1







void ktime_t_init(ktime_t* initp);
void init_ktime();
void krlupdate_times(uint_t year,uint_t mon,uint_t day,uint_t date,uint_t hour,uint_t min,uint_t sec);
sysstus_t krlsvetabl_time(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_time(time_t* time);
# 15 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlglobal.h" 1
# 13 "../include/knlinc/krlglobal.h"
extern __attribute__((section(".data"))) kmempool_t oskmempool;
extern __attribute__((section(".data"))) schedclass_t osschedcls;
extern __attribute__((section(".data"))) ktime_t osktime;
extern __attribute__((section(".data"))) syscall_t osscalltab[0xf];
extern __attribute__((section(".data"))) devtable_t osdevtable;
extern __attribute__((section(".data"))) drventyexit_t osdrvetytabl[];
# 16 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlobjnode.h" 1







void objnode_t_init(objnode_t* initp);
objnode_t* krlnew_objnode();
bool_t krldel_objnode(objnode_t* onodep);
# 17 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlthread.h" 1







void micrstk_t_init(micrstk_t* initp);
void context_t_init(context_t* initp);
void thread_t_init(thread_t* initp);
thread_t* krlnew_thread_dsc();
void krlthd_inc_tick(thread_t* thdp);
hand_t krlthd_retn_nullhand(thread_t* thdp);
hand_t krlthd_add_objnode(thread_t* thdp,objnode_t* ondp);
hand_t krlthd_del_objnode(thread_t *thdp, hand_t hand);
objnode_t* krlthd_retn_objnode(thread_t *thdp, hand_t hand);
void krlthreadkrlsatck_init(thread_t* thdp,void* runadr,reg_t cpsr,reg_t spsr);
thread_t* krlnew_thread_core(void* filerun,uint_t flg,uint_t prilg,uint_t prity,size_t usrstksz,size_t krlstksz);
thread_t* krlnew_thread(void* filerun,uint_t flg,uint_t prilg,uint_t prity,size_t usrstksz,size_t krlstksz);
# 18 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsched.h" 1







void thrdlst_t_init(thrdlst_t* initp);
void schdata_t_init(schdata_t* initp);
void schedclass_t_init(schedclass_t* initp);
void init_krlsched();
thread_t* krlsched_retn_currthread();
void krlsched_wait(kwlst_t* wlst);
void krlsched_up(kwlst_t* wlst);
void krlsched_set_schedflgs();
void krlsched_chkneed_pmptsched();
thread_t* krlsched_select_thread();
void krlschedul();
void krlschdclass_add_thread(thread_t* thdp);
uint_t krlretn_thread_id(thread_t* tdp);
void __to_new_context(thread_t* next,thread_t* prev);
void save_to_new_context(thread_t* next,thread_t* prev);
void retnfrom_first_sched(thread_t* thrdp);
# 19 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlwaitlist.h" 1







void kwlst_t_init(kwlst_t* initp);
void krlwlst_wait(kwlst_t* wlst);
void krlwlst_up(kwlst_t* wlst);
void krlwlst_allup(kwlst_t* wlst);
void krlwlst_add_thread(kwlst_t* wlst,thread_t* tdp);
thread_t* krlwlst_del_thread(kwlst_t *wlst);
# 20 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlcpuidle.h" 1







void init_krlcpuidle();
void krlcpuidle_start();
thread_t* new_cpuidle_thread();
void new_cpuidle();
void krlcpuidle_main();
# 21 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krldevice.h" 1







void devtlst_t_init(devtlst_t* initp,uint_t dtype);
void devtable_t_init(devtable_t* initp);
void devid_t_init(devid_t* initp,uint_t mty,uint_t sty,uint_t nr);
void device_t_init(device_t* initp);
void krlretn_driverid(driver_t* dverp);
void driver_t_init(driver_t* initp);
void init_krldevice();
drvstus_t krlrun_driverentry(drventyexit_t drventry);
void init_krldriver();
drvstus_t del_driver_dsc(driver_t* drvp);
driver_t* new_driver_dsc();
drvstus_t del_device_dsc(device_t* devp);
device_t* new_device_dsc();
drvstus_t drv_defalt_func(device_t* devp,void* iopack);
bool_t krlcmp_devid(devid_t* sdidp,devid_t* cdidp);
drvstus_t krldriver_add_system(driver_t* drvp);
drvstus_t krldev_add_driver(device_t* devp,driver_t* drvp);
drvstus_t krlnew_device(device_t* devp);
drvstus_t krldev_inc_devcount(device_t* devp);
drvstus_t krldev_dec_devcount(device_t* devp);
drvstus_t krldev_add_request(device_t *devp, objnode_t* request);
drvstus_t krldev_complete_request(device_t *devp, objnode_t* request);
drvstus_t krldev_retn_request(device_t *devp,uint_t iocode,objnode_t** retreq);
drvstus_t krldev_wait_request(device_t *devp, objnode_t* request);
drvstus_t krldev_retn_rqueparm(void* request,buf_t* retbuf,uint_t* retcops,uint_t* retlen,uint_t* retioclde,uint_t* retbufcops,size_t* retbufsz);
device_t* krlonidfl_retn_device(void* dfname,uint_t flgs);
drvstus_t krlnew_devhandle(device_t* devp,intflthandle_t handle,uint_t phyiline);
drvstus_t krldev_io(objnode_t* nodep);
drvstus_t krldev_call_driver(device_t* devp,uint_t iocode,uint_t val1,uint_t val2,void* p1,void* p2);
# 22 "../include/knlinc/krlheads.h" 2

# 1 "../include/knlinc/task.h" 1


void init_task();
# 24 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlservice.h" 1







sysstus_t krlservice(uint_t swinr,void* sframe);
# 25 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvemm.h" 1


sysstus_t krlsvetabl_mallocblk(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_mfreeblk(uint_t swinr,stkparame_t* stkparv);
void* krlsve_mallocblk(size_t blksz);
sysstus_t krlsve_mfreeblk(void* fradr,size_t blksz);
void* krlsve_core_mallocblk(size_t blksz);
sysstus_t krlsve_core_mfreeblk(void* fradr,size_t blksz);
# 26 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvethread.h" 1
# 9 "../include/knlinc/krlsvethread.h"
sysstus_t krlsvetabl_exel_thread(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_exit_thread(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_retn_threadhand(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_retn_threadstats(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_set_threadstats(uint_t swinr,stkparame_t* stkparv);
hand_t krlsve_exel_thread(void* file,uint_t flgs);
sysstus_t krlsve_exit_thread();
hand_t krlsve_retn_threadhand(void* tname);
sysstus_t krlsve_retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t krlsve_set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
hand_t krlsve_core_exel_thread(void* file,uint_t flgs);
void krlsve_core_exit_thread();
hand_t krlsve_core_retn_threadhand(void* tname);
sysstus_t krlsve_core_retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t krlsve_core_set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
# 27 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveopen.h" 1







sysstus_t krlsvetabl_open(uint_t swinr,stkparame_t* stkparv);
hand_t krlsve_open(void* file,uint_t flgs,uint_t stus);
hand_t krlsve_core_open(void* file,uint_t flgs,uint_t stus);
sysstus_t krlsve_open_device(objnode_t* ondep);
# 28 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveclose.h" 1







sysstus_t krlsvetabl_close(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_close(hand_t fhand);
sysstus_t krlsve_core_close(hand_t fhand);
sysstus_t krlsve_close_device(objnode_t* ondep);
# 29 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveread.h" 1







sysstus_t krlsvetabl_read(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_core_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_read_device(objnode_t* ondep);
# 30 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvewrite.h" 1







sysstus_t krlsvetabl_write(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_core_write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_write_device(objnode_t* ondep);
# 31 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveioctrl.h" 1







sysstus_t krlsvetabl_ioctrl(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
sysstus_t krlsve_core_ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
sysstus_t krlsve_ioctrl_device(objnode_t* ondep);
# 32 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvelseek.h" 1







sysstus_t krlsvetabl_lseek(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_lseek(hand_t fhand,uint_t lofset,uint_t flgs);
sysstus_t krlsve_core_lseek(hand_t fhand,uint_t lofset,uint_t flgs);
# 33 "../include/knlinc/krlheads.h" 2
# 11 "../include/lmosemmctrl.h" 2
# 1 "../include/drvinc/drvheads.h" 1


# 1 "../include/drvinc/drvtick.h" 1







void systick_set_driver(driver_t* drvp);
void systick_set_device(device_t* devp,driver_t* drvp);
drvstus_t systick_entry(driver_t* drvp,uint_t val,void* p);
drvstus_t systick_exit(driver_t* drvp,uint_t val,void* p);
drvstus_t systick_handle(uint_t ift_nr,void* devp,void* sframe);
drvstus_t systick_open(device_t* devp,void* iopack);
drvstus_t systick_close(device_t* devp,void* iopack);
drvstus_t systick_read(device_t* devp,void* iopack);
drvstus_t systick_write(device_t* devp,void* iopack);
drvstus_t systick_lseek(device_t* devp,void* iopack);
drvstus_t systick_ioctrl(device_t* devp,void* iopack);
drvstus_t systick_dev_start(device_t* devp,void* iopack);
drvstus_t systick_dev_stop(device_t* devp,void* iopack);
drvstus_t systick_set_powerstus(device_t* devp,void* iopack);
drvstus_t systick_enum_dev(device_t* devp,void* iopack);
drvstus_t systick_flush(device_t* devp,void* iopack);
drvstus_t systick_shutdown(device_t* devp,void* iopack);
# 4 "../include/drvinc/drvheads.h" 2
# 1 "../include/drvinc/drvuart.h" 1







void uart_set_driver(driver_t* drvp);
void uart0_set_device(device_t* devp,driver_t* drvp);
drvstus_t uart_entry(driver_t* drvp,uint_t val,void* p);
drvstus_t uart_exit(driver_t* drvp,uint_t val,void* p);
drvstus_t uart0_rxd_handle(uint_t ift_nr,void* devp,void* sframe);
drvstus_t uart0_txd_handle(uint_t ift_nr,void* devp,void* sframe);
drvstus_t uart0_err_handle(uint_t ift_nr,void* devp,void* sframe);
drvstus_t uart_open(device_t* devp,void* iopack);
drvstus_t uart_close(device_t* devp,void* iopack);
drvstus_t uart_read(device_t* devp,void* iopack);
drvstus_t uart_write(device_t* devp,void* iopack);
drvstus_t uart_lseek(device_t* devp,void* iopack);
drvstus_t uart_ioctrl(device_t* devp,void* iopack);
drvstus_t uart_dev_start(device_t* devp,void* iopack);
drvstus_t uart_dev_stop(device_t* devp,void* iopack);
drvstus_t uart_set_powerstus(device_t* devp,void* iopack);
drvstus_t uart_enum_dev(device_t* devp,void* iopack);
drvstus_t uart_flush(device_t* devp,void* iopack);
drvstus_t uart_shutdown(device_t* devp,void* iopack);
drvstus_t uartdev_send_char(uint_t uart,char_t ch);
# 5 "../include/drvinc/drvheads.h" 2
# 1 "../include/drvinc/drvrtc.h" 1







void rtc_set_driver(driver_t* drvp);
void rtc_set_device(device_t* devp,driver_t* drvp);
void init_rtc();
drvstus_t rtc_entry(driver_t* drvp,uint_t val,void* p);
drvstus_t rtc_exit(driver_t* drvp,uint_t val,void* p);
drvstus_t rtc_handle(uint_t ift_nr,void* devp,void* sframe);
drvstus_t rtc_tick_handle(uint_t ift_nr, void *devp, void *sframe);
drvstus_t rtc_open(device_t* devp,void* iopack);
drvstus_t rtc_close(device_t* devp,void* iopack);
drvstus_t rtc_read(device_t* devp,void* iopack);
drvstus_t rtc_write(device_t* devp,void* iopack);
drvstus_t rtc_lseek(device_t* devp,void* iopack);
drvstus_t rtc_ioctrl(device_t* devp,void* iopack);
drvstus_t rtc_dev_start(device_t* devp,void* iopack);
drvstus_t rtc_dev_stop(device_t* devp,void* iopack);
drvstus_t rtc_set_powerstus(device_t* devp,void* iopack);
drvstus_t rtc_enum_dev(device_t* devp,void* iopack);
drvstus_t rtc_flush(device_t* devp,void* iopack);
drvstus_t rtc_shutdown(device_t* devp,void* iopack);
# 6 "../include/drvinc/drvheads.h" 2
# 12 "../include/lmosemmctrl.h" 2
# 1 "../include/libinc/libheads.h" 1


# 1 "../include/libinc/lapinrentry.h" 1
# 4 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapimm.h" 1







void* api_mallocblk(size_t blksz);
sysstus_t api_mfreeblk(void* fradr,size_t blksz);
void test_api();
# 5 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapithread.h" 1







hand_t api_exel_thread(void* file,uint_t flgs);
void api_exit_thread();
hand_t api_retn_threadhand(void* tname);
sysstus_t api_retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t api_set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
# 6 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapiopen.h" 1







hand_t api_open(void* file,uint_t flgs,uint_t stus);
# 7 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapiclose.h" 1







sysstus_t api_close(hand_t fhand);
# 8 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapiread.h" 1







sysstus_t api_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
# 9 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapiwrite.h" 1







sysstus_t api_write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
# 10 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapilseek.h" 1







sysstus_t api_lseek(hand_t fhand,uint_t lofset,uint_t flgs);
# 11 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapiioctrl.h" 1
# 9 "../include/libinc/lapiioctrl.h"
sysstus_t api_ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
# 12 "../include/libinc/libheads.h" 2
# 1 "../include/libinc/lapitime.h" 1


sysstus_t api_time(buf_t ttime);
# 13 "../include/libinc/libheads.h" 2
# 13 "../include/lmosemmctrl.h" 2
# 8 "../hal/halmm.c" 2

void init_halmm()
{
    if(cheksum_phyadrspce(&osmach)==0)
    {
        hal_sysdie("cheksum_phyadrspce ret FALSE");
    }
    init_mmapdsc(&osmach);
    init_phymem();

    onmmapdsc_inkrlram(&osmach,&osphymem);
    return;
}
void print_mmapdsc(mach_t *mchp)
{
    mmapdsc_t* map=mchp->mh_mmapdscadr;
    uint_t mnr=mchp->mh_mmapdscnr;
    for(uint_t i=0;i<mnr;i++)
    {
        printfk("mmapdsc[%x].map_phyadr:%x,map_phyadrend:%x\n\r",i,(uint_t)map[i].map_phyadr,(uint_t)map[i].map_phyadrend);
    }
    return;
}

sint_t cheksum_phyadrspce(mach_t* mahp)
{
    sint_t sdramsts=0,kerinmmsts=0;
    phyadrspce_t* adsp=mahp->mh_spedsc;
    uint_t spnr=mahp->mh_spedscnr;
    if(adsp==0||spnr!=29)
    {
        return 0;
    }

    if(adsp[spnr-1].ap_flgs!=0||
       adsp[spnr-1].ap_devtype!=0xffffffff||
       adsp[spnr-1].ap_adrstart!=0||
       adsp[spnr-1].ap_adrend!=0)
    {
        return 0;
    }

    for(uint_t i=0;i<spnr;i++)
    {
        if(adsp[i].ap_adrend<adsp[i].ap_adrstart)
        {
            return 0;
        }
        if(adsp[i].ap_flgs==2)
        {
            sdramsts=1;
            if(mahp->mh_kerinramstart>=adsp[i].ap_adrstart&&
               mahp->mh_kerinramend<adsp[i].ap_adrend)
            {
                kerinmmsts=1;
            }
        }

    }
    if(sdramsts==1&&kerinmmsts==1)
    {
        return 1;
    }
    return 0;
}

void init_mmapdsc(mach_t* mahp)
{
    phyadrspce_t* adsp=mahp->mh_spedsc;
    uint_t spnr=mahp->mh_spedscnr;
    uint_t mindx=0;
    for(uint_t i=0;i<spnr;i++)
    {
        if(adsp[i].ap_flgs==2)
        {
            mindx=init_core_mmapdsc(adsp[i].ap_adrstart,adsp[i].ap_adrend,mahp->mh_mmapdscadr,mindx);
        }
    }
    mahp->mh_mmapdscnr=mindx;
    mahp->mh_kerinramend=(adr_t)((uint_t)mahp->mh_mmapdscadr+((sizeof(mmapdsc_t))*mindx));
    return;
}

uint_t init_core_mmapdsc(adr_t adrs,adr_t adre,mmapdsc_t* gmmp,uint_t curmindx)
{
    uint_t mindx=curmindx;
    adr_t tmpadr=adre;
    for(;adrs<adre;adrs+=(0x400000),mindx++)
    {
        if((adrs+(0x400000))<adre)
        {
            tmpadr=(adrs+(0x400000))-1;
        }else
        {
            tmpadr=adre;
        }

        mmapdsc_t_init(&gmmp[mindx],adrs,tmpadr,0,(0|(6<<4)|(8<<0)));
    }
    return mindx;
}

void mmapdsc_t_init(mmapdsc_t* mmp,adr_t phyadr,adr_t phyadre,u32_t allcount,u32_t flgs)
{
    list_init(&mmp->map_list);
    hal_spinlock_init(&mmp->map_lock);
    mmp->map_phyadr=phyadr;
    mmp->map_phyadrend=phyadre;
    mmp->map_allcount=allcount;
    mmp->map_flg=flgs;
    return;
}



void alcfrelst_t_init(alcfrelst_t* initp,size_t bsz)
{
    hal_spinlock_init(&initp->afl_lock);
    initp->afl_sz=bsz;
    list_init(&initp->afl_fulllsth);
    list_init(&initp->afl_emtplsth);
    list_init(&initp->afl_fuemlsth);
    return;
}

void phymem_t_init(phymem_t* initp)
{
    list_init(&initp->pmm_list);
    hal_spinlock_init(&initp->pmm_lock);
    alcfrelst_t_init(&initp->pmm_sz_lsth[0],(0x20000));
    alcfrelst_t_init(&initp->pmm_sz_lsth[1],(0x40000));
    alcfrelst_t_init(&initp->pmm_sz_lsth[2],(0x80000));
    alcfrelst_t_init(&initp->pmm_sz_lsth[3],(0x100000));
    alcfrelst_t_init(&initp->pmm_sz_lsth[4],(0x200000));
    alcfrelst_t_init(&initp->pmm_sz_lsth[5],(0x400000));

    return;
}

void onmmapdsc_inkrlram(mach_t* mahp,phymem_t* pmp)
{
    mmapdsc_t* mapp=mahp->mh_mmapdscadr;
    adr_t ker_r_s=mahp->mh_kerinramstart,ker_r_e=mahp->mh_kerinramend;
    if((ker_r_e-ker_r_s)>(0x20000)||ker_r_s<mapp[0].map_phyadr)
    {
        hal_sysdie("onmmapdsc_inkrlram err");
    }
    u32_t cut=1;
    u32_t flg=(0|(1<<4)|(8<<0));
    mapp[0].map_allcount=cut;
    mapp[0].map_flg=flg;
    mapdsc_addto_memlst(&pmp->pmm_sz_lsth[0],&mapp[0],2);
    return;
}

void init_phymem()
{
    phymem_t_init(&osphymem);
    pmmlist_init(&osmach,&osphymem);
    return;
}

void pmmlist_init(mach_t* mahp,phymem_t* pmp)
{
    mmapdsc_t* mapp=mahp->mh_mmapdscadr;
    uint_t mapnr=mahp->mh_mmapdscnr;
    for(uint_t mr=1;mr<mapnr;mr++)
    {
        mapdsc_addto_memlst(&pmp->pmm_sz_lsth[6 -1],&mapp[mr],1);

    }
    return;
}

void mapdsc_addto_memlst(alcfrelst_t* aflp,mmapdsc_t* mapp,uint_t atflg)
{
    switch(atflg)
    {
        case 1:
            list_add_tail(&mapp->map_list,&aflp->afl_emtplsth);
            break;
        case 2:
            list_add_tail(&mapp->map_list,&aflp->afl_fuemlsth);
            break;
        case 3:
            list_add_tail(&mapp->map_list,&aflp->afl_fulllsth);
            break;
        default:
            break;
    }
    return;
}

alcfrelst_t* hal_onblksz_findalcfrelst(alcfrelst_t** retalcfrl,size_t* retalcsz,size_t blksz)
{
    phymem_t* memp=&osphymem;
    alcfrelst_t* aftp=0,*aft4mbp=&memp->pmm_sz_lsth[6 -1];
    for(uint_t bj=0;bj<6;bj++)
    {
        if(memp->pmm_sz_lsth[bj].afl_sz==blksz)
        {
            aftp=&memp->pmm_sz_lsth[bj];
            *retalcfrl=aftp;
            *retalcsz=memp->pmm_sz_lsth[bj].afl_sz;
            goto next_step;
        }

    }

    aftp=0;
    *retalcfrl=0;
    *retalcsz=0;
next_step:
    if(aftp==0)
    {
        return 0;
    }
    if(list_is_empty_careful(&aftp->afl_emtplsth)==0)
    {
        return aftp;
    }
    if(list_is_empty_careful(&aftp->afl_fuemlsth)==0)
    {
        return aftp;
    }
    aftp=aft4mbp;

    if(list_is_empty_careful(&aftp->afl_emtplsth)==0)
    {
        return aftp;
    }
    return 0;
}

mmapdsc_t* hal_onalfl_findmapdsc(alcfrelst_t* allclh)
{

    mmapdsc_t* mp=0;
    if(list_is_empty_careful(&allclh->afl_fuemlsth)==0)
    {
        mp=((mmapdsc_t *)((char *)(allclh->afl_fuemlsth.next)-(unsigned long)(&((mmapdsc_t *)0)->map_list)));
        return mp;
    }

    if(list_is_empty_careful(&allclh->afl_emtplsth)==0)
    {
        mp=((mmapdsc_t *)((char *)(allclh->afl_emtplsth.next)-(unsigned long)(&((mmapdsc_t *)0)->map_list)));
        return mp;
    }
    return 0;
}

adr_t hal_onmapdsc_allcblks(u32_t mflg, u32_t mask,u32_t bitls,alcfrelst_t* aflp,alcfrelst_t* mvtoaflp)
{
    adr_t retadr=0;
    mmapdsc_t* map=0;
    uint_t bi=0;
    u32_t fg=0xffffff0f;
    if(bitls>32)
    {
        return 0;
    }
    map=hal_onalfl_findmapdsc(aflp);
    if(map==0)
    {
        return 0;
    }
    for(;bi<bitls;bi++)
    {
        if(((map->map_allcount>>bi)&1)==0)
        {
            goto next_step;
        }
    }
    bi=0xffffffff;
next_step:
    if(bi==0xffffffff)
    {
        return 0;
    }

    retadr=map->map_phyadr+(mvtoaflp->afl_sz*bi);
    if(retadr<map->map_phyadr||retadr>=map->map_phyadrend)
    {
        return 0;
    }
    map->map_allcount|=(1<<bi);
    map->map_flg&=fg;
    map->map_flg|=mflg;

    if((map->map_allcount&mask)==mask)
    {
        list_move_tail(&map->map_list,&mvtoaflp->afl_fulllsth);
        return retadr;
    }
    list_move_tail(&map->map_list,&mvtoaflp->afl_fuemlsth);
    return retadr;
}


adr_t hal_onalcfrel_allocblks(alcfrelst_t* allclh,alcfrelst_t* relaclh,size_t relalcsz)
{
    adr_t retadr=0;
    switch(relalcsz)
    {
        case (0x20000):
            retadr=hal_onmapdsc_allcblks((1<<4),(0xffffffff),(32),allclh,relaclh);
            break;
        case (0x40000):
            retadr=hal_onmapdsc_allcblks((2<<4),(0xffff),(16),allclh,relaclh);
            break;
        case (0x80000):
            retadr=hal_onmapdsc_allcblks((3<<4),(0xff),(8),allclh,relaclh);
            break;
        case (0x100000):
            retadr=hal_onmapdsc_allcblks((4<<4),(0xf),(4),allclh,relaclh);
            break;
        case (0x200000):
            retadr=hal_onmapdsc_allcblks((5<<4),(0x3),(2),allclh,relaclh);
            break;
        case (0x400000):
            retadr=hal_onmapdsc_allcblks((6<<4),(0x1),(1),allclh,relaclh);
            break;
        default:
            retadr=0;
            break;

    }
    return retadr;
}

adr_t hal_memallocblks_core(size_t blksz)
{
    phymem_t* memp=&osphymem;
    size_t retbsz=0;
    cpuflg_t cpufg;
    adr_t retadr=0;
    alcfrelst_t* allcflp=0;
    alcfrelst_t* aftp=0;
    hal_spinlock_saveflg_cli(&memp->pmm_lock,&cpufg);
    aftp=hal_onblksz_findalcfrelst(&allcflp,&retbsz,blksz);
    if(aftp==0||allcflp==0||retbsz==0)
    {
        retadr=0;
        goto return_step;
    }
    if(aftp->afl_sz!=retbsz&&aftp->afl_sz!=(0x400000))
    {
        retadr=0;
        goto return_step;
    }

    retadr=hal_onalcfrel_allocblks(aftp,allcflp,retbsz);
return_step:
    hal_spinunlock_restflg_sti(&memp->pmm_lock,&cpufg);
    return retadr;

}

adr_t hal_memallocblks(size_t blksz)
{
    if(blksz<(0x20000)||blksz>(0x400000))
    {
        return 0;
    }

    return hal_memallocblks_core(blksz);
}

mmapdsc_t* hal_free_findmapdsc(adr_t frebadr,alcfrelst_t* allclh)
{
    mmapdsc_t* mp=0;
    list_h_t* tmplst=0;
    if(list_is_empty_careful(&allclh->afl_fuemlsth)==0)
    {
        for (tmplst = (&allclh->afl_fuemlsth)->next; tmplst != (&allclh->afl_fuemlsth); tmplst = tmplst->next)
        {
            mp=((mmapdsc_t *)((char *)(tmplst)-(unsigned long)(&((mmapdsc_t *)0)->map_list)));
            if(frebadr<mp->map_phyadrend&&frebadr>=mp->map_phyadr)
            {
                return mp;
            }
        }

    }

    if(list_is_empty_careful(&allclh->afl_fulllsth)==0)
    {
        for (tmplst = (&allclh->afl_fulllsth)->next; tmplst != (&allclh->afl_fulllsth); tmplst = tmplst->next)
        {
            mp=((mmapdsc_t *)((char *)(tmplst)-(unsigned long)(&((mmapdsc_t *)0)->map_list)));
            if(frebadr<mp->map_phyadrend&&frebadr>=mp->map_phyadr)
            {
                return mp;
            }
        }

    }
    return 0;
}

bool_t hal_onmapdsc_freeblks(adr_t frebadr,u32_t mflg, u32_t mask,alcfrelst_t* aflp,alcfrelst_t* mvtoaflp)
{
    mmapdsc_t* map=0;
    uint_t bitnr;

    u32_t fg=0xffffff0f;

    map=hal_free_findmapdsc(frebadr,aflp);
    if(map==0)
    {
        return 0;
    }
    bitnr=(uint_t)(frebadr-map->map_phyadr)/(uint_t)(aflp->afl_sz);
    if(bitnr>31)
    {
        return 0;
    }

    if(((map->map_allcount>>bitnr)&1)!=1)
    {
       return 0;
    }

    map->map_allcount&=(~(1<<bitnr));
    if((map->map_allcount&mask)==0)
    {
        map->map_flg&=fg;
        map->map_flg|=mflg;
        list_move(&map->map_list,&mvtoaflp->afl_emtplsth);
    }

    return 1;
}

bool_t hal_onalcfrel_freeblks(adr_t frebadr,alcfrelst_t* allclh,alcfrelst_t* mvaflh,size_t relalcsz)
{
    bool_t retstus=0;
    switch(relalcsz)
    {
        case (0x20000):
            retstus=hal_onmapdsc_freeblks(frebadr,(6<<4),(0xffffffff),allclh,mvaflh);
            break;
        case (0x40000):
            retstus=hal_onmapdsc_freeblks(frebadr,(6<<4),(0xffff),allclh,mvaflh);
            break;
        case (0x80000):
            retstus=hal_onmapdsc_freeblks(frebadr,(6<<4),(0xff),allclh,mvaflh);
            break;
        case (0x100000):
            retstus=hal_onmapdsc_freeblks(frebadr,(6<<4),(0xf),allclh,mvaflh);
            break;
        case (0x200000):
            retstus=hal_onmapdsc_freeblks(frebadr,(6<<4),(0x3),allclh,mvaflh);
            break;
        case (0x400000):
            retstus=hal_onmapdsc_freeblks(frebadr,(6<<4),(0x1),allclh,mvaflh);
            break;
        default:
            retstus=0;
            break;

    }
    return retstus;
}

bool_t hal_memfreeblks_core(adr_t frebadr,size_t blksz)
{

    phymem_t* memp=&osphymem;
    bool_t retstus=0;
    cpuflg_t cpufg;

    alcfrelst_t* aftp=0,*mvtoaftp=&memp->pmm_sz_lsth[6 -1];
    hal_spinlock_saveflg_cli(&memp->pmm_lock,&cpufg);
    for(uint_t fi=0;fi<6;fi++)
    {
        if(memp->pmm_sz_lsth[fi].afl_sz==blksz)
        {
            aftp=&memp->pmm_sz_lsth[fi];
            goto next_step;
        }
    }
    aftp=0;
next_step:
    if(aftp==0)
    {
        retstus=0;
        goto return_step;
    }
    retstus=hal_onalcfrel_freeblks(frebadr,aftp,mvtoaftp,blksz);
return_step:
    hal_spinunlock_restflg_sti(&memp->pmm_lock,&cpufg);
    return retstus;
}

bool_t hal_memfreeblks(adr_t frebadr,size_t blksz)
{
    if(frebadr==0||blksz<(0x20000)||blksz>(0x400000))
    {
        return 0;
    }
    return hal_memfreeblks_core(frebadr,blksz);
}

void testblkalloc()
{
    size_t ablksz=0;
    adr_t retadr=0;
    for(uint_t bli=0;bli<6;bli++)
    {
        ablksz=(0x20000)<<bli;
        for(uint_t i=0;i<2;i++)
        {
            retadr=hal_memallocblks(ablksz);
            if(retadr==0)
            {
                hal_sysdie("NOT MEMBLK;return NULL");
            }
            printfk("allocblksz:%x return adrr:%x \n\r",ablksz,retadr);
        }
    }
    return;
}


void test_blkmm()
{
    adr_t retadra[14],retadr=0,retadrold=0,retadrend=0;
    size_t ablksz=0;bool_t retstus=0;
    retadrold=hal_memallocblks((0x20000));
    if(retadrold==0)
        hal_sysdie("NOT MEMALLOCBLKold;return NULL");
    if(hal_memfreeblks(retadrold,(0x20000))==0)
        hal_sysdie("NOT MEMFREEBLKold;return FALSE");
    for(uint_t bli=0;bli<6;bli++)
    {
        ablksz=(0x20000)<<bli;
        for(uint_t i=0;i<14;i++)
        {
            retadr=hal_memallocblks(ablksz);
            if(retadr==0)
                hal_sysdie("NOT MEMALLOCBLK;return NULL");
            printfk("allocblksz:%x return adrr:%x \n\r",ablksz,retadr);
            retadra[i]=retadr;
        }
        for(uint_t j=0;j<14;j++)
        {
            retstus=hal_memfreeblks(retadra[j],ablksz);
            if(retstus==0)
                hal_sysdie("NOT MEMFREEBLK;return FALSE");
            printfk("freeblksz:%x free adrr:%x \n\r",ablksz,retadra[j]);
        }
    }
    retadrend=hal_memallocblks((0x20000));
    if(retadrend==0)
        hal_sysdie("NOT MEMALLOCBLKend;return NULL");
    if(retadrend==retadrold)
        printfk("TEST BLKMM OK!!\n\r");
    return;
}
