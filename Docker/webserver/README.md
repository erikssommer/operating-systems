Oppsett av en apache sever med port forwarding

Med nginx:

```Bash
docker run -p 7979:80 nginx
```


Med ubuntu som installerer apache (med commit av image):

```Bash
docker run -dit ubuntu /bin/bash

docker exec -it [id] bash

apt update

apt install -y apache2

docker commit [id] [navn]

docker run -p 7878 -dit [navn] /bin/bash

docker exec -it [id] bash

/etc/init.d/apache2 start

ps aux | grep apache

cd /var/www/html/

echo "Hello from docker image" > index.html

curl http://localhost
```
