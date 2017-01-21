# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
	pattern = pattern.split('')
	str = str.split(' ')    
	used = []
	dic = {}
	return false if str.length != pattern.length
	i = 0 
	while i < str.length
		if dic[pattern[i]]
			return false if dic[pattern[i]] != str[i]
		else
			return false if used.include?(str[i])
			dic[pattern[i]] = str[i]
			used << str[i]
		end
		i += 1
	end
	return true
end

p word_pattern("abba", "dog cat cat dog")
p word_pattern("abbc", "dog cat cat dog")
p word_pattern("abbc", "dog cat cat cat")
p word_pattern("abba", "dog cat cat fish")







