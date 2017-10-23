#Author: NerdOfCode
from random import randint

fortune=[
"You're a noob","Just no",
"no","yes","maybe","great",
"Sure...","I'm not sure", "Think again"
]

#Put max_fortune as one less than actual
#Thanks to arrays starting at 0
max_fortune=len(fortune)-1

random=randint(0,max_fortune)

input = raw_input("Enter your tale: ")

print(fortune[random])
