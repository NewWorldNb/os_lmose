# 1 "../lib/printf.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../lib/printf.c"
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
# 2 "../lib/printf.c" 2
uint_t strlen(char* str_s)
{
 sint_t chaidx=0;
 while(*str_s!=0)
 {
  str_s++;
  chaidx++;
 }
 return chaidx;
}

int printf(const char* fmt,...)
{
    int rets=-1;
    va_list ap;
    __builtin_va_start(ap,fmt);
 char* buf=(char*)mallocblk(0x1000);
 if(buf==0)
 {
        return -1;
 }
    devid_t dev;
    dev.dev_mtype=15;
    dev.dev_stype=0;
    dev.dev_nr=0;
    hand_t fd=open(&dev,(0x3<<0x4)|1,0);
    if(fd==-1)
    {
        rets=-1;
        goto res_step;
    }
 vsprintf(buf,fmt,ap);
 if(write(fd,buf,strlen(buf),0)==(-1))
 {
        rets=-1;
        goto res_step;
 }
 close(fd);

 rets=0;
res_step:


 if(mfreeblk(buf,0x1000)==(-1))
 {
        rets=-1;
 }

    __builtin_va_end(ap);
 return rets;
}

char* strcopy(char* buf,char* str_s)
{
 while(*str_s)
 {
  *buf=*str_s;
  buf++;
  str_s++;
 }
 return buf;
}

void vsprintf(char* buf,const char* fmt,va_list args)
{
 char* p =buf;
 va_list next_arg=args;
 while(*fmt)
 {
  if(*fmt != '%')
  {
   *p++ = *fmt++;
   continue;
  }
  fmt++;
  switch(*fmt)
  {
   case 'x':
    p=number(p,__builtin_va_arg(next_arg,uint_t),16);
    fmt++;

    break;
   case 'd':
    p=number(p,__builtin_va_arg(next_arg,uint_t),10);

    fmt++;
    break;
          case 's':
          p=strcopy(p,(char*)__builtin_va_arg(next_arg,uint_t));

          fmt++;
          break;
   default:
    break;
  }
 }
 *p=0;
 return;
}

char* number(char* str,uint_t n, sint_t base)
{
 register char *p;
 char strbuf[36];
    p = &strbuf[36];
    *--p = 0;
 if(n == 0)
    {
           *--p = '0';
    }
    else
    {
         do
         {
               *--p = "0123456789abcdef"[n % base];
         }while( n /= base);
    }
    while(*p!=0)
    {
  *str++=*p++;
 }
    return str;
}
