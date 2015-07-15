def lenient_bouncer
	true
end

def bouncer(age, country)
	if age >= 18 && country.downcase == "south africa"
		puts "You in."
	end
	if age < 18 && country.downcase == "south africa"
		puts "You out."
	end
	if age >= 21 && country.downcase == "usa"
		puts "You in."
	end
	if age < 21 && country.downcase == "usa"
		puts "You out."
	end
end

def strict_bouncer(array_of_people, letter)
	array_of_people_allowed = []
		array_of_people.each do |person|
			if person[1] >= 21 && person[0][0] != letter
				array_of_people_allowed << person.first
			end
		end
	puts array_of_people_allowed
end