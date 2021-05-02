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

### Oppgave 5

En context switch er det som skjer når OS stopper en kjørende prosess, skifter den ut og setter en annen prosess til
å kjøre. I korte trekk:

- OS lagrer all informasjon om den kjørende prosessen i PCB (Prosess Control Block), inkludert alle verdier i
CPU-registre. Også pagetabellen i MMU lagres.
  
- Den gamle prosessen settes i riktig kø; i ready list om den var klar til å kjøre flere instruksjoner og ikke venter
på noe.
  
- All den tilsvarende informasjonen lastes inn for den nye prosessen, inkludert alle registerverdier slik de var etter
at den nye prosessen utførte sin siste instruksjon før denne ble svitsjet ut.
  
- OS sørger for at den nye prosessen fortsetter med sin neste instruksjon.

### Oppgave 6

Multithreading i betydning at flere tråder kjøres samtidig i samme prosess betyr at flere eksekveringer av samme kode
kjøres samtidig, enten ved  multitaske på samme CPU med context switching eller ved å kjøre samtidig i reel tid på hver
sin CPU-core. I begge tilfeller er det OS som styrer tildelingen av CPU-tid for hver tråd, på samme måte som OS gjør
det for uavhengige prosesser (trådene blir schedulert av OS som uavhengige enheter).

Hyperthreading styres derimot av CPU'en selv. Om en CPU har kapasitet for 2 tråder, scheduleres begge av OS til denne
CPU'en. Deretter switcher CPU'en selv mellom de to trådene. Hvis den ene må vente på RAM, kan den andre tråden utføre
instruksjoner i ALU, ofte er denne delt mellom de to trådene. Men de har hvert sitt uavhengige sett med registere,
slik at det ikke skjer noen context switch når de byttes. Et slikt bytte skjer på nanosekund-nivå og ikke i løpet av
mikrosekunder som ved ordinær multithreading (hyperthreading er et spesifikt begrep for Intel-prosessorer. Det
generelle begrepet er SMT, Simultaneous Multithreading, og dette må ikke forveksles med vanlig OS-styrt multithreading).

Ja, hvis to tråder fra samme prosess blir schedulert av OS til en CPU med hyperthreading, kan CPU'en på samme måte
som forklart ovenfor switche mellom de to trådene og dermed utnyttes effekten av hyperthreading.

### Oppgave 7

OS schedulerer de 6 prosessene slik at det til en hver tid er 4 av dem som kjører på hver av CPU-ene. De som venter
swithces i løpet av brøkdelen av et sekund fortløpende inn slik at alle de 6 prosessene får omtrent like mye CPU-tid,
det vil si 4/6 eller ca 67% CPU-tid.

### Oppgave 8

Det er totalt 6x30 = 180 CPU-minutter som må prosseseres. Jevnt fordelt på 4 CPU'er vil dette utføres på 180/4 = 45min
og etter denne tiden er alle de 6 prosessene ferdig samtidig.

Alternativt kan man si at tilgang til 4/6 CPU i 45 minutter gjør at den enkelte kan utføre (4/6)x45 = 30 CPU-minutter
med arbeid.

