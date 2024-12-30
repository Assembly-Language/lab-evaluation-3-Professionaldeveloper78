
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int arr,int* a);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arr[5]={4,5,9,7,3};
    int a=0;
    printf("The array is");
    for(int i=0;i<6;i++){
        printf("%d",arr[i]);
        printf(" ");
    }
        printf("\n");

    
getch();

    
    asmfunc(arr,a); //assembly proc calling
   
   getch();
    
    
    printf("The total positive number will be  %d",a); // printing in c
    
  
    
    return 0;
}