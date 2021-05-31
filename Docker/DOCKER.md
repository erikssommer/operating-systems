# Docker

### Hvorfor docker?

* Gjør det enkelt å sette opp og kopiere et helt driftsmiljø
* Bruker mindre ressurser og er raskere å starte og stoppe enn virituelle maskiner (VMer)
* Svært viktig del av continious delivery og continious development
* Kan brukes til å sette opp (orkestrere) store komplekse systemer med Kubernetes (K8s)

Liste alle kjørende containere

```Bash
docker container ps
```

Liste alle containere

```Bash
docker container ps -a
```

Stoppe en container

```Bash
docker container stop 10265b152acb
```

Fjerne en container med hash

```Bash
docker container rm 10265b152acb
```

Fjerne en container med containernavn

```Bash
docker container rm containernavn
```

List alle locale images

```Bash
docker images
```

Kjører og laster ned ubuntu hvis ikke gjort før og åpner i nytt shell i interactive mode (-it)

```Bash
docker container run -it ubuntu bash
```

Lage image ved å bruke mappen sin Dockerfile

```Bash
docker build -t friendlyname .
```

Kjør container fra image i bakgrunn og gi det et navn

```Bash
docker run -d --name [container_navn] [image_navn]
```

Åpner en kjørende container i interactive bash

```Bash
docker exec -it [container-id] bash
```

Kjører nginx på port 7979 og videreført til port 80 til cotaineren

```Bash
docker container run -p 7979:80 nginx
```

Kjør "freindlyname" og mappe port 4000 til 80

```Bash
docker container run -p 4000:80 friendlyname
```

Stopp alle kjørende containere

```Bash
docker stop $(docker ps -aq)
```

Slett alle containere

```Bash
docker rm $(docker ps -aq)
```

Fjern alle images

```Bash
docker rmi $(docker images -q)
```

Slett alle volumes

```Bash
docker volume rm $(docker volume ls -q)
```





