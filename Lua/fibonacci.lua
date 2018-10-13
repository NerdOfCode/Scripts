--The Fibonacci Sequence represented in Lua

local x = 1
local y = 1

local count = 0

io.write("Enter number of iterations: ")
local limit=tonumber(io.read())

while count < limit do
	z = x + y
	x = y
	y = z
	print(z)
	count = count + 1
end

