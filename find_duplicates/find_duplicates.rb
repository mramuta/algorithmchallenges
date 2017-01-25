require 'benchmark'

# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
	dict = {}
	i = 0
	num = 0
	while i < nums.length
		num = nums[i]
		if !dict[num]
			dict[num] = 1
			nums[i] = nil
			next
		end
		i += 1
	end
	nums.compact
end


p find_duplicates([4,3,2,7,8,2,3,1])

n = 50000
Benchmark.bm do |x|
 x.report { n.times do   ; find_duplicates([4,3,2,7,8,2,3,1]); end }
end