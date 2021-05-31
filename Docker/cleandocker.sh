#! /bin/bash

docker stop $(docker ps -aq) # Stopp alle kjørende containere
docker rm $(docker ps -aq) # Slett alle containere
docker rmi $(docker images -q) # Fjern alle images
docker volume rm $(docker volume ls -q) # Slett alle volumes

echo Docker er clean!
