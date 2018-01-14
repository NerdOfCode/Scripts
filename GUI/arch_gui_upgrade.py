#!/usr/bin/python3

from tkinter import *
import tkinter, os, sys

print("Warning: This script needs sudo access as it upates/upgrades your system via pacman")

def runCheck():
	
	os.system("sudo pacman -Syu")
	print("Updating")
	sys.exit(1)


#Default Button Value
update = 0
#Set root
root = tkinter.Tk()


#set title
root.title("Arch-Linux Update/Upgrade")

submit = tkinter.Button(root, text = "Update", width = 50, height = 5, command = 
runCheck)

submit.pack()

root.mainloop()
