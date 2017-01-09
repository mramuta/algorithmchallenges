# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  numbers = {}
	i = 0
	while i < nums.length
  	if numbers[nums[i]]
  		return true
  	else
  		numbers[nums[i]] = 1
  	end
  	i += 1
	end 
	return false
end

p contains_duplicate([1,2,3,4,5,6])
p contains_duplicate([1,2,3,4,5,6,6])