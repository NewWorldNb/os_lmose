# os_lmose


_hal文件夹包含了内核硬件层的代码
_kernel文件夹包含了内核功能层的代码
_include文件夹包含了一大堆头文件，内部也分hal、kernel文件夹，其中xxx_t.h文件用于存放定义的数据结构，xxxt.h用于存放一些声明的函数原型
_drivers文件夹包含了驱动程序实例代码
_build是MAKEFILE的编译路径，里面有一些小的makefile，包括了完成自动化编译的内容
_task文件夹内含一个任务主函数
_script文件夹作为一个脚本文件夹，里面有一个krnlobjs.S只作预处理操作，另一个lmemknllink.S文件会被pretreatment调用GCC进行处理产生内核的链接脚本
