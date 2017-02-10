# @param {String} str
# @return {Boolean}
def repeated_substring_pattern(str)
	i = 0
	while i < str.length / 2   
		if str.length % (i + 1) == 0 
			if str[0..i] * (str.length / (i + 1)) == str
				return true
			end
		end
		i += 1
	end
	return false
end

p repeated_substring_pattern('abab')
p repeated_substring_pattern('aba')
p repeated_substring_pattern('aaaaaaaa')