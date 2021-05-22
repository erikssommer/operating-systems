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