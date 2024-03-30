from pymongo import MongoClient
from json import dumps

class database:
    def __init__(self, usr, pwd):
        self._usr = usr
        self._pwd = pwd
    
    def test_connection(self):
        try:
            uri = f"mongodb://{self._usr}:{self._pwd}@localhost:27017/"
            print(dumps(MongoClient(uri).server_info(), indent=4))
            print('\nVocê está conectado ao MongoDB.')
        except:
            print("Ocorreu erro ao tentar conectar ao MongoDB.")

if (__name__ == "__main__"):
    mongo = database('mongo_usr', 'mongo_pwd')
    mongo.test_connection()