Oppg 5.1

```Bash
s341870@studssh:~/obliger/oblig2$ cat testchell.sh
#! /bin/bash

if [ -z "$SHELL" ];
then
echo "SHELL er udefinert";
else
echo "$SHELL";
fi
s341870@studssh:~/obliger/oblig2$ ./testchell.sh
/bin/bash
```

Oppg 5.2

```Bash
#! /bin/bash
if [ -e ~/www ]
then
find ~/www -type f -name "*.*" -exec chmod 644 {} +
echo "Rettighetene til filene i ~/www er endret til 644"
else
mkdir ~/www
chmod 755 ~/www
echo "Opprettet ~/www og satt rettigheter til 755"
fi

if [ -e ~/www/bilder ]
then
find ~/www/bilder -type f -name "*.*" -exec chmod 644 {} +
echo "Rettighetene til filene i ~/www/bilder er endret til 644"
else
mkdir ~/www/bilder
chmod 755 ~/www/bilder
echo "Opprettet ~/www/bilder og satt rettigheter til 755"
Fi
```

Oppg 5.3

```Bash
#! /bin/bash

filer=$(find -type f | wc -l)
mapper=$(find -type d | wc -l)
linker=$(find -type l | wc -l)

echo "Antall filer: $filer"
echo "Antall mapper: $mapper"
echo "Antall linker: $linker"
s341870@studssh:~/obliger/oblig2$ chmod 744 count.bash
s341870@studssh:~/obliger/oblig2$ ./count.bash
Antall filer: 5
Antall mapper: 3
Antall linker: 0

```

Oppg 5.6

```Bash
#! /bin/bash

if [ -f "$1" ]
then
echo $1 er en fil.
var=$1
if [ ${var:0:1} = "/" ]
then
echo Filen er gitt med absolutt path
else
echo Filen er gitt med realtiv path
fi
else
echo $1 er ikke en fil
fi
```

Oppg 5.7

```Bash

#! /bin/bash

for var in $*
do
if [ -f "$var" ]
then
echo $var er en fil.
if [ ${var:0:1} = "/" ]
then
echo Filen er gitt med absolutt path
else
echo Filen er gitt med realtiv path
fi
else
echo $var er ikke en fil
fi
done
```

Oppg 5.10

Oppg 5.13

```Bash
s341870@studssh:~/obliger/oblig2$ nano main.c
s341870@studssh:~/obliger/oblig2$ nano enlinje.c
s341870@studssh:~/obliger/oblig2$ gcc enlinje.c main.c
s341870@studssh:~/obliger/oblig2$ ./a.out
Kaller enlinje()...
Svar = 42
```

Kodekjøringen gir svaret 42 da man må med flytting og add på denne måten:
10 (%rbp) -> %eax  
10 (%eax) + 32 (%rbp) -> %rbp 42 (%rbp) -> 42 (%eax)

Forklaring på assembly-kode fra forelesning:
mov memvar, %rbx #flytter memvar (verdi 10) inn i register rbx add %rbx, svar #adderer verdien memvar, som nå er lagret
i %rbx, med svar (verdi 32) som ligger i minnet mov svar, %rax # legger den nye svar verdien (42) i %rax, klar til å
returneres.

Oppg 5.14

Ved å kompilere høynivåkoden får vi 41 linjer kode totalt. Forskjellen på å bruke int og “long long” er at ved “long
long” velger kompilatoren å bruke 64-bit’s registere som feks. %rax. Disse registerne starter på “r” og ikke “e” som
32-bit registre. Det blir også satt av mer minneplass, 8 byte. Assembly koden bruker også andre instruksjoner som
slutter på “q” for quad i stedet for “l” for long. Feks: “movq”.

Oppg 6.1

```Bash
s341870@studssh:~/obliger/oblig2$ cat passordhash.sh
#! /bin/bash

hash='$6$AB.f/K06$IsV3oABaBO4UEBertVwViFgqFcuRvPfBDBVojDJkwg43AlPlgfD.y8nCpjnb01EgwwrVaxpYRzYjgT5G1g4lw.'
salt=$(echo $hash | cut -d$ -f3)

for p in {a..z}{a..z}{a..z}
do
tmp=$(mkpasswd -m sha-512 -S $salt $p)
if [ "$tmp" = "$hash" ]
then
echo Du har funnet passordet. Det er $p
break
fi
done
```

Oppg 6.3

(Hadde ingen filer som ble endret på den 30. Jan 2019, så valgte 2. mars 2021).

Oppg 6.4

```Bash
s341870@studssh:~/obliger/oblig2$ sed "s/stud.hioa.no/oslomet.no/" fil.txt > nyFil.txt
```

Oppg 6.6

```Bash
s341870@studssh:~$ ls -l /etc | sort -k 5 -nr | head -n 10
-rw-r--r--  1 root root     523939 Sep 12  2017 passwd-120917.txt
-rw-r-----  1 root root     433859 Aug 21  2015 shadow-latest
-rw-r--r--  1 root root     411208 Jan 26 11:56 passwd.latest.26.12020
-rw-r--r--  1 root root     411134 Feb  4 11:44 passwd-bak-040221
-rw-r--r--  1 root root     398566 Jan 26 11:42 passwd.latest.25.12020
-rw-r--r--  1 root root     396992 Nov  5 15:14 passwd-05112020.bak
-rw-r--r--  1 root root     396992 Jan 20 13:19 passwd.latest
-rw-r--r--  1 root root     396992 Feb  4 11:46 passwd_1612435611_Thu_Feb__4_11_46_58_2021_.cfsaved
-rw-r-----  1 root root     332823 Feb  4 11:44 shadow-bak-040221
-rw-r-----  1 root root     322850 Jan 26 11:42 shadow.latest.26.12020
```

Oppg 6.7

```Bash
s341870@studssh:~/obliger/oblig2$ cat shellfalse.sh
#! /bin/bash
IFS=:
while read brnavn x ID GR NAVN HOME SHELL
do
if [ "$SHELL" = "/bin/false" ]
then
unset IFS
ps aux | while read bruker PID x x x x x x x x prog
do
if [ "$brnavn" = "$bruker" ]
then
echo "$brnavn har pid=$PID"
fi
done
IFS=:
fi
done < /etc/passwd
```

Oppg 6.12

```Bash
s338850@studssh:~$ ./regn > res.txt 2> err.txt &
```

Feilmeldingen ble skrevet til err.txt, men feilmeldingen er den første som blir skrevet. Jeg fikk skrevet den første
linjen "regner …" til res.txt, men resultatet kom ikke. så jeg vil anta at den avbrytes når jeg logger ut. Alt.:
s341870@studssh:~$ ./regn 2> err.txt > res.txt

Oppg 6.13

Ser at tiden det tar for prosessen er ferdig er 1 min og 6 sek med CPU på 99,8%. Prøvde på ulike måter å legge inn
tidsbruk i err.txt-fil uten hell.

Oppg 6.15

a.out får 100% av CPU Studssh har 4 prosessorer. Prosessene fordeles mellom CPU’ene 1, 2 og 3, mens det ser ut som CPU 0
kjører de mest CPU-krevende root-prosessene, men det er ikke sikkert at det gjelder for alle. To av CPU’ene må da til
enhver tid bytte på å jobbe med to av a.out-prosessene. Etter endring av run.c til å vare i ca 10 sek vil 5 slike
prosesser fordelt på 4 CPU’er ta ca 12,5 sek pr prosess. (10 x 5 / 4 = 12,5).

Oppg 6.16

Når vi kjører tre prosesser, får de ca 67% CPU i gjennomsnitt. Det vil si at vi har 2 CPU'er disse prosessene blir
fordelt på.

Ved å trykke 1 i top, ser det ut til at vi har tilgang på 20 CPU'er, men siden prosenten er beskrevet som ovenfor er det
nok ikke slik av VM'en har tilgang til alle disse. Når vi legger til "Last used CPU"-kolonnen i top, ser det ut som om
hver enkelt prosess jobber mest mulig på samme CPU hele tiden, men det skifter litt mot slutten. På studssh så skifter
prosessene CPU gjennom hele prosessen.  
Én a.out-prosess bruker ca 35sek med 100% CPU. Ettersom 3 prosesser har hver sin CPU, men som jobber på kun ca 67%, vil
hvert av prosessene ta ca 52,2 sek.

Oppg 7.1

For å opprette ny bruker:

```Bash
group28@os28:~$ sudo adduser s341870
```

Kommando man bruke for å se hvilke grupper man tilhører:

```Bash
s341870@os28:~$ groups s341870
s341870 : s341870 sudo
```

For å gi admintilgang:

```Bash
group28@os28:~$ usermod -aG sudo s341870
```

Da får du tilgang:

```Bash
s341870@os28:~$ sudo su
[sudo] password for s341870:
root@os28:/home/s341870#
root@os28:/home/s341870# cd
root@os28:~#
```

Rettighetene til sudo gruppen er spesifisert i /etc/sudoers slik:

%sudo ALL=(ALL:ALL) ALL

Oppg 7.4

Skjermbilde av gruppens webserver:

Oppg 7.5

```Bash
group28@os28:~$ screen -d -m -S skjerm
group28@os28:~$ screen -x skjerm
```

Skjermbilde av deling:

Oppg 7.6

```Bash
s341870@studssh:~$ cd .ssh
s341870@studssh:~/.ssh$ ssh-keygen
s341870@studssh:~/.ssh$ ls -la
total 20
drwx------  2 s341870 users 4096 Mar  2 23:01 .
drwxr-xr-x 10 s341870 users 4096 Mar  2 19:45 ..
-rw-------  1 s341870 users 1679 Mar  2 23:01 id_rsa
-rw-r--r--  1 s341870 users  397 Mar  2 23:01 id_rsa.pub
-rw-r--r--  1 s341870 users  444 Jan 26  2020 known_hosts
s341870@studssh:~/.ssh$ ssh-copy-id -i id_rsa.pub s341870@os28.vlab.cs.hioa.no
s341870@studssh:~/.ssh$ ssh s341870@os28.vlab.cs.hioa.no
s341870@os28:~$

s341870@studssh:~$ cat pakksakene.bash
#!/bin/bash

tar cfzP dir.tgz /tmp/dir

echo "1. packed /tmp/dir into dir.tgz"

scp ./dir.tgz s341870@os28.vlab.cs.hioa.no:~/

echo "2. moved file to os28"

rm ./dir.tgz

echo "3. removed temp file from source"

ssh s341870@os28.vlab.cs.hioa.no -t "tar xfzP ~/dir.tgz"
echo "4. unziped file on destination"

ssh s341870@os28.vlab.cs.hioa.no -t "rm ~/dir.tgz"
echo "5. removed temp file on destination"
```

Så kjører vi scriptet

```Bash
s341870@studssh:~$ ./pakksakene.bash
1. packed /tmp/dir into dir.tgz
   dir.tgz                                                               100%  124     0.1KB/s   00:00
2. moved file to os28
3. removed temp file from source
   Connection to os28.vlab.cs.hioa.no closed.
4. unziped file on destination
   Connection to os28.vlab.cs.hioa.no closed.
5. removed temp file on destination
```

Oppg 7.7

```Bash
s338850@studssh:~$ cat backupgroup28.sh
#! /bin/bash
rsync --delete -a group28@os28.vlab.cs.hioa.no:/home/group28/ ~/home
echo “Backup tatt av /home/group28/ $(date)” >> ~/sync.log

s338850@studssh:~$ crontab -e
no crontab for s338850 - using an empty one
#
# m h  dom mon dow   command

* 0 * * * /iu/cube/u0/s338850/backupgroup28.sh

crontab: installing new crontab
```

Hvis jeg ikke har med --delete som option til rsync, så vil ikke de filene jeg sletter i /home/group28/ registreres med
rsync

Oppg 7.8

```Bash
s341885@studssh:~$ cat backup.sh
#! /bin/bash

rsync --delete -a group28@os28.vlab.cs.hioa.no:/home/group28 ~/home
rsync --delete -a root@os28.vlab.cs.hioa.no:/etc ~/home
echo “Backup tatt av /home/group28/ og /etc $(date)” >> ~/sync.log
```

Oppg 7.10

Prøver først å kjøre programmet alene, da tar prosessen ca 10 sek og 100% CPU:

```Bash
s338850@os28:~$ time ./a.out
Real:10.023 User:10.023 Sys:0.000 100.00%
```

Så to prosesser samtidig, da tar prosessen fortsatt ca 10 sek. og 100% CPU:

```Bash
s338850@os28:~$ time ./a.out&
[1] 393572
s338850@os28:~$ time ./a.out&
[2] 393574
s338850@os28:~$ Real:10.028 User:10.028 Sys:0.000 99.99%
Real:10.003 User:10.003 Sys:0.000 100.00%
```

Ved kjøring av 4 prosesser samtidig, dobles tiden til ca 20 sek og CPU senkes til ca 50%:

```Bash
s338850@os28:~$ for i in {1..4}; do time ./a.out& done
Real:19.926 User:10.040 Sys:0.000 50.38%
Real:19.950 User:10.036 Sys:0.004 50.32%
Real:20.055 User:10.034 Sys:0.004 50.05%
Real:20.094 User:10.036 Sys:0.000 49.94%
```

Dette kan tyde på at at VM'en har tilgang til én CPU og at det er to tråder i den. Oppg 7.11

Kommandoen under gir en liste med threadsiblings på Linux VM.

```Bash
s338850@os28:~$ grep "" /sys/devices/system/cpu/cpu*/topology/thread_siblings_list
/sys/devices/system/cpu/cpu0/topology/thread_siblings_list:0,48
/sys/devices/system/cpu/cpu1/topology/thread_siblings_list:1,49
/sys/devices/system/cpu/cpu10/topology/thread_siblings_list:10,58
.
.
.
```

Sjekker under at vi kan kjøre to prosesser på thread siblings-par 0, 48. Det går fint, og tiden hver prosess bruker er
den samme som den skulle kjørt alene på en CPU.

```Bash
s338850@os28:~$ for i in 0 48; do time taskset -c $i ./a.out& done              
[1] 393763
[2] 393764
s338850@os28:~$ Real:10.301 User:10.300 Sys:0.000 99.99%
Real:10.301 User:10.298 Sys:0.000 99.96%
```

Oppg 7.12

```Bash
s338850@os28:~$ for i in {1..2}; do time taskset -c 0 ./a.out& done
[1] 393747
[2] 393748
Real:20.046 User:10.025 Sys:0.000 50.01%
Real:20.052 User:10.026 Sys:0.000 50.00%

```

Vil tro at dette tar lengre tid fordi de to prosessene her blir tvunget til å kjøre på samme tråd, i stedet for å dele
de to trådene i en CPU
