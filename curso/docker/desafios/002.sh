#!/bin/bash

# Desafio 02 - Banco de Dados MySQL
docker container run --name="mysql-server" -d -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD="mysql_pwd" \
    -e MYSQL_DATABASE="docker_db" \
    -e MYSQL_USER="docker_usr" \
    -e MYSQL_PASSWORD="docker_pwd" \
    mysql:latest

docker container ls -a