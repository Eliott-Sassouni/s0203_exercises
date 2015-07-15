def reverse(array)
	reversed_array = []
	while array != []
		if array != []
			reversed_array << array.last
		end
		array.pop
	end
	puts reversed_array
end

reverse([1, 2, 3])