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

I dette tilfellet er det neste leddet rekken summen av de to foregående og regneoperasjonene må gjøres sekvensielt
basert på de foregående resultatene. Dermed vil det ikke gi noen gevinst om man bruker flere uavhengige tråder, disse
trådene måtte isåfall vente på hverandres resultater og beregningen ville tatt enda lenger tid enn for en enkelt tråd (
matematisk finnes det formler for summen av N tall (N(N+1)/2) og for det N’te tallet i Fibonacci-rekken, men da vil man
heller ikke utnytte flere CPUer).

## Internminne

### Oppgave 4a

10^3 = 1_000

10^6 = 1_000_000

2^10 = 1_024

2^20 = 1_048_576

### Oppgave 4b

K (kilo) = 10^3

Gi (gibi) = 2^30

Ki (kibi) = 2^10

Mi (mebi) = 2^20

G (giga) = 10^9

M (mega) = 10^6

### Oppgave 4c

Registere er en del av CPUen og det kan ta ca ett nanosekund eller mindre å flytte data mellom dem. Fra cache (som er
SRAM som registerne) kan det ta 1-5 nanosekunder (avhengig om det er L1, L2 eller L3). Fra RAM kan det ta omtrent 10
nanosekunder eller mer. Diskaksess er svært mye langsommere og det kan ta ett millisekund eller mer (noe raskere med
NVMe SSD)

### Oppgave 4d

MMU (Memory Management Unit) oversetter de logiske/virituelle adressene som CPUen bruker til fysiske RAM-adresser før de
sendes ut på databussen for å lese fra eller skrive til RAM. MMU må implementeres i hardware fordi oversettelsen må skje
ekstremt raskt. Ellers ville overhead bli altfor stort hvis CPUen selv skulle bruke klokkesykler til å utføre de
nødvendige operasjonene. Da ville i praksis ta altfor lag tid siden det vanligvis er mange minneoppslag i vanlig kode.

### Oppgave 4e

Figuren viser prinsippet for hvordan en virituell adresse blir oversatt til en fysisk adresse av MMU. En 16-bits
virituell adresse kommer inn og de fire første bit'ene tolkes som indeks i page-tabellen(eksempelet bruker en 4-KB page
størrelse). De fire første bit'en = 2 og peker derfor på page-entry nr.2. Denne inneholder 110 = 6 og den fysiske siden
ligger derfor i frame nr 6. 0010 i den innkommende addressen blir erstattet med 110 og adressen 8196 endres da til den
utgående fysiske adressen 24580. (Offsett er 100 = 4 og 8196 = 2*4096 + 4 = 8196. Utgående blir da 6*4096 + 4 =24580)
4096 er første byte i page 1 og adressen 6666 ligger i denne siden. Men page nr 1 peker på frame nr 1, så den fysiske
adressen blir den samme, altså 6666.

### Oppgave 7f

VIrituell page nr 7 er tom og har ingen referanse til en fysisk frame. Det betyr at denne fysiske siden ikke fines i RAM
men ligger på disk. Det ville derfor inntreffe en page fault og siden måtte hentes inn fra disk før forespørselen kunne
oppfylles.

## PowerShell

### Oppgave 5a

Lister alle prosesser som kjører nå og som har blitt startet de siste 50 minuttene

```PowerShell
Get-Process | Where-Object { $_.StartTime -gt (get-date).AddMinutes(-50) }
```

### Oppgave 5b

Se scripts/creationtime.ps1










