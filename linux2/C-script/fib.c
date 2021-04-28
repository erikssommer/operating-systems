#include <stdio.h>

int last = 46; /* global */

int fibo()
{
   int i;
   int a=1,b=1,c;
   /* Har allerede de første to */
   for(i=3; i <= last; i++)
   {
      c = a;      /* b skal etterpå få denne */
      a = a + b;  /* Neste tall */
      b = c;      /* b forstat nest siste tall */
   }
   return(a);
}


int main (void) {
    int f;
    printf("Kaller fibo()...\n");
    f = fibo();
    printf("Fibonacci-tall nr %d: %d\n",last, f);
}