class Calc
	attr_reader :happy, :sad

	def initialize
		@happy = ["delight", "delighted", "delightful", "happy", "glad", "joy", "joyful", "merry", "pleasant"]
		@sad = ["disappointed", "miserable", "sad", "sorrow", "unhappy"]
	end

	def mood_of(text)
		validate(text) == false ? "Unknown" : happy_or_sad(text)
	end

private
	def happy_or_sad(text)
		case
			when total_word_count(text, @happy) >= (total_word_count(text, @sad) * 1.5) then "Happy"
			when total_word_count(text, @sad) >= (total_word_count(text, @happy) * 1.5) then "Sad"
			else "Unknown"
		end
	end

	def word_count(text, comparison_word)
		count = 0
		text.each { |word| count+=1 if word == comparison_word }
		count
	end

	def total_word_count(text, array_of_words)
		count = 0 
		array_of_words.each { |word| count += word_count(text, word)}
		count
	end

	def validate(text)
		false if (total_word_count(text, @happy) + total_word_count(text, @sad)) == 0
	end
end
