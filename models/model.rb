require "dinosaurus"

Dinosaurus.configure do |config|
  config.api_key = '"EoOC36jjbsmshkuzitoYp6lq9V7ip1s4IgpjsnUFC4qZvz3TGE"'
end

def changing_words(sentence)
	ignore_these_words = ["be", "are","is","were", "am", "i", "you"]
	list_of_words = sentence.split
	list_of_words.map! do |word|
			if(ignore_these_words.include?(word.downcase))
				word = word
			else
				word = Dinosaurus.synonyms_of(word).sample || word
			end
	end
	return smart_sentence = list_of_words.join(" ")
end




# @string1 = "oriented design, decomposition, encapsulation, and testing. Uses "
# puts @string1.scan(/\s([^\,\.\s]*)/)
# words = @string1.split(/\W+/)

# binding.pry





#sentence= gets.chomp
#word= sentence.split
#puts word






#sentence = "hi mom"
#words = sentence.split(/\s/)
#puts words


#smart_word0 = Dinosaurus.synonyms_of(words[0]).sample
#smart_word1 = Dinosaurus.synonyms_of(words[1]).sample

#puts smart_word0 + " " + smart_word1
