# Eksamen våren 2018

## Linux kommandolinje

### Oppgave 1a

Flytter filen /tmp/fil.txt til katalogen du står i:

```Bash
mv /tmp/fil.txt .
```

### Oppgave 1b

Kun brukeren haugerud kan skrive til filen:

-rw-r----- 1 haugerud drift 9 Sep 5 15:53 /tmp/secret.txt

### Oppgave 1c

```Bash
tail -n 5 index.html | grep name | cut -d\" -f 4
```

### Oppgave 1d

Du har en fil biler med følgende innhold:

```Bash
$ cat biler
student bmw 500000
haugerud berlingo 150000
kyrre elbil 90000
```

Hvilken Linux-kommando fører til følgende resultat?

```Bash
$ kommando
kyrre elbil 90000
haugerud berlingo 150000
student bmw 500000
```

Svar:

Sortert numerisk etter tredje kolonne

```Bash
sort -n -k 3 biler
```

## Bash scripting

### Oppgave 2

Se /scripts/proc.sh

Det er totalt 100 jiffies pr sekund og 8 CPUer. Det betyr at fjerde kolonne, som er idle, får så godt som alle jiffies
som igjen betyr at det er tilnærmet ingen CPU-bruk på serveren.

## Prosesser

### Oppgave 3a

Et multitasking operativsystem får det til å se ut som om mange prosesser kan kjøre samtidig ved å dele opp tiden i små
biter og la hver prosess som kjører få en bit CPU-tid (størrelsesorden et hundredelt sekund) av gangen i en Round Robin
kø. En hardware timer sender jevnlig et interrupt-signal som gjør at OS kan ta over kontrollen over CPUen. Dermed unngås
det at vanlige brukerprosesser tar over styringen selvom de kjører instruksjoner direkte på CPUen.

### Oppgave 3b

Linux OS lar de fem prosessene bytte på å kjøre på de fire CPUene slik at de i gjennomsnitt får kjøre like mye. Byttene
skjer ganske ofte, slik at fordelingen blir rettferdig også over korte tidsrom som 5-10 sekunder. Kommandoen top vil
vise omtrent 80% CPU-tid for hver av prosessene (men dette vil variere litt og ligge mellom 70% og 90%),

### Oppgave 3c

5 minutter

### Oppgave 3d

11111 = 2^0 + 2^1 + 2^2 + 2^3 + 2^4 = 31

### Oppgave 3e

4 byte = 32 bit, 2^31 - 1 = ca. 2 milliarder. (2^10 = 1024 og 2^30 ~ 10^9, helt presist er 2^31 - 1 = 2147483647)

### Oppgave 3f

Scriptet sum.c (se script/sum.c) summerer alle tallene fra 1 til 40_000 og skriver svaret ut til slutt.

Kompilere: gcc sum.c

Kjøre: ./a.out

### Oppgave 3g

Sluttsvaret som regnes ut øker når variabelen N øker. For N = 50000 er svaret ca 1.2 milliarder og det øker til 1.8
milliarder for N = 60000. Dermed blir svaret en god del større enn 2 milliarder for N = 70000. Dermed er det ikke plass
til å lagre sluttresultatet med 4 byte, beregningen feiler, gir bit-owerflow og et tilfeldig resultat. I dette tilfellet
er svaret opplagt galt siden det er negativt.

### Oppgave 3h

Et enkelt kompilert C-program (som ikke benytter tråder) består av en serie instruksjoner som må utføres en for en. Et
OS vet ikke hva instruksjonene utfører og vil ikke kunne fordele kode i blinde på de fire CPUene for å utnytte den
ekstra prosessorkraften. Dermed må instruksjonene i programmet lastes inn på en enkelt CPU og kjøres der. Hele prosessen
kan flyttes til en annen CPU under kjøring, men kun en CPU av gangen kan kjøre koden)

### Oppgave 3i

For å utnytte de fire CPUene må programmet endres slik at det bruker tråder og for å få til det må koden
parallelliseres, slik at utregningene kan utføres samtidig. Oppgaven kan deles i fire like store deler der hver tråd
regner ut sin del. Den første tråden kan regne ut summen fra 1 til 10000, den andre fra 10001 til 20000 og så videre.
Til slutt legges svaret fra de fire trådene sammen. For et C-program kunne parallelliseringen gjøres med pthreads.

### Oppgave 3j

I dette tilfellet er det neste leddet rekken summen av de to foreg˚aende og regneoperasjonene m˚a gjøres sekvensielt
basert p˚a de foreg˚aende resultatene. Dermed vil det ikke gi noen gevinst om man bruker flere uavhengige tr˚ader, disse
tr˚adene m˚atte is˚afall vente p˚a hverandres resultater og beregningen ville tatt enda lenger tid enn for en enkelt
tr˚ad (matematisk finnes det formler for summen av N tall (N(N+1)/2) og for det N’te tallet i Fibonacci-rekken, men da
vil man heller ikke utnytte flere CPUer).























