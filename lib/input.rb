class Input
	def standardize(text)
		make_into_array(make_lowercase(remove_punctuation(text)))
	end

private
	def remove_punctuation(text)
		text.gsub(/[^a-z0-9\s]/i, '')
	end

	def make_lowercase(text)
		text.downcase
	end

	def make_into_array(text)
		text.split(" ")
	end
end