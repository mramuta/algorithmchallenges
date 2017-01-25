require 'benchmark'

# @param {String} s
# @return {String}
def frequency_sort(s)
	dict = {}
	i = 0
	while i < s.length
		if !dict[s[i]]
			dict[s[i]] = 1
		else
			dict[s[i]] = dict[s[i]] + 1
		end
		i += 1
	end
	sorted_arr = Array.new(s.length,'')
	i = 0
	char = ''
	while i < s.length
		char = s[i]
		if dict[char]
			sorted_arr[s.length - dict[char]] += char * dict[char]
			dict[char] = nil
		end
		i += 1
	end
	sorted_arr.join('')    
end

p frequency_sort('Aabb')

n = 5000
Benchmark.bm do |x|
 x.report { n.times do   ; frequency_sort("slakfjlkasjflkjsal;fjeofijlkjsfoiajsfojaslkdfjlajifjilajsflksdfkjdfkjfkjfjfjfjjfjfjjfjfjfksljdfjlsslslslslslslkfjkdfkf"); end }
end