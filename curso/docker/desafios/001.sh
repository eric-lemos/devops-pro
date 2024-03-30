#!/bin/bash

# Desafio 01 - Banco de Dados Postgresql
docker container run --name="postgres-server" -d -p 5432:5432 \
    -e POSTGRES_DB="curso_docker" \
    -e POSTGRES_USER="docker_usr" \
    -e POSTGRES_PASSWORD="docker_pwd" \
    postgres:latest

docker container ls -a