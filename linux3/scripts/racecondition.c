#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

int svar = 0;

extern void enlinje();

void *inc()
{
   printf("Starter; svar verdi: %d\n", svar);

   for (int i = 0; i < 10000000; i++)
   {
	enlinje();
   }

   printf("Avslutter; svar verdi: %d\n", svar);
}


int main()
{
    pthread_t thread1, thread2;

    /* Lager uavhengige threads som utfører inc-funksjonen */

    pthread_create( &thread1, NULL, inc, NULL);
    pthread_create( &thread2, NULL, inc, NULL);

    /* Venter med join til begge tråder er ferdige */

    pthread_join( thread1, NULL);
    pthread_join( thread2, NULL);

    printf("Main avslutter; svar verdi: %d\n", svar);
    exit(0);
}