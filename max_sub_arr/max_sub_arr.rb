# # @param {Integer[]} nums
# # @return {Integer}
# def max_sub_array(nums)
# 	max = nums[0]
# 	sum = 0
# 	i = 0 
# 	while i < nums.length
# 		j = i
# 		while j < nums.length
# 			sum = nums[i..j].reduce(:+)
# 			if max < sum
# 				max = sum
# 			end
# 			j += 1
# 		end
# 		i += 1
# 	end    
# 	max
# end

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
	current_sum = nums[0]
	max_sum = current_sum
	i = 1
	while i < nums.length
		num = nums[i]
		current_sum = [num,current_sum + num].max
		max_sum = [max_sum, current_sum].max
		i += 1
	end
	max_sum
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])