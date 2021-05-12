#include <stdio.h>

int array[40000][40000];
int main(){
    int a,b;
    for(a = 0;a < 40000;a++){
        for(b = 0;b < 40000;b++){
            array[a][b] = 5; // Her har det stor forsjell på hastigheten om a og b bytter plass.
            // array[b][a] = 5
            // Det utgjør ca. 20 sekunder i regnetid
            // Dette er på grunn av lite bruk av cache ettersom verdiene ikke ligge etter hverandre i cache lengre
        }
    }
}