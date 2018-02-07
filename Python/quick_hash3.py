###################
#WARNING: This program is not suitable for actually hashing passwords
#In a commericial environment as it uses weak hashing algorithms...
#Even with salts...
#Uses Python 3.x+
##################

import sys

try:
	from crypt import *
except:
	print("I do not believe your system has the crypt module")
	sys.exit(1)
  
message = ""
specified_salt = ""

if len(sys.argv) > 2:
	message = sys.argv[1]
	specified_salt = sys.argv[2]

if not message or not specified_salt:
	
	message = input("Enter message: ")
	specified_salt = input("Please enter salt(More than 2 char at least): ");

password = crypt(message, specified_salt)

print(password)
