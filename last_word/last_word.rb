# @param {String} s
# @return {Integer}
def length_of_last_word(s)
	arr = s.split(' ')
	return 0 if arr == []
	arr[-1].length
end

p length_of_last_word('hello world')
p length_of_last_word('h')
