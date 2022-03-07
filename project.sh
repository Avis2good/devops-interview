#!/bin/bash

#Creating docker network 

docker network create mynet

docker-compose up -d 

# #Build docker images

# docker build -t clientapp ./clientapp/

# docker build -t dbapp ./dbapp/

# docker build -t postgres ./postgres/


# #Run docker images 

# docker run -d -p 5001:5001 --name=clientapp --net=mynet clientapp

# docker run -e POSTGRES_PASSWORD=postgres -d -p 5000:5000 --name=dbapp --net=mynet dbapp 

# docker run -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 --name=postgres --net=mynet postgres 
