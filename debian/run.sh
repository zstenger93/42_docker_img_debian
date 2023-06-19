#!/bin/bash

# if [ ! $(docker info &> /dev/null) ]; then 				\
# 	~/docker/init_docker.sh;							\
# fi
echo "Waiting for Docker engine to be ready...";	\
until docker info &> /dev/null
do
    sleep 10
done
docker rm debian &> /dev/null
docker build -t debian ~/docker/debian
docker run -itv ~/:/home/user -e USER=$USER --name debian debian
