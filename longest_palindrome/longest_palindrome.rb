# @param {String} s
# @return {Integer}
def longest_palindrome(s)
	length = 0 
	letters = {}
	i = 0
	has_odd = false
	while i < s.length
  	if letters[s[i]]
  		letters[s[i]] = letters[s[i]] + 1
  	else
  		letters[s[i]] = 1
  	end
  	i += 1
	end
	letters.each_value do |val|
		if val % 2 == 0  
			length += val
		else
			length += val - 1
			has_odd = true
		end
	end
	if has_odd
		return length + 1
	else 
		return length
	end
end

p longest_palindrome("aaaaa")
p longest_palindrome("aaaaaa")