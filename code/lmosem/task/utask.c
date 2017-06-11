#include "stdio.h"
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

