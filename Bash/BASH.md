# Bash

### Link til bash script cheatsheet: https://devhints.io/bash

### Filtester

```Bash
-L fil	fil er en link
-r fil	fil er lesbar
-w fil	fil er skrivbar
-e fil	fil eksisterer
-x fil	fil er eksekverbar
```

### Sammenlikning

```Bash
s1 = s2	    strengene s1 og s2 er like
s1 != s2	strengen s1 og s2 er forskjellige
x -eq y	    heltallene x og y er like
x -lt y	    x er mindre enn y 2
x -gt y	    x er større enn y
t1 -a t2	Logisk og - sann hvis t1 OG t2 er sanne
t1 -o t2	Logisk eller - sann hvis t1 ELLER t2 er sanne
```

Skrive innhold til spesifikke filendelser til skjerm:

```Bash
find . -name "tid*" | xargs cat
```

### Logiske operatorer

Logisk NOT

```Bash
!
```

Logisk AND

```Bash
-a
```

Logisk OR

```Bash
-o
```

### Argumenter

```Bash
$#    Stores the number of command-line arguments that
      were passed to the shell program.
$?    Stores the exit value of the last command that was 
      executed.
$0    Stores the first word of the entered command (the 
      name of the shell program).
$*    Stores all the arguments that were entered on the
      command line ($1 $2 ...).
"$@"  Stores all the arguments that were entered
      on the command line, individually quoted ("$1" "$2" ...).
```

### Regulære uttrykk

Matcher begynnelsen av strengen

```Bash
^
```

Matcher slutten av strengen

```Bash
$
```

Skiller alternativer

```Bash
|
```

Matcher alt untatt \n

```Bash
.
```

Neste tegn skal ikke tolkes (\$ matcher $)

```Bash
\
```

Grupperer

```Bash
()
```

#### Eks:

ho på starten av strengen

```Bash
$line =~ ^ho
```

ho eller hi på slutten av strengen

```Bash
$line =~ ho$|hi$
```

Vilkårlig tegn fulgt av $

```Bash
$line =~ .\$
```

### Shell-programmering, oppsummering

(+) Fint til enkelte oppgaver der Linux-kommandoer gjør jobben

(+) Slipper å kompilere

(+) Pipes, omdirigering: Kragtig verktøy

(+) Bra til enkle systemscript

(-) Dårlig programstruktur (variable-typer, parameter-overføring, klasser, etc.)

(-) Dårlige feilmeldinger

(-) Vanskelig å debugge

(-) Kryptisk syntakst

(-) Veldig langsomt sammenlignet med kopilert kode
