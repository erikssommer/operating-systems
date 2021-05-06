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