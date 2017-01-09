# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
	i = 0
	num_hash = {}
	while i < nums.length
		el = nums[i]
		if num_hash[el]
			num_hash[el] = num_hash[el] + 1
		else
			num_hash[el] = 1
		end
		return el if num_hash[el] > nums.length / 2
		i += 1
	end 
end