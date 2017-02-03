# @param {String} s
# @return {Boolean}
def is_palindrome(s)
	# p s.downcase.gsub(/(\W|\s)/,'')
	s.downcase.gsub(/(\W|\s)/,'') == s.downcase.gsub(/(\W|\s)/,'').reverse
end

p is_palindrome('a.b')