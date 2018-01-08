#!/usr/bin/python
import sys
#Built using Python 3.x


#Exit status of 1 means success

#Variables you should tamper with below
debug = False


#Define Possible Amounts
reg_amounts=['1','2','3','4','5','6','7','8','9']
amounts=['A','10','B','11','C','12','D','13','E','14','F','15']

def single_input(hex):

        i=0

        while len(amounts) > 5:

            if hex == amounts[i]:
                print(amounts[i+1])

            elif hex == reg_amounts[i]:
                print(reg_amounts[i])

            if i < 5:
                i = i + 1





            amounts.pop(0)

def everything_else(hex, char_arr):

    a=-1
    i=0
    dec_place = 0
    math = 0
    total = 0
    Error_Count = 0

    length = len(hex)
    length2 = -len(hex)

    while i <= 12 and a - 1 < length:


        try:

            if char_arr[a] == reg_amounts[i]:


                math = int(char_arr[a]) * 16 ** dec_place
                total = math + total
                a = a - 1
                i = -1
                dec_place = dec_place + 1

            if char_arr[a] == amounts[i] or char_arr[a] == "F":

                #Because Trying to pull F brings index errors, I'm going
                #To take the easy way out and manually set it

                if char_arr[a] == "F":
                    char_arr[a]=15
                    i = 12


                #Laziness always creates more work... But it's easy work :)
                if i != 12:
                    get_actual_value = int(amounts[i+1])
                else:
                    get_actual_value = 15

                math = get_actual_value * 16 ** dec_place
                total = math + total
                dec_place = dec_place + 1
                i = -1
                a = a - 1


        except IndexError:

            Error_Count = Error_Count + 1
            if debug == True:
                print("IndexError")

        i = i + 1

    print("Decimal: " + str(total))

hex = str(input("Enter Hex Number(s): "))



length = len(hex)

char_arr = list(hex)

if length <= 1:
    single_input(hex)
    sys.exit(1)

everything_else(hex, char_arr)
