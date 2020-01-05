#!/bin/bash

a=$(sudo docker ps | grep petclinic | cut -d' ' -f 1)
echo "a="$a

if [ -n "${a}" ]; then
  echo "Conteiner runing"
  sudo docker stop $a
  else
   echo "Conteiner do'nt run"
fi
sudo docker run -p 8080:8080 -d 192.168.2.112:5000/petclinic:latest

#sudo docker run -p 8080:8080 -d 10.23.27.6:5000/petclinic:latest
