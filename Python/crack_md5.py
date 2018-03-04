#Crack MD5 hash from a table... This file will generate that
#Note: Built using Python 3.x

import hashlib, sys

target = input("Enter target MD5 hash: ")
#Starting string
current_str = ""
line_number = 0
total_interations = 0

if current_str:
    h = hashlib.new("md5")
    h.update(current_str.encode())
    print(h.hexdigest())
    sys.exit(1)

while True:
    h = hashlib.new("md5")
    h.update(current_str.encode())
    if  h.hexdigest() == target:
        print("Password: ",current_str)
        print("Attempts: ",total_interations)
        sys.exit(1)
    else:
        with open('Crypto/password_list.txt') as file:
            lines = file.readlines()

            total_interations += 1
            try:
                current_str = lines[line_number].rstrip()
                line_number += 1
            except:
                line_number -= 1
                print("Could not find password... Consider using a more precise password list")
                print("Tried: ", total_interations-1, "passwords...")
                sys.exit(1)
