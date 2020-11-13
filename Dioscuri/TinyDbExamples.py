from tinydb import TinyDB, Query
from cryptography.fernet import Fernet
import json

key = Fernet.generate_key()
with open('mykey.key', 'wb') as mykey:
    mykey.write(key)

f = Fernet(key)

fruit = input("Enter Fruit Name")
fr_count = input("Enter Fruit Count")
#create DB
db = TinyDB('db.json')

res_f = fruit.encode('utf-8')
res_fc = fr_count.encode('utf-8')

#Encrypt Data
fr_e = f.encrypt(res_f)
fc_e = f.encrypt(res_fc)
#adding Elements
db.insert({'type': str(fr_e), 'count': str(fc_e)})
#db.insert({'type': 'peach', 'count': 3})
#print(db.all())

#listing elements individually while decrpyting
for item in db:
    data = item
    
    fr_d = data['type']
    #get data without byte markers
    fr_d = str(fr_d).split("'")[1]
    #Convert stored string to bytes
    fr_d  = bytes(fr_d, 'utf-8')
    print(fr_d)
    print(type(fr_d))
    #decrypt stored bytes
    fru = f.decrypt(fr_d)
    print(fru)
    print(type(fru))
    #convert decrypted bytes to string and remove byte markers
    fru = str(fru).split("'")[1]
    print(fru)
    print(type(fru))

#Querying data
#Fruit = Query()
#print(db.search(Fruit.type == 'peach'))
#print(db.search(Fruit.count > 5))

#Updating Data
# db.update({'count': 10}, Fruit.type == 'apple')
# print(db.all())

# #Removing Entries
# db.remove(Fruit.count < 5)
# print(db.all())

# #Delete DB
db.truncate()
# print(db.all())