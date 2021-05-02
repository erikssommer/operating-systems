## Eksamen våren 2020

### Oppgave 1

AND - port

### Oppgave 2

A * B + B

### Oppgave 3

B

### Oppgave 4

```Java
class Tread {
    int x;
    static int y;
}
```

Ved flere tråder vil det være en felles variabel y og en variabel x i hver tråd

### Oppgave 5

OS - kjernen er ikke direkte involvert i hyperthreading

### Oppgave 6

**gcc** kompilerer C-programmet med gcc

**-O** er en opsjon som optimaliserer med tanke på at programmet skal utføres raskest mulig

**sum.c** er filen som inneholder C-programmet

**./a.out** er en kjørbar fil som du får etter kompilering med gcc

**time** er en måte å kjøre programmet for å ta tiden:

    - Real: Den relle tiden det tar å kjøre programmet
    - User: Tid brukt av programmet i user-mode
    - System: Tid brukt av programmet i kernel-mode
    - Prosent: Hvor stor andel av CPU'en programmet bruker under kjøringen

### Oppgave 7

```Bash
linux1$ for i in {1..4}
> do
> time ./a.out
> done
Real:1.814 User:1.812 System:0.000 99.90%
Real:1.797 User:1.792 System:0.000 99.73%
Real:1.826 User:1.816 System:0.012 100.09%
Real:1.836 User:1.832 System:0.000 99.77%

linux1$ for i in {1..4}
> do
> time ./a.out&
> done
[1] 1329
[2] 1330
[3] 1332
[4] 1334
linux1$
Real:1.803 User:1.796 System:0.000 99.63%
Real:1.816 User:1.812 System:0.000 99.75%
Real:1.854 User:1.828 System:0.020 99.69%
Real:1.866 User:1.848 System:0.012 99.67%
```

Den for-løkken kjører og tar tiden på a.out fire ganger, men hver av kjøringene fullføres før den neste starter. Den
andre for-løkken gjør det samme, men i dette tilfellet startes a.out som en bakgrunnsprosess slik at fire instanser av
programmet kjøres i parallell på systemet. De får hver sin cpu, som kan sees av 100% cpu-bruk. Dermed vil for den siste
kjøringen alle de fire prosessene være ferdige etter ca. 1.8 sekunder mens totaltiden for den første for-løkken er fire
ganger så lang, ca. 7.2 sekunder.

### Oppgave 8

```Bash
linux1$ gcc -O sum.c
linux1$ time ./a.out

Real:1.809 User:1.804 System:0.004 99.95%

linux1$ for i in {1..4}
> do
> time ./a.out &
> done
Real:1.819 User:1.812 System:0.000 99.59%
Real:1.833 User:1.812 System:0.004 99.08%
Real:1.833 User:1.812 System:0.000 98.85%
Real:1.855 User:1.836 System:0.004 99.21%

linux1$ for i in {1..6}; do time ./a.out & done
Real:2.510 User:1.800 System:0.000 71.70%
Real:2.617 User:1.800 System:0.000 68.77%
Real:2.661 User:1.804 System:0.008 68.09%
Real:2.686 User:1.828 System:0.004 68.21%
Real:2.806 User:1.800 System:0.008 64.42%
Real:2.832 User:1.840 System:0.000 64.98%

linux1$ for i in {1..8}; do time ./a.out & done
Real:3.553 User:1.816 System:0.000 51.10%
Real:3.594 User:1.844 System:0.000 51.30%
Real:3.625 User:1.828 System:0.004 50.53%
Real:3.623 User:1.812 System:0.016 50.45%
Real:3.642 User:1.820 System:0.008 50.19%
Real:3.650 User:1.812 System:0.004 49.75%
Real:3.671 User:1.820 System:0.008 49.80%
Real:3.746 User:1.836 System:0.004 49.11%
```

1. I den første kjøringen ser vi at hver prosess får 100% av en CPU og at tiden er 1.8 sekunder
2. Her ser vi at prosessene får ca. 69% CPU-tid og det tyder på at de 6 prosessene blir fordelt på 4 CPU'er. Totalt er
   det behov for 6x1.8 CPU-sek. Deles dette på 4 CPU'er blir svaret 6x1.8/4 = 2.7 sek som man ser er omtrent tiden de 6
   prosessene bruker hver.
3. I dette tilfellet får hver prosess i snitt 50% cpu-tid og hver prosess bruker da dobbelt så lang tid, dvs 2x1.8 = 3.6
   sekunder.

### Oppgave 9

```Bash
linux2$ gcc -O sum.c
linux2$ time ./a.out

Real:0.614 User:0.612 System:0.000 99.63%

linux2$ for i in {1..4}; do time ./a.out& done
Real:0.634 User:0.628 System:0.000 99.06%
Real:0.633 User:0.628 System:0.000 99.15%
Real:0.634 User:0.628 System:0.000 98.97%
Real:0.637 User:0.624 System:0.000 97.98%

linux2$ for i in {1..6}; do time ./a.out& done
Real:0.624 User:0.620 System:0.000 99.41%
Real:0.623 User:0.620 System:0.000 99.48%
Real:0.908 User:0.904 System:0.000 99.58%
Real:0.911 User:0.900 System:0.000 98.81%
Real:0.914 User:0.912 System:0.000 99.83%
Real:0.914 User:0.908 System:0.000 99.33%

linux2$ for i in {1..8}; do time ./a.out& done
Real:1.182 User:1.180 System:0.000 99.82%
Real:1.186 User:1.180 System:0.000 99.48%
Real:1.188 User:1.184 System:0.000 99.70%
Real:1.186 User:1.184 System:0.000 99.80%
Real:1.187 User:1.184 System:0.000 99.73%
Real:1.187 User:1.184 System:0.000 99.75%
Real:1.188 User:1.184 System:0.000 99.69%
Real:1.192 User:1.176 System:0.000 98.69%
```

Her kjører programmet på en annen type cpu som er raskere enn den forrige. Vi ser i at den siste kjøringen med 8 cpu'er
så er den reelle tiden for hver prosess ca. 1.2 sekunder, omtrent dobbelt så lang tid som i den første kjøringen. Men
time raporterer også at de 8 prosessene hver får 100% cpu-tid. Dette må være et resultat av at systemet har 4
hyperthreading CPU'er som operativsystemet behandler som om det var 8 uavhengige regneenheter.

1. I den første kjøringen ser vi at hver prosess får 100% av en cpu og at tiden det tar er 0.6 sekunder.
2. Her ser vi at hver prosess får 100% cpu-tid, men det er fordi OS 'ser' 8 uavhengige CPU-er. Først kjører jobbene på 6
   av de 8 cpu'ene som os 'ser' og de to som da kjører på helt egen kjerne blir ferdig etter 0.6 sekunder. De fire som
   deler kjerne med hyperthreading har da bare kommet halvveis og kjører så ferdig de 0.3 sekundene de har igjen på hver
   sin selvstendige kjerne.
3. I dette tilfellet vil det være to prosesser på hver hyperthreading kjerne. Dermed må de to dele på ALU'en når de
   regner og dette gjør at det tar dobbelt så lang tid, 1.2 sekunder, som når det var én prosess per kjerne som i den
   første kjøringen.

### Oppgave 10

```Bash
linux3$ gcc -O sum.c
linux3$ time ./a.out

Real:2.282 User:2.280 System:0.000 99.90%

linux3$ for i in {1..4}; do time ./a.out& done
Real:2.283 User:2.280 System:0.000 99.85%
Real:2.291 User:2.280 System:0.000 99.53%
Real:2.293 User:2.280 System:0.000 99.41%
Real:2.294 User:2.280 System:0.000 99.41%

linux3$ for i in {1..6}; do time ./a.out& done
Real:2.283 User:2.280 System:0.000 99.85%
Real:2.283 User:2.280 System:0.000 99.85%
Real:2.284 User:2.280 System:0.000 99.82%
Real:2.295 User:2.280 System:0.000 99.36%
Real:2.294 User:2.280 System:0.000 99.39%
Real:2.294 User:2.280 System:0.000 99.38%

linux3$ for i in {1..8}; do time ./a.out& done
Real:2.284 User:2.280 System:0.000 99.84%
Real:2.284 User:2.280 System:0.000 99.81%
Real:2.284 User:2.280 System:0.000 99.82%
Real:2.283 User:2.280 System:0.000 99.85%
Real:2.286 User:2.280 System:0.000 99.72%
Real:2.289 User:2.280 System:0.000 99.59%
Real:2.287 User:2.280 System:0.000 99.68%
Real:2.294 User:2.280 System:0.000 99.37%
```

1. I den første kjøringen ser vi at hver prosess får 100% av en CPU og at tiden er ca. 2.3 sekunder.
2. Prosessene får fortsatt hver sin kjerne, 100% CPU og hver jobb tar 2.3 sekunder.
3. Prosessene får fortsatt hver sin kjerne, 100% CPU og hver jobb tar 2.3 sekunder.

Det betyr at det på denne serveren er 8 (eller flere) uavhengige regne-enheter (ALUer/CPUer/kjerner). Vi kan ikke
avgjøre om disse 8, eller flere, kjernene er hyperthreading eller ikke, siden det ikke scheduleres mer enn en prosess
per kjerne.

### Oppgave 11

Dockerfile som lager en container med default versjon av ubuntu og med apache2 installert, og som gjør slik at
filen index.html legges i /var/www/html på containeren. Sørger også for at apache startes når containeren startes.
```Dockerfile
FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install apache2
COPY index.html /var/www/html
CMD ["/usr/sbin/apachect1","-D","FOREGROUND"]
```


### Oppgave 12

Docker-kommando som med utgangspunkt i dockerfilen i forrige oppgave bygger et docker-image med navn ubuntuA:

```Bash
docker build -t ubuntuA .
```

eller

```Bash
docker image build -t ubuntuA .
```

Det siste argumentet er PATH til der hvor Dockerfile ligger. Så hvis man bruker '.' i kommandoen må man stå i samme
mappe som Dockerfile ligger. Men man kan også stå i en annen mappe om man angir PATH til der hvor Dockerfile ligger.

### Oppgave 13

Docker-kommando som bruker ubuntuA-imaget du bygde i forrige oppgave til å starte i bakgrunnen en container som
svarer på web-tilkoblinger på port 5555 og viser siden index.html:

```Bash
docker container run -p 5555:80 -d ubuntuA
```

Filen blir inkludert i imaget når det bygges. Om man endrer filen i ettertid, vil den ikke endres i containere
som er startet med dette image'et.



