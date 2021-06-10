#include <stdio.h>

int main() {
    int i, sum = 0;
    int N = 40000;

    for(i=1; i<=N; i++){
        sum += i;
    }

    printf("Sum: %d\n", sum);
}