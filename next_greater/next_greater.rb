# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
	num_hash = {}
	i = 0 
	while i < nums.length
		j = i
	 	while j < nums.length
	 		if nums[j] > nums[i]
	 			num_hash[nums[i]] = nums[j]
	 			break
	 		end
	 		j += 1
	 	end  
	 	if j == nums.length
			num_hash[nums[i]] = -1
	 	end  
	 	i += 1
	end
	k = 0 
	while k < find_nums.length
		find_nums[k] = num_hash[find_nums[k]]
		k += 1
	end
	find_nums
end

p next_greater_element([4,1,2],[1,3,4,2])