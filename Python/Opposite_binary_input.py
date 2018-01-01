#Purpose: Enter a few binary characters
#And the opposite will be outputted

#Built using Python 3.x

import sys

u_input = input("Enter binary numbers(ex: 01000101): ")

u_input = list(u_input)

length = len(u_input)

i = length

while length > 0:

    try:

        if u_input[i-1] == "0":

            print("1",end='')
            i -= 1

        else:

            print("0",end='')
            i -= 1

    except IndexError:
        print("")
        sys.exit()



    try:
        u_input.pop()

    #print("Length: " + str(len(u_input)))

    except IndexError:

        sys.exit(-1)
