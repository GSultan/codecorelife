
def reverser(word)
	
	if word == ""
		""
	else
		word[-1] + reverser(word[0..-2])
			
		#word.split.collect { |n| word[n]=word[n-1]}
	end
	
end

puts reverser("john")
