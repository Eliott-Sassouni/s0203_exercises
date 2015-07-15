def jumble(sentence)
	if sentence.empty?
		return sentence
	else
		sentence.split('').shuffle.join
	end
end

def mumble(phrase)
	if phrase.empty?
		return phrase
	else
		phrase.downcase
	end
end