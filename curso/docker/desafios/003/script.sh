#!/bin/bash

# Desafio 03 - Banco de Dados MongoDB
docker container run --name="mongodb-server" -d -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME="mongo_usr" \
    -e MONGO_INITDB_ROOT_PASSWORD="mongo_pwd" \
    mongo:latest

docker container ls -a