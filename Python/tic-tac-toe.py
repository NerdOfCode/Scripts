################################################3
#In extremely early stages... There is no win checking
###############################################4

import sys
from pprint import pprint

def init():
	global row1
	global row2
	global row3
	row1 = [0, 0, 0]
	row2 = [0, 0, 0]
	row3 = [0, 0, 0]
	pprint(row1)
	pprint(row2)
	pprint(row3)

def current_game():
	pprint(row1)
	pprint(row2)
	pprint(row3)

def move():
	global count
	count = 0

	if count == "0":
		turn = user
		count += 1
		first_play == False
	elif first_play == False or count != "0":
		turn = user2
		count == 1

	new_move = input("Enter move(ex: 1,3): ")
	new_move = new_move.split(",")
	row = new_move[0]
	column = int(new_move[1])

	#Gurantee no extra whitespaces
	row = row.replace(" ", "")
	int(row)

	if row == "1":
		row1[column] = turn
	elif row == "2":
		row2[column] = turn
	elif row == "3":
		row3[column] = turn
	else:
		print("Unrecognized input...")

print("Only two player mode is currently available...")
init()

print("Enter user one's character(ex: 'x'): ")
user = input()

print("Enter user two's character(ex: o): ")
user2 = input()

#For player switching technique
first_play = True

while True:
	move()
	current_game()

