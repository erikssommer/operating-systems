# Operativsystemer

Link til kompendium: https://www.cs.hioa.no/~haugerud/os/

Uke 1

1.1 

Hva er de to viktigste oppgavene til et operativsystem? 

De to viktigste oppgavene til et operativsystem er:
-	Å forenkle kommunikasjonen mellom brukeren og maskinvare, slik at applikasjoner og brukere får en enklere og mer abstrakt tilgang til en maskins ressurser. 

-	Å fordele ressursene en maskin til enhver tid har til rådighet, mellom ulike prosesser og brukere slik at disse ikke ødelegger for hverandre når de evt. ønsker å bruke samme ressurser. 

1.2 

I figuren i forelesningsnotatene er det to feil i output på høyre side, hva er galt?

Det er feil output i OR- og NOT-portene. 
I OR-porten er resultatet satt til 0.  Input er 1 og 0 og output skal dermed være 1. Dette er fordi OR-porten er "sann" dvs. gir 1 i output dersom et eller begge av inputene er sanne (1). Den gir 0 i output kun dersom begge inputene er usanne (0).

NOT-porten er feil fordi den gir 0 i output når det også er 0 i input. En NOT-port vil gi sant (1) output når input er usant (0), og usant output (0) når input er sant (1). 


1.3

Forklar ut ifra sannhetsverditabellene til AND og OR-portene hvorfor resultatet i den nederste kretsen blir 0, når øverste input er 1(rødt) og nederste input er 0(hvitt).

Svar: 
Slik jeg ser det må vi dele denne kretsen opp i to. Vi ser først på AND – porten, denne vil få et hvitt (0) output så lenge ett eller begge av inputene er hvite (0). I dette tilfellet er nederste input 0 (hvitt) og det er nok til at vi får et hvitt (0) resultat ut av denne porten. Så ser vi på neste port, det er en OR-port. Som nevnt over må ett eller begge inputene være røde (1) for at denne skal få rødt (1) output. Her får vi et hvitt (0) input fra AND-porten og et nytt hvitt (0) input, da vi sender inn det nederste hvite inputet også i denne porten. Hadde vi byttet om på de to inputene og latt øverste være hvitt (0) og nederste rødt (1), ville vi fått et annet resultat. Vi kan tenke oss at vi regner ut regnestykket ((A x B) +B), og setter inn 0 og 1, på de ulike plassene for A og B, de ulike resultatene finnes i sannhetstabellen som er satt opp nedenfor. 

A	B	F (A x B) + B
0	0	0
1	0	0
0	1	1
1	1	1


Uke 2   

2.10  

```Bash

s341870@studssh:~$ mkdir tmp

s341870@studssh:~$ touch tmp/fil1 

s341870@studssh:~$ ls

cgi-bin  nyMappe  oblig1  tmp  www

s341870@studssh:~$ cd tmp

s341870@studssh:~/tmp$ mkdir etc

s341870@studssh:~/tmp$ ls

etc  fil1 

s341870@studssh:~/tmp$ cd

s341870@studssh:~$ cp /etc/passwd tmp/passwd

s341870@studssh:~/tmp$ cd tmp

s341870@studssh:~/tmp$ ls

etc  fil1  passwd 

s341870@studssh:~/tmp$ mkdir bin

s341870@studssh:~/tmp$ ls

bin  etc  fil1  passwd

s341870@studssh:~/tmp$ mv bin etc    (gjorde en liten feil her og la først bin i tmp, men fikk flyttet den til etc)

s341870@studssh:~/tmp$ ls

etc  fil1  passwd

s341870@studssh:~/tmp$ cd etc

s341870@studssh:~/tmp/etc$ ls

bin

s341870@studssh:~/tmp/etc$ touch fil2

s341870@studssh:~/tmp/etc$ ls

bin  fil2

s341870@studssh:~/tmp/etc$

```

2.11
```Bash
s341870@studssh:/etc$ cd ../..

s341870@studssh:/$
```

2.12

```Bash
s341870@studssh:~$ mkdir mappe

s341870@studssh:~$ ls

cgi-bin  mappe  nyMappe  oblig1  tmp  www

s341870@studssh:~$

s341870@studssh:~$ cd mappe

s341870@studssh:~/mappe$ touch fil1.txt fil2.java fil3.sh fil4.java

s341870@studssh:~/mappe$ ls

fil1.txt  fil2.java  fil3.sh  fil4.java

s341870@studssh:~/mappe$ mv *.java ..

s341870@studssh:~/mappe$ cd

s341870@studssh:~$ ls

cgi-bin  fil2.java  fil4.java  mappe  nyMappe  oblig1  tmp  www

s341870@studssh:~$
```
2.13
```Bash
s341870@studssh:~$ ls /usr/bin/b* 

s341870@studssh:~$ ls -la /usr/bin/b*

ls /usr/bin | grep '^b'

```
2.15 
```Bash
s341870@studssh:~$ touch info.sh

s341870@studssh:~$ nano info.sh

s341870@studssh:~$ chmod 700 info.sh

s341870@studssh:~$ ./info.sh

s341870

studssh

Linux studssh 4.4.0-141-generic #167-Ubuntu SMP Wed Dec 5 10:40:15 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux

s341870@studssh:~$ cat info.sh

#! /bin/bash

whoami

hostname

uname -a

s341870@studssh:~$
```
Når man kjører skriptet ved å bruke ./ så spesifiseres det at det er en fil og hvor den ligger.
Skriver man bare info.sh virker det som om det tolkes som en kommando


2.16

Top er en kommando som viser fortløpende prosesser som står og kjører. Den øverste og første delen viser en oversikt over totalverdiene. Den nederste delen viser en tabell med hvert individuelle kommando og info. Jeg vil si feltene med hvor mye minne som blir brukt og hvor mye cpu-kraft som blir brukt er de viktigste. Hvem som gjør hva, kan også være greit å vite. Ved å taste 1 får du opp alle de ulike cpu-ene.

2.17 

Når du taster "U" og legger inn eget brukernavn, får du en oversikt over prosesser som er tilknyttet din bruker. Dette kan være nyttig hvis du opplever problemer med noen av prosessene. 


2.18

Kommando "ps aux" gir en oversikt over alle prosesser som blir kjørt i systemet uansett hvilken bruker. 

2.19 

Ved å kjøre kommandoen ps aux | grep s338850, får jeg en oversikt over prosessene min bruker er en del av.

```Bash
s341870@studssh:~$ s341870@studssh:~$ ps aux | grep s33885

s341870  17749  0.0  0.0  16344   940 pts/19   S+   17:09   0:00 grep --color=auto s33885

root     25118  0.0  0.0 132252  7696 ?        Ss   12:23   0:00 sshd: s338851 [priv]

s338851  25133  0.0  0.0  45404  5052 ?        Ss   12:23   0:00 /lib/systemd/systemd --user

s338851  25137  0.0  0.0 121216  2620 ?        S    12:23   0:00 (sd-pam)

s338851  25181  0.0  0.0 144500  6192 ?        S    12:23   0:01 sshd: s338851@pts/13

s338851  25182  0.0  0.0  25296  5916 pts/13   Ss+  12:23   0:00 -bash

root     29406  0.0  0.0 132260  7836 ?        Ss   12:58   0:00 sshd: s341870 [priv]

s341870  29426  0.0  0.0  45412  5156 ?        Ss   12:58   0:00 /lib/systemd/systemd --user

s341870  29432  0.0  0.0 121216  2620 ?        S    12:58   0:00 (sd-pam)

s341870  29476  0.0  0.0 144656  6876 ?        S    12:58   0:02 sshd: s341870@pts/19

s341870  29477  0.0  0.0  25284  5796 pts/19   Ss   12:58   0:00 -bash

s341870@studssh:~$

```
Nytt script som utfører denne kommandoen:
```Bash
s341870@studssh:~$ cat psuser.sh

#! /bin/bash

ps aux | grep s341870

s341870@studssh:~$ chmod 700 psuser.sh

s341870@studssh:~$ ./psuser.sh

s341870  18164  0.0  0.0  14640  2932 pts/19   S+   17:16   0:00 /bin/bash ./psuser.sh

s341870  18165  0.0  0.0  39484  3268 pts/19   R+   17:16   0:00 ps aux

s341870  18166  0.0  0.0  16344   972 pts/19   S+   17:16   0:00 grep s341870

root     29406  0.0  0.0 132260  7836 ?        Ss   12:58   0:00 sshd: s341870 [priv]

s341870  29426  0.0  0.0  45412  5156 ?        Ss   12:58   0:00 /lib/systemd/systemd --user

s341870  29432  0.0  0.0 121216  2620 ?        S    12:58   0:00 (sd-pam)

s341870  29476  0.0  0.0 144656  6876 ?        S    12:58   0:02 sshd: s341870@pts/19

s341870  29477  0.0  0.0  25284  5796 pts/19   Ss   12:58   0:00 -bash

s341870@studssh:~$
```

2.20 
```Bash
s341870@studssh:~$ nano psuser.sh

s341870@studssh:~$ cat psuser.sh

#! /bin/bash

ps aux | grep $1

s341870@studssh:~$ ./psuser.sh s341870

s341870  18850  0.0  0.0  14640  2940 pts/19   S+   17:26   0:00 /bin/bash ./psuser.sh s341870

s341870  18851  0.0  0.0  39484  3280 pts/19   R+   17:26   0:00 ps aux

s341870  18852  0.0  0.0  16344   940 pts/19   S+   17:26   0:00 grep s341870

root     29406  0.0  0.0 132260  7836 ?        Ss   12:58   0:00 sshd: s341870 [priv]

s341870  29426  0.0  0.0  45412  5156 ?        Ss   12:58   0:00 /lib/systemd/systemd --user

s341870  29432  0.0  0.0 121216  2620 ?        S    12:58   0:00 (sd-pam)

s341870  29476  0.0  0.0 144656  6876 ?        S    12:58   0:02 sshd: s341870@pts/19

s341870  29477  0.0  0.0  25300  5812 pts/19   Ss   12:58   0:00 -bash
```

2.23
                              

2.24 

Sannhetstabell for binæraddisjon.

X	Y	z	c	S
0	0	0	0	0
0	0	1	0	1
0	1	0	0	1
0	1	1	1	0
1	0	0	0	1
1	0	1	1	0
1	1	0	1	0
1	1	1	1	1

2.25 
	
Ved hjelp av FullAdder.dwm verifiseres sannhetstabellen.

Uke 3 Oppgaver

3.2
Absolut Path:
```Bash
s341870@studssh:~$ cd /usr/bin
```
3.3
	
Relativ path:
siden denne er relativ til mappen man står i, må man først flytte opp i root for å kunne bruke relativ path: usr/bin

```Bash
s341870@studssh:~$ cd ../..

s341870@studssh:/iu/cube$ cd ../..

s341870@studssh:/$ cd usr/bin

s341870@studssh:~$ cd ../../../../usr/bin

```
3.4
```Bash
s341870@studssh:~$ diff fa.txt fb.txt

5c5

< 4a
---
> 4b
```
Diff kommandoen viser oss hvilke linjer vi må gjøre noe med for at de to filene skal bli identiske. Den gir også informasjon om hva man kan gjøre. I dette tilfellet så må vi forandre (c for change) på linje 5 i fa.txt, for at den skal bli lik filen fb.txt. Vi kunne også fått beskjed om å legge til (a for add) eller fjerne (d for delete) noe.


3.7

Det opprettes først en mappe som heter tex, så en mappe som heter oblig, deretter flyttes oblig-mappen inn i tex-mappen og blir en undermappe der. så opprettes en ny mappe med navn oblig, og tex flyttes ned i denne. Da får vi mappestrukturen som illustrert til høyre. 

3.8

Ved å bruke cd-kommandoen.
```Bash
s341870@studssh:/$ cd
```
Ved å gå mappe for mappe  
```Bash
s341870@studssh:/$ cd ~
```
Ved å bruke relativ path fra root.
```Bash
s341870@studssh:/$ cd iu/cube/u0/s341870
```

3.9
```Bash
s341870@studssh:~$ echo bla bla bla > newfile

s341870@studssh:~$ more newfile

bla bla bla

```

Det som skjer her, er at output fra echo-kommandoen blir omdirigert inn i en fil. 


3.13

Vi ønsker å matche det første ordet i hver linje i "ps aux" fordi det er dette som viser oss brukeren som eier prosessen.


3.14

I manualen for grep står det at du kan bruke ^ og $ til å representere starten og slutten av en linje. 


3.15
```Bash
s341870@studssh:~$ ps aux | grep ^s341870

s341870  10651  0.0  0.0  39484  3288 pts/53   R+   18:10   0:00 ps aux

s341870  10652  0.0  0.0  16344   928 pts/53   S+   18:10   0:00 grep --color=auto ^s341870

s341870  24920  0.0  0.0  45676  5292 ?        Ss   15:45   0:01 /lib/systemd/systemd --user

s341870  24924  0.0  0.0 204732  4144 ?        S    15:45   0:00 (sd-pam)

s341870  24976  0.0  0.0 144508  6024 ?        S    15:45   0:00 sshd: s341870@pts/53

s341870  24977  0.0  0.0  25216  5556 pts/53   Ss   15:45   0:00 -bash
```

3.16
```Bash
s341870@studssh:~$ cat psuser.sh

#! /bin/bash

ps aux | grep ^$1

s341870@studssh:~$ ./psuser.sh s341870

s341870  11955  0.0  0.0  14640  2940 pts/53   S+   18:14   0:00 /bin/bash ./psuser.sh s338850

s341870  11956  0.0  0.0  39484  3260 pts/53   R+   18:14   0:00 ps aux

s341870  11957  0.0  0.0  16344  1012 pts/53   S+   18:14   0:00 grep ^s338850

s341870  24920  0.0  0.0  45676  5292 ?        Ss   15:45   0:01 /lib/systemd/systemd --user

s341870  24924  0.0  0.0 204732  4144 ?        S    15:45   0:00 (sd-pam)

s341870  24976  0.0  0.0 144508  6024 ?        S    15:45   0:00 sshd: s341870@pts/53

s341870  24977  0.0  0.0  25216  5556 pts/53   Ss   15:45   0:00 -bash

```
3.17
```Bash
s341870@studssh:~/oblig1$ nano psuser 

s341870@studssh:~/oblig1$ cat psuser 

#! /bin/bash

watch -n 10 'ps aux | grep' ^$1

```
3.18
```Bash
s341870@studssh:~$ touch hemmelig.txt

s341870@studssh:~$ chmod 400 hemmelig.txt

s341870@studssh:~$ ls -l

-r-------- 1 s341870 users     0 Jan 26 19:17 hemmelig.txt
```

3.19
```Bash
s341870@studssh:~$ touch fil.txt

s341870@studssh:~$ chmod 754 fil.txt

s341870@studssh:~$ ls -l

-rwxr-xr-- 1 s338850 users 0 Feb  4 17:18 fil.txt

```
3.21
```Bash
s341870@studssh:~/mappe$ touch nyfil

s341870@studssh:~/mappe$ ls -l

-rw-r--r-- 1 s338850 users 0 Jan 26 20:30 nyfil
```
Her ser vi at rettighetene til en ny fil opprettet ved touch-kommandoen har rettigheter read/write for user, og read for group og others.
```Bash
s341870@studssh:~/mappe$ nano

s341870@studssh:~/mappe$ ls -l

-rw-r--r-- 1 s338850 users 16 Jan 26 20:33 nyfil2
```
Det same gjelder for filer opprettet direkte fra nano editor, men dette varierer fra editor til editor.

Her justerer jeg umask filteret og setter default rettighetene til read/write til user, men ingen rettigheter til group og others:  
```Bash
s341870@studssh:~/mappe$ umask 0077

s341870@studssh:~/mappe$ touch fil3

s341870@studssh:~/mappe$ ls -l fil3

-rw------- 1 s338850 users 0 Jan 26 20:57 fil3

```
3.27

latch2.dwm er en D-lås. Det vil si en lagringsenhet for en bit. Den tar inn en variabel og en kontrollvariabel. A er variabelen vi sende inn og B er variabelen som bestemmer om A skal lagres i kretsen eller ikke. Hvis B = 0, spiller det ingen rolle hvilken verdi A er, fordi verdien som ligger "lagret" i kretsen er den vi vil få ut av den. Men hvis B = 1, vil vi kunne endre på verdien vi får ut helt til B skifter til 0 igjen og den nye verdien er lagret. Her vil det jo spille en rolle om du setter B verdien først eller sist. 

3.28

3 + 4 = 7						
A + 1
 

3.30

ALU (Arithmetic Logic Unit) finnes inne i Datapath delen av machine.dwm. Det er en aritmetisk logisk enhet som kan utføre matematiske og logiske operasjoner på data som blir sendt inn i den. ALU'en og registre utgjør til sammen Datapathen. Denne finner man inne i CPU'en (Central Processing Unit). ALU’en er CPU’ens hjerne, hvor  de aritmetiske beregningene gjøres via OR, AND og NOT-porter.


3.31

Resultatet at utregningen blir 0+1+2+3 = 6. Og dette lagres i R3. Hvis vi ser på tabellen over Assembly instruksjonene som gjennomføres ser vi at max-verdien, eller den verdien som bestemmer hvor mange ganger løkka skal kjøres gjennom, legger i R0. Tallet som i skal økes med for hver iterasjon legges i R1. I R2 lagres den variabelen vi skal legge til summen for hver iterasjon og til slutt lagres totalsummen i R3.

3.32

I en von Neuman- arkitektur lagres både data og maskininstrukser i samme minne (RAM). 

I en Harvard-arkitektur lagres data og maskininstrukser hver for seg. 

machine.dwm er nærmest en Harvard arkitektur, da maskininstruksene ligger lagret for seg i ROM og ikke i RAM.

3.33
   

Løkken skal kjøres to ganger --> 
```C
S = 0;
for (i = 1; i <= 2; i++)
S = S + 2;
```
Returnerer S = 4

For å øke med 2 i løkken legger vi inn en ekstra ADD med tallet 1 i R1 på linje 6 og flytter CMP og JNE-koden en linje nedover.

0: MOVI R0 <- 2

1: MOVI R1 <- 1

2: MOVI R2 <- 0

3: MOVI R3 <- 0

4: ADD R2 <- R2 + R1

5: ADD R3 <- R3 + R1

6: ADD R3 <- R3 + R1

7: CMP <- R2 R0

8: JNE <- 4

Sluttverdier lagret:

R0 : 2
R1 : 1
R2 : 2
R3 : 4

UKE 4

4.2
```Bash

s341870@studssh:~$ hostname

studssh
```
4.4
```Bash
s341870@studssh:~$ groups

users domain users all_students
```

4.9
```Bash
s341870@studssh:~$ grep $(whoami) /etc/passwd

s341870:x:3462:100:Julie Erik Storås Sommer,,,:/iu/cube/u0/s338850:/bin/bash

4.10

s341870@studssh:~$ minvar=hei

s341870@studssh:~$ export DINVAR=HALLO

s341870@studssh:~$ bash

s341870@studssh:~$ echo $minvar

s341870@studssh:~$ echo $DINVAR

HALLO
```
Når man forsøker å skrive ut minvar i det nye shellet får vi ikke noe resultat, mens når vi skriver ut DINVAR, så kommer utskriften HALLO slik vi instansierte den i det første shellet. Grunnen til at det er slik ligger i "export"-kommandoen. Den eksporterer variabelen DINVAR slik at den kan nåes fra andre shell enn det variabelen opprinnelig ble laget i. Derfor får vi helle rikke tak i minvar, den er ikke eksportert og dermed ikke tilgjengelig for andre shell enn sitt opprinnelses shell.

4.11 
```Bash
s341870@studssh:~$ ./vari.sh

s341870@studssh:~$ echo $min

s341870@studssh:~$ echo $DIN
```
Vi får ingen utskrift fordi variablene kun er tilgjengelige når skriptet kjøres.

4.12

Finner PID for prosessen som kjører nano:

```Bash
s341870@studssh:~$ ps aux | grep s338850 | grep "nano"

s341870  24101  0.0  0.0  16520  2672 pts/45   S+   17:28   0:00 nano

s341870  24663  0.0  0.0  16344   932 pts/78   S+   17:29   0:00 grep --color=auto nano

s341870@studssh:~$ kill 24101

s341870@studssh:~$
```
4.13
```Bash
s341870@studssh:~$ os=`uname`

s341870@studssh:~$ echo $os

Linux

s341870@studssh:~$ OS=$(uname)
```
4.17
```Bash
s341870@studssh:~$ find /iu/cube/u3 -name "index.php" 2>&1 | grep -v Permission
```
4.19
```Bash
s341870@studssh:~$ grep -c "haugerud" /etc/group > hgroup.txt

s341870@studssh:~$ cat hgroup.txt
12
```
4.20
```Bash
s341870@studssh:~$ ps aux | awk '{print $1}' | sort | uniq | grep -v "USER" | wc -l
```
4.22
```Bash
s341870@studssh:~/oblig1$ nano usrbin.bash

s341870@studssh:~/oblig1$ cat usrbin.bash 

#! /bin/bash

cd /usr/bin

echo "er i $(pwd)"

s341870@studssh:~/oblig1$ chmod 700 usrbin.bash

s341870@studssh:~/oblig1$ ./usrbin.bash 

er i /usr/bin

s341870@studssh:~/oblig1$ pwd

/iu/cube/u0/s341870/oblig1
```

Vi ser at jeg befinner meg I samme mappe som jeg befant meg i etter at filen blir kjørt selv om vi får oppgitt i meldingen at under kjøring av scriptet er vi i /usr/bin. Grunnen til dette er at skriptet kjøres i et subshell, og kan ikke endre det overordnede skallets arbeidskatalog. Effektene går tapt når den er ferdig å kjøre.

For å endre katalog i hovedprosessen så kan denne kommandoen brukes:
```Bash
s341870@studssh:~/oblig1$ . usrbin.bash 

er i /usr/bin

s341870@studssh:/usr/bin$
```
4.26
```Bash
s341870@studssh:~$ cat hello.c
```
```C

#include <stdio.h>

int main()
{
printf("Hello World!\n");
}

```

```Bash

s341870@studssh:~$ gcc hello.c

s341870@studssh:~$ ./a.out

Hello World!

s341870@studssh:~$ gcc hello.c -o hello

s341870@studssh:~$ ./hello

Hello World!
```
4.27

-	Først kompileres sum.c:
```Bash
s341870@studssh:~$ cat sum1.c
```

```C

#include <stdio.h>

int sum()
{
    int S=0, i;
    for (i=0;i<4;i++)
    {
        S = S + i
    }
    return (S);
}

int main()
{
        int sum;
        Sum = sum();
        printf("Sum = %d \n",Sum);
}

```

-	Så kompileres sumMain.c og as.s:
```Bash
s341870@studssh:~$ cat sumMain.c
```

```C
#include <stdio.h>

extern int sum();

int main(void)
{
  int summ;
  summ = sum();
  printf("Sum = %d \n",summ);
}
```
```Bash
s341870@studssh:~$ cat as.s
```

```Assembly
.globl sum

sum:
mov $3, %rcx
mov $1, %rdx
mov $0, %rbx
mov $0, %rax

start:
add %rdx, %rbx
add %rbx, %rax
cmp %rcx, %rbx
jne start

ret
```

```Bash
s341870@studssh:~$ gcc sumMain.c as.s -o sum

s341870@studssh:~$ ./sum

Sum = 6
```
-	Endrer på as.s for at løkken skal kjøres en ekstra gang.
```Bash
s341870@studssh:~$ cat as.s
```
```Assembly
.globl sum

sum:
mov $4, %rcx  #endrer til 4 her 
mov $1, %rdx
mov $0, %rbx
mov $0, %rax

start:
add %rdx, %rbx
add %rbx, %rax
cmp %rcx, %rbx
jne start

ret
```

```Bash

s338850@studssh:~$ gcc sumMain.c as.s -o sum

s338850@studssh:~$ ./sum

Sum = 10

```
Likeheten mellom assemblykoden og maskinkoden i oppgave 31, uke 3 er at de utfører akkurat like instrukser/funksjoner. Assembly er et hakket rikere språk enn binær maskinkode - en slags “leselig” maskinkode, som gjør det enklere for oss å forstå koden enn å lese 0’er og 1’ere, evt HEX.
![image](https://user-images.githubusercontent.com/56063671/115959966-36f43a80-a50f-11eb-81d2-27cbb45a6c02.png)
