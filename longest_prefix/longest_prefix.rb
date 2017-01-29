# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
	return '' if !strs[0]
	prefix = ''
	i = 0 
	letter = ''
	while i < strs[0].length
		letter = strs[0][i]
		prefix += letter
		strs.each do |str|
			if letter != str[i]
				i = strs[0].length
				prefix = prefix.chop
				break 
			end
		end
		i += 1
	end
	prefix
end

p longest_common_prefix(['aa','ab'])
p longest_common_prefix(['a','b'])