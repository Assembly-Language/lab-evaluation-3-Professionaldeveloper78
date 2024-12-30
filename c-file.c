#include <stdio.h>
#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int p1 ,int *p2);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arry[] = {1,8,6,0,6,8,6,3};
    int a1 = 0;
    printf("assembly proc calling from  from C! \n");
getch();
    
    
    asmfunc(arry,&a1);
   
    getch();
    
    
    printf("\nTotal no of non zero's are:  %d\n",a1);        // printing in c
    
  
    
    return 0;
}