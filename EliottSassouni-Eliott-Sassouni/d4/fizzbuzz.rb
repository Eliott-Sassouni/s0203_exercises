def fizzbuzz(max_val)
	middle_year = 1
	while middle_year <= max_val
		if middle_year % 15 == 0
			puts "fizzbuzz"
		elsif middle_year % 5 == 0
			puts "buzz"
		elsif middle_year % 3 == 0
			puts "fizz"
		else puts middle_year
		end
		middle_year += 1
	end
end