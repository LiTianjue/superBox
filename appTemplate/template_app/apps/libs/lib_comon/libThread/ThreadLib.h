#ifndef LIB_THREAD_H
#define LIB_THREAD_H

//创建一个线程
// 传入 线程优先级，线程栈大小，入口函数，传入的参数
int ThreadCreate();


void ThreadSetName(const char *name);



#endif
