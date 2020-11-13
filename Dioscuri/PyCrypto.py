from cryptography.fernet import Fernet

key = Fernet.generate_key()

#Create Encryption Key
with open('mykey.key', 'wb') as mykey:
    mykey.write(key)

#Print Encryption Key
with open('mykey.key', 'rb') as mykey:
    key = mykey.read()
print(key)

#Encrypt the data
f = Fernet(key)
original = 'apple'
res = bytes(original, 'utf-8')
encrypted = f.encrypt(res)
print(encrypted)