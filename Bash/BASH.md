# Bash

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