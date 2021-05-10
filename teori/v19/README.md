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

### Oppgave 11


