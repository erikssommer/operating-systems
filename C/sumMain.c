#include <stdio.h>

extern int sum();

int main(void)
{
  int summ;
  summ = sum();
  printf("Sum = %d \n",summ);
}