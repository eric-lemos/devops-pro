#!/bin/bash

# Desafio 03 - Banco de Dados MongoDB
docker container run --name="mongodb-server" -d -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME="mongo_usr" \
    -e MONGO_INITDB_ROOT_PASSWORD="mongo_pwd" \
    mongo:latest

docker container ls -a

# MongoDB no DBeaver é pago!
# Então, vamos testar com Python =)
# Volte para /003, caso for usar test_connection.py

#python3 -m venv .env
#source .env/bin/activate
#python3 -m pip install pymongo
#python3 test_connection.py
