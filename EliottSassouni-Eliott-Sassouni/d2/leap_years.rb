puts "Please provide a starting year:"
init_year = gets.strip
puts "Please provide an ending year:"
end_year = gets.strip

mid_year = (init_year.to_i + 1)

if init_year.to_i%400 == 0 || init_year.to_i%4 == 0
	puts "The initial year, #{init_year}, is a leap year."
elsif init_year.to_i%100 != 0
	puts "The initial year is not a leap year."
end

while mid_year.to_i < end_year.to_i
	if mid_year.to_i%400 == 0 || mid_year.to_i%4 == 0
		puts "This middle year, #{mid_year}, is a leap year."
	end
	mid_year = (mid_year.to_i + 1)
end

if end_year.to_i%400 == 0 || end_year.to_i%4 == 0
	puts "In fact, the ending year, #{end_year}, is a leap year."
elsif end_year.to_i%100 != 0
	puts "Coincidentally, the end year is not a leap year."
end