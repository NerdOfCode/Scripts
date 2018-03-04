#Crack MD5 hash from a password list
#Note: Built using Python 3.x

import hashlib, sys, os

###CHANGE THIS###
#This is the list that this program will use to bruteforce with...
pass_list="example.txt"


if not os.path.exists(pass_list):
        print("Please provide a password list to use with bruteforce...")
        sys.exit(-1)


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
        with open(pass_list) as file:
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
