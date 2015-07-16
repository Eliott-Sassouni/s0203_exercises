require "sinatra"

todd = {name: "Todd", number: 1234567890}
michael = {name: "Michael", number: 2345678901}
tyler = {name: "Tyler", number: 3456789012}
contacts = [todd, michael, tyler]

get "/" do
	@contacts = contacts
	erb :index
end

get "/contacts" do
	@contacts = contacts
	erb :contacts_index
end

get "/contacts/:name" do |person|
	@contacts = contacts
	@found_person = nil
	contacts.each do |contact|
		if contact[:name].upcase == person.upcase
			@found_person = contact
		end
	end
	erb :name_index
end