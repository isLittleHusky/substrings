dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	output = Hash.new(0)
	for substring in dictionary
		for word in string.split(" ")
			if word.include?(substring)
				output[substring] += 1
			end
		end
	end
	return output
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)