require 'benchmark'
def is_anagram(s, t)
  s.split("").sort == t.split("").sort  
end

def is_anagram(s, t)
	return false if s.length != t.length
	letters = {}
	i = 0
  while i < s.length
  	if letters[s[i]]
  		letters[s[i]] = letters[s[i]] + 1
  	else
  		letters[s[i]] = 1
  	end
  	i += 1
  end
  i = 0 
  while i < t.length
  	if letters[t[i]] && letters[t[i]] > 0
  		letters[t[i]] = letters[t[i]] - 1
  	else
  		return false
  	end
  	i += 1
  end
  return true
end

p is_anagram("aaabbb","bbbaaa")
p is_anagram("aaabbb","bbbcccd")

n = 50000
Benchmark.bm do |x|
  x.report { n.times do   ; is_anagram("aaaabbbbcccc","ccccaabbbbaa"); end }
end