--The Fibonacci Sequence represented in Lua

x = 1
y = 1

count = 0

io.write("Enter number of iterations: ")
limit=tonumber(io.read())

while count < limit do
	z = x + y
	x = y
	y = z
	print(z)
	count = count + 1
end

