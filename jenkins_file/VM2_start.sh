#!/bin/bash

a=$(sudo docker ps | grep petclinic | cut -d' ' -f 1)
echo "ID container="$a
if [ -n "${a}" ]; then
  echo "Conteiner runing"
  docker-compose -f docker-compose_petclinic.yml stop
  docker-compose -f docker-compose_petclinic.yml rm -f
 else
  echo "Conteiner don't run"
fi
docker rmi 10.23.27.6:443/petclinic -f
docker pull 10.23.27.6:443/petclinic:stable
docker-compose -f docker-compose_petclinic.yml up -d
