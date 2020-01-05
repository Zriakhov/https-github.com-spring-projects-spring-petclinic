#!/bin/bash

a=$(sudo docker ps | grep petclinic | cut -d' ' -f 1)
echo "ID container="$a
if [ -n "${a}" ]; then
  echo "Conteiner runing"
  docker-compose -f docker-compose_petclinic.yml stop
  docker-compose -f docker-compose_petclinic.yml rm -f
 else
  echo "Conteiner do'nt run"
fi
docker rmi 192.168.2.112:5000/petclinic -f
#docker rmi 10.23.27.6:5000/petclinic -f
docker pull 192.168.2.112:5000/petclinic:latest
#docker pull 10.23.27.6:5000/petclinic:latest
docker-compose -f docker-compose_petclinic.yml up -d
