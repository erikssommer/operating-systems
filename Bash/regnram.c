#include <stdio.h>

int array[102400];

void main(){
   int i,k;
   for(k=0;k<2000000;k++){
      for(i=0;i<1024;i++){
         array[i]=i;
      }
   }
}
