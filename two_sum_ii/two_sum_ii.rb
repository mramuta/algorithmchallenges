# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
	num_len = nums.length
	dic = {}
	i = 0 
  while i < num_len	
  	number = nums[i]
  	if number == target / 2 && dic[number]
  		return [dic[number] + 1,i + 1]
  	end
  	dic[number] = i
  	maybe = dic[target-number]
  	if maybe && maybe != i
  		return [maybe + 1,i + 1]
  		break
  	end
    i += 1
  end
end