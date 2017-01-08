require 'benchmark'
# @param {String} s
# @return {Integer}
def title_to_number(s)
	i = -1
	j = 0
	val = 0
	while i >= -s.length
		h = (s[i].ord - 64) * 26 ** j
		val += h
		j += 1
		i -= 1
	end    
	val
end

p title_to_number("AAA")#703
p title_to_number("AZ")#52
p title_to_number("AA")#27

n = 500000
Benchmark.bm do |x|
  x.report { n.times do   ; title_to_number("AAA"); end }
end
