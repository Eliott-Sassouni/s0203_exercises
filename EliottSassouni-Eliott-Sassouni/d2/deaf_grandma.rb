puts "Grammy: How are you darling?"
response = gets.strip
randoyear = (rand(21) + 1930)

#while response != response.upcase
#	puts "Grammy: HUH?! SPEAK UP, SONNY!"
#	response = gets.strip
#end

#while response == response.upcase
#	if response != "BYE"
#		puts "Grammy: NO, NOT SINCE #{randoyear}"
#		response = gets.strip
#	end
#end

while response != "BYE"
	if response != response.upcase
		puts "Grammy: HUH?! SPEAK UP, SONNY!"
		response = gets.strip
	end
	if response == response.upcase
		puts "Grammy: NO, NOT SINCE #{randoyear}"
		response = gets.strip
	end
end