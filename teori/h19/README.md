## Eksamen høsten 2019

### Oppgave 1

Figuren viser en trasistor

### Oppgave 2

100 (11 + 01 = 100, 3 + 1 = 4)

### Oppgave 3

Heltall blir lagret og behandlet binært i en datamaskin og lagret som nullere og enere. For å legge sammen to store tall
trenger man først to registere A og B for å lagre tallene (med 17 bit eller mer for å kunne lagre femsifrede tall).
Tallet 0 representeres ved null spenning og tallet én ved en positiv spenning. Man lager så et logisk men svært
komplekst nettverk av nanometertykke ledninger der strømmen styres ved hjelp av transistorer, som er ekstremt små
elektriske brytere. Dette mikro-ledingsnettet kobles til bit-ene i de to registrne A og B i den ene enden og register C
som lagrer svaret i den andre enden. Ved hjelp av binær logikk er nettverket av ledninger og transistorene (som avgjør
om ledningene fører strøm eller ikke) koblet sammen på en slik måte at uansett hvilke to tall som er lagret i A og B så
vil resultatet etter at kretsen er skrudd på bli at tallet C = A + B lagres i resultatregisteret C. Algoritmen som blir
brukt til å legge sammen tallene binært er en binær versjon av metoden alle barn lærer på skolen for å legge sammen
desimaltall, ved å legge sammen tall for tall fra høyre og føre mente videre. Binær logikk brukes til å lage fysiske
nettverk som utfører en slik operasjon og så blir dette utført for hver bit i registrne. Den binære logikken
implementeres med logiske porter som er laget av transistorer.

### Oppgave 4

```C
int S=0;
for(i=1;i< 10;i++){
    S=S+i;
}
```

I begge tilfellene, Java og C, må koden kompileres før den kan kjøres på en x86-prosessor

- Kompileringen av C-kode gir en fil med x86 maskinkode direkte. Disse instruksjonene utføres en for en direkte 
  av x86-prosessoren
  
- Kompileringen av Java-kode gir Java bytecode og denne koden inneholder instruksjoner laget for en virituell maskin,
  JVM (Java Virtual Machine). Denne virituelle maskinen, JVM, er et kompilert program som utfører x86-instruksjoner
  når den kjører for å utføre Java bytecode
  
Generelt vil det gå litt raskere å kjøre maskinkode direkte på prosessoren, siden JVM er et ekstra lag med logikk.
Men blandt annet på grunn av at JIT- (Just in time) kompilering, er Java nesten like raskt. (En så kort algoritme vil
uansett ikke gi noen merkbar forskjell)

