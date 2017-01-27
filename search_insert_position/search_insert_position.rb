# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
	position = 0
	i = 0     
	while i < nums.length
		return i if nums[i] == target
		position += 1 if nums[i] < target
		i += 1
	end	
	position
end