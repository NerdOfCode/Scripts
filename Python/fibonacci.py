def fib():
    x = 1
    y = 1
    z = 2

    while True:
       print("%i\n%i\n%i" % (x, y, z))
       x = y + z 
       y = x + z
       z = x + y 

       if z > 50:
           exit()
        
fib()
