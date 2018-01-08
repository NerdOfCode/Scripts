import math

#0 = orange || 1 = white
#white + white = white
#White + orange = orange
#orange + orange = orange

#x=0
#y=1

print "(0 for orange and 1 for white)"
x=int(raw_input("Enter flower 1: "))
y=int(raw_input("Enter flower 2: "))

w1=1
w2=1

desired_output=0

new = (x * w1) + (y * w2)

newer = 1/(1 + math.exp(-new))

error = desired_output - newer


print "Output: " + str(newer)

print "Error: " + str(error)


if newer > .75:
	print "White flower predicted"
else:
	print "Orange flower predicted"
