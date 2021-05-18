## Samling av linux kommandoer

### Filbehandling

Flytter mappen dir1 til mappen dir2

```Bash
mv dir1 dir2
```

Kopier alt som begynner på c i /bin til /tmp

```Bash
cp /bin/c* /tmp
```

Kopier dir1 med undermapper til dir2

```Bash
cp -R dir1 dir2
```

Finner alt under tmp med navn som inneholder fil.txt

```Bash
find tmp -name fil.txt
```

Finner alt under mappen du står som inneholder strengen "fil" i navnet

```Bash
find . -name "*fil"
```

Skriv til skjerm alle linjer som inneholder strengen group

```Bash
grep group /etc/passwd
```

Tell antall linjer i /etc/passwd

```Bash
wc -l /etc/passwd
```

Tell antall linjer som inneholder strengen group

```Bash
grep group /etc/passwd | wc -l
```

Finner alle filer og mapper med navn som inneholder tekststrengen 'noe'

```Bash
locate noe
```

### Sletting av filer og mapper

Sletter mappe og alle undermapper

```Bash
rm -R Mappe
```

Ber om bekreftelse først

```Bash
rm -i fil2
```

### Omdirigering

Den store fleksibiliteten det gir å kunne dirigere datastrømmer til og fra filer og programmer har alltid vært en
sentral og nyttig egenskap ved Linux.

Omdirigerer stdout til fil.txt. Overskriver

```Bash
> fil.txt
```

Legger stdout etter siste linje i fil.txt

```Bash
>> fil.txt
```

Sender også stderr til fil.txt

```Bash
>& fil.txt
```

Sender stderr til err.txt

```Bash
2> err.txt
```

stderr sendes til et 'sort hull' og forsvinner

```Bash
2> /dev/null
```

stdout -> fil.txt stderr -> err.txt

```Bash
> fil.txt 2> err.txt
```

### Omdirigering til og fra kommandoer; pipes

En pipe | er et data-rør som leder et programs stdout til et annet programs stdin

Uten pipe:

```Bash
ps aux > fil
more fil
```

Med pipe:

```Bash
ps aux | more
```

Dette gjør at man kan kombinere alle Linux-kommandoene på en rekke måter.

Når man setter en pipe etter en kommando, er det bare stdout som sendes dit. Men ved hjelp av konstruksjonen |& sender
man også stderr videre
