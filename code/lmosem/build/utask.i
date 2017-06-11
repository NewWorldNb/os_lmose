# 1 "../task/utask.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../task/utask.c"
# 1 "../include/libinc/stdio.h" 1



# 1 "../include/libinc/libc.h" 1




# 1 "../include/libinc/libtypes.h" 1


typedef long sint_t;
typedef unsigned long uint_t;
typedef sint_t sysstus_t;
typedef sint_t hand_t;
typedef void* buf_t;
typedef unsigned long size_t;

typedef struct s_TIME
{

    uint_t year;
    uint_t mon;
    uint_t day;
    uint_t date;
    uint_t hour;
    uint_t min;
    uint_t sec;

}times_t;
# 6 "../include/libinc/libc.h" 2
# 1 "../include/libinc/lmosemapi.h" 1



# 1 "../include/libinc/lapimm.h" 1







void* api_mallocblk(size_t blksz);
sysstus_t api_mfreeblk(void* fradr,size_t blksz);
void test_api();
# 5 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapithread.h" 1







hand_t api_exel_thread(void* file,uint_t flgs);
void api_exit_thread();
hand_t api_retn_threadhand(void* tname);
sysstus_t api_retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t api_set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
# 6 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapiopen.h" 1







hand_t api_open(void* file,uint_t flgs,uint_t stus);
# 7 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapiclose.h" 1







sysstus_t api_close(hand_t fhand);
# 8 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapiread.h" 1







sysstus_t api_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
# 9 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapiwrite.h" 1







sysstus_t api_write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
# 10 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapiioctrl.h" 1
# 9 "../include/libinc/lapiioctrl.h"
sysstus_t api_ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
# 11 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapilseek.h" 1







sysstus_t api_lseek(hand_t fhand,uint_t lofset,uint_t flgs);
# 12 "../include/libinc/lmosemapi.h" 2
# 1 "../include/libinc/lapitime.h" 1


sysstus_t api_time(buf_t ttime);
# 13 "../include/libinc/lmosemapi.h" 2
# 7 "../include/libinc/libc.h" 2

# 1 "../include/libinc/libmm.h" 1


void* mallocblk(size_t blksz);
sysstus_t mfreeblk(void* fradr,size_t blksz);
# 9 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libthread.h" 1


hand_t exel(void* file,uint_t flgs);
void exit();
hand_t pid(void* tname);
sysstus_t retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
# 10 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libopen.h" 1


hand_t open(void* file,uint_t flgs,uint_t stus);
# 11 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libclose.h" 1


sysstus_t close(hand_t fhand);
# 12 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libread.h" 1


sysstus_t read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
# 13 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libwrite.h" 1


sysstus_t write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
# 14 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libioctrl.h" 1


sysstus_t ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
# 15 "../include/libinc/libc.h" 2
# 1 "../include/libinc/liblseek.h" 1


sysstus_t lseek(hand_t fhand,uint_t lofset,uint_t flgs);
# 16 "../include/libinc/libc.h" 2
# 1 "../include/libinc/libtime.h" 1


sysstus_t time(times_t* ttime);
sysstus_t settime(times_t* ttime);
sysstus_t gettime(times_t* ttime);
sysstus_t synsecalarm(uint_t sec);
# 17 "../include/libinc/libc.h" 2
# 1 "../include/libinc/printf.h" 1


typedef __builtin_va_list va_list;




int printf(const char* fmt,...);
char* strcopy(char* buf,char* str_s);
void vsprintf(char* buf,const char* fmt,va_list args);
char* number(char* str,uint_t n, sint_t base);
# 18 "../include/libinc/libc.h" 2
# 5 "../include/libinc/stdio.h" 2
# 1 "../include/libinc/libdev.h" 1
# 60 "../include/libinc/libdev.h"
typedef struct s_DEVID
{
    uint_t dev_mtype;
    uint_t dev_stype;
    uint_t dev_nr;
}devid_t;
# 6 "../include/libinc/stdio.h" 2
# 2 "../task/utask.c" 2
void task1_main()
{
    int i=0;

    times_t timet;

    for(;;)
    {
      i++;

      printf("task1 run %x \n\r",i);
      time(&timet);
      printf("year:%d mon:%d date:%d hour:%d min:%d sec:%d\n\r",
      timet.year,timet.mon,timet.date,timet.hour,timet.min,timet.sec);
    }
    return;
}

void task0_main()
{
    times_t timet;
    timet.year=13;
    timet.mon=10;
    timet.day=2;

    timet.date=1;
    timet.hour=9;
    timet.min=34;
    timet.sec=00;
    int i=0;
    for(;;)
    {
    i++;
    printf("task2 run %x \n\r",i);
    gettime(&timet);
    printf("year:%d mon:%d date:%d hour:%d min:%d sec:%d\n\r",
     timet.year,timet.mon,timet.date,timet.hour,timet.min,timet.sec);
    }

    return;
}
