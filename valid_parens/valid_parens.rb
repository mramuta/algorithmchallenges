# @param {String} s
# @return {Boolean}
def is_valid(s)
	paren_state = {"("=>"open","{"=>"open","["=>"open"}
	paren_pair = {")"=>"(","}"=>"{","]"=>"["}
	i = 0 
	return false if s.length % 2 != 0
	while i < s.length
		if paren_state[s[i]]
			
		elsif paren_pair[s[i]]
			paren_state[s[i]]
		end
		i += 1
	end
	return true
end

p is_valid("{}()[]")
p is_valid("{}()[][")
p is_valid("{}()[][)")
p is_valid("({}()[])")