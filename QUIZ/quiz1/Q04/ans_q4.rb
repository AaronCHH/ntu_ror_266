arr = [1, "a string", 3.14, [1,2,3,4]]

for item in arr
	if !(item.class == String)
		puts item
	end
end