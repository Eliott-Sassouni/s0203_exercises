require "sinatra"

get "/" do
	erb :index
end

get "/:operator/:number_1/:number_2" do |operator, number_1, number_2|
	@number_1 = number_1
	@number_2 = number_2
	if operator == "add"
		@number_3 = number_1.to_i + number_2.to_i
		@operator = "sum"
		erb :calculator_index
	elsif operator == "multiply"
		@number_3 = number_1.to_i * number_2.to_i
		@operator = "product"
		erb :calculator_index
	elsif operator == "divide"
		@number_3 = number_1.to_i / number_2.to_i
		@operator = "quotient"
		erb :calculator_index
	elsif operator == "subtract"
		@number_3 = number_1.to_i - number_2.to_i
		@operator = "difference"
		erb :calculator_index
	elsif operator == "exponent"
		@number_3 = number_1.to_i ** number_2.to_i
		@operator = "product"
		erb :calculator_index
	end
end
