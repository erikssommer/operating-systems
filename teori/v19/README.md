# Eksamen våren 2019

## Datamaskinarkitektur

### Oppgave 1

AND port

### Oppgave 2

En OR-port

### Oppgave 3

A * B + !A * B

### Oppgave 4

A * B + !A * B = (A + !A) * B = 1 * B = B

### Oppgave 5

Prosseseringen av en krets av porter går veldig raskt, men det tar tid før resultatet er klart og så må mellomlages
før neste operasjon. Resultatet kan være input til neste beregning, men før det lagres må man være sikker på at
beregningen er helt ferdig. Uten en klokke som synkroniserer dette, vil resultatene ukontrolert flyte over i neste
beregning. Klokken styrer vipper (som er satt sammen av en master og en slave lås) slik at de venter med å gi
resultatet videre til man er helt sikker på at kretsen har regnet seg ferdig. I eksempelet med studenter som var låser
(latches), så man at informasjonen fløt ukontrolert og usynkront om man ikke organiserte dem to og to med en klokke
som sørget for overføring av informasjon med daste intervaller.

### Oppgave 6

Maskinkoden for ```add %rax, %rbx``` er en binær streng som inneholder et nummer som sier hvilken instruksjon som skal
utføres (add) og hvilke to registere som skal inngå i operasjonen. Instruksjonsdekoderen tolker alle bit i
instruksjonen og setter alle nødvendige kontroll-bit i ALUen på en slik måte at verdien i registerne 'rax' og 'rbx'
sendes inn til ALUen, den legger sammen disse to verdiene og resultatet sendes til register 'rbx'

## Linux kommandolinje

### Oppgave 7

Lager en ny katalog
```Bash
mkdir
```

### Oppgave 8

.. (to punktum) refererer til mappen over den du står i

### Oppgave 9

Følgene kommando gir: hei du der
```Bash
echo "hei du der" | sort | grep du
```

### Oppgave 10

```Bash
find /home/hh/div -type d
```
Betyr fin alle mapper under 'home/hh/div' inkludert undermapper. Fra manualsiden ser vi at '-newermt' betyr at den
slår til hvis modifisering av mappen er nyere enn det angitte tidspunktet. '-ls' er en action som
'list current file in ls -dils format on standard output'. Kommandoen gir derfor en listing av alle mapper som har
blitt endret etter tidspunktet 21 Apr 2019 00:00

## Bash-scripting

### Oppgave 11

```Bash
#! /bin/bash

for fil in *.cnf
do
  python runML.py $fil &
done
```

### Oppgave 12

Siden serveren har 32 uavhengige CPUer, vil de 30 jobbene fordeles på 30 CPUer, hver enkelt jobb og dermed hele jobben
tar da ca en time siden de kjører i paralell (&)

### Oppgave 13

Hun kan oppnå dette ved å starte en screen-session på research3, slik som dette:

```Bash
screen -S run
```

Deretter kan hun starte scriptet i dette vinduet vinduet. Nå kan hun logge ut og screen vil fortsette i bakgrunnen
(kan også gå ut av screen med CTRL-A CTRL-D, men det er ikke nødvendig). Så kan dun hjemmefra kople seg til research3
med ssh og åpne sin screen-session med

```Bash
screen -r run
```

Om hun ikke ga sin screen session et navn med -S når hun startet den, kan hun ved hjelp av

```Bash
screen -ls
```

finne sin session og så bruke det navnet med -r (eller bare bruke -r om det kun finnes en eneste screen-session).
Et alternativ er å starte scriptet på research3 med:

```Bash
run.sh > run.log 2>&1 &
```

som legger både output og stderr i filen run.log. Deretter kan hun logge seg på med ssh hjemmefra og se output i
filen run.log

Hvis hun lokalt (fra en annen host på jobben) logger seg på med ssh, kan det være nødvendig å legge til '</dev/null',
ellers kan i noen tilfeller bakgrunnsjobben bli stoppet når ssh-tilkoblingen tas ned:

```Bash
run.sh </dev/null > run.log 2>&1 &
```

### Oppgave 14

```Bash
#! /bin/bash

(( dtot=0 ))
(( ftot=0 ))
(( ltot=0 ))

for fil in $(find .)
do
  if [ -L "$fil" ]; then
      (( ltot += 1 ))
  elif [ -f "$fil" ]; then
      (( ftot += 1 ))
  elif [ -d "$fil" ]; then
      (( dtot += 1))      
  fi
done

echo Filer: $ftot
echo Kategorier: $dtot
echo Linker: $ltot
```

Det er viktig å ha link-testen -L først, ellers vil linker bli talt opp som fil eller mappe etter hva de peker på.
Litt pirk: Et problem med denne løsningen er at den ikke fungerer for filer som har mellomrom i navnet.
Følgende løsning:

```Bash
#! /bin/bash

ltot=$(find . -type l | wc -l)
dtot=$(find . -type d | wc -l)
ftot=$(find . -type f | wc -l)

echo Filer: $ftot
echo Kataloger: $dtot
echo Linker: $ltot
```

Denne fungerer for filnavn med mellomrom også, men går igjennom filsystemet tre ganger
(og find -type f teller ikke linker som peker til filer).
En annen korrekt løsning som går igjennom filsystemet kun en gang er:

```Bash
#! /bin/bash
(( dtot=0 ))
(( ftot=0 ))
(( ltot=0 ))

while read fil
do
    if [ -L "$fil" ]; then
           (( ltot += 1 ))
    elif [ -f "$fil" ]; then
           (( ftot += 1 ))
    elif [ -d "$fil" ]; then
           (( dtot += 1 ))
    fi
    
done < <(find .)

echo Filer: $ftot
echo Kataloger: $dtot
echo Linker: $ltot
```

Hvor den spesielle konstruksjonen <( fungerer som en slags baklengs pipe. Det kalles process substitution og får en
prosess sin output til å opptre som et filnavn. ( Om man pipe’t find-kommandoen inn til while, ville det samme skjedd,
bortsett fra at variablene da ikke ville bli bevart etter løkken.)