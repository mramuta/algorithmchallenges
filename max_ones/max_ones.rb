# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
	max = 0 
	buffer = 0
	i = 0
	while i < nums.length
		if nums[i] == 0
			buffer = 0
		else
			buffer += 1
			if buffer > max
				max = buffer
			end
		end
		i += 1
	end 
	max
end

p find_max_consecutive_ones([1,1,0,1,1,1])