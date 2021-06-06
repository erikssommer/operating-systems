#! /bin/bash

if [ $(docker ps | wc -l) -gt 1 ]; then
   docker stop $(docker ps -aq) # Stopp alle kjørende containere
fi
if [ $(docker ps -a | wc -l) -gt 1 ]; then
   docker rm $(docker ps -aq) # Slett alle containere
fi
if [ $(docker images | wc -l) -gt 1 ]; then
   docker rmi $(docker images -q) # Fjern alle images
fi
if [ $(docker volume ls | wc -l) -gt 1 ]; then
   docker volume rm $(docker volume ls -q) # Slett alle volumes
fi

echo Docker er clean!
