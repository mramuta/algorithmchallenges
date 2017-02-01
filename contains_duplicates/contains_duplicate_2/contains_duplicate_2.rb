# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
	dict = {}
	i = 0 
	while i < nums.length
		if !dict[nums[i]]
			dict[nums[i]] = i
		else
			if (i - dict[nums[i]]) <= k
				return true 
			else
				dict[nums[i]] = i
			end
		end
		i += 1
	end
	return false    
end

# p contains_nearby_duplicate([99,99],1)
p contains_nearby_duplicate([1],1)