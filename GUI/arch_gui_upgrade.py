#!/usr/bin/python3

from tkinter import *
import tkinter, os, sys

#Try to support python2 and 3
try:
	from Tkinter import *
	import Tkinter, os, sys

except ImportError:
	from tkinter import *
	import tkinter, os, sys

print("Warning: This script needs sudo access as it upates/upgrades your system via pacman")

def runCheck():
	
	os.system("sudo pacman -Syu")
	print("Updating")
	root.destroy()
	sys.exit(1)


#Obviously used for exiting GUI and script!
def exit():
	root.destroy()
	sys.exit(1)


#Default Button Value
update = 0
#Set root
root = tkinter.Tk()

#Window size
root.minsize(300,150)
#root.maxsize(750,750)

#set title
root.title("Arch-Linux Update/Upgrade")

submit = tkinter.Button(root, text = "Update", command = runCheck)
submit.place(relx=.4, rely=.4)

cancel = tkinter.Button(root, text = "Cancel ", command = exit)
cancel.place(relx=.4, rely=.6)

root.mainloop()
