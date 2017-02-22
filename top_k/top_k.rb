# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
	dict = {}
	sorted = Array.new(nums.length * 2 )
	j = 1
	i = 0
	while i < nums.length
		if !dict[nums[i]]
			dict[nums[i]] = 1
			sorted.unshift(nums[i])
			j += 1
		else 
			dict[nums[i]] = dict[nums[i]] + 1
			p dict[nums[i]] + j
			sorted[dict[nums[i]] + j] = nums[i]
		end
		i += 1
	end
	p sorted
	sorted = sorted.compact
	res = []
	i = -1
	while i >= -k
		res << sorted[i]
		i -= 1
	end
	res
end

# p top_k_frequent([1,2],2)
# p top_k_frequent([1,1,1,2,2,3],2)
# [-1,2]
p top_k_frequent([4,1,-1,2,-1,2,3],2)






