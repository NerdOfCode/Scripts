--Represent selection sort in Lua

unsorted_ints = {-30,5, 2, 3, 50, -240, 235, 80, -234, 454, 19,-1, 234}
sorted_ints ={}

--used to get the lowest value in array for comparing
function get_low()
	lowest_value = unsorted_ints[1]
	remove_element = 0
	for n = 1, #unsorted_ints do
		if not (unsorted_ints[n] > lowest_value) then
			lowest_value = unsorted_ints[n]
			remove_element = n
		end

	end
	table.remove(unsorted_ints,remove_element)
	table.insert(sorted_ints,lowest_value)
	return lowest_value
end

for n = 1, #unsorted_ints do
	 get_low()
end

--Iterate and write through sorted table
for n = 1,#sorted_ints do
	print(sorted_ints[n])
end
