require "sinatra"

get "/" do
	erb :index
end

get "/about" do
	erb :about_index
end

get "/contact" do
	erb :contact_index
end