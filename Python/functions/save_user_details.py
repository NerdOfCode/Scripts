
#Author: NerdOfCode
#Purpose: A function that saves important user details to a file
#Tested: Ubuntu 17.04
#Python V: 2.x

#How to use:
#Import first by using import "save_user_details.py"
#Ex call Function: 
#user_creds_save("nate",1500,"nate.txt")


import sys, os

#Fname --> File name to store creds to
def user_creds_save(name,score,fname):
	#print "User is %s and their score is %i" % (name, score)

	#Check if file already exists
	if os.path.isfile(fname):
		#open file and spill contents
		file = open(fname, "r")
		for line in file:
			if name in line:
				name=line
				#print name
			elif score in line:
				score=line
				#print score
			elif fname in line:
				fname=line
				#print fname
		if name and score and fname:
			return (name, score, fname)
	else:
		file = open(fname, "w")
		file.write("Name: %s\n" % name)
		file.write("Score: %s\n" % score)
		#IFN --> Intended File Name
		file.write("IFN: %s\n" % fname)
		file.close()


#Ex call Function: 
func = user_creds_save("NerdOfCode","1500","NerdOfCode.txt")
