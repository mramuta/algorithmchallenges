# def two_sum(nums, target)
# 	num_len = nums.length
# 	i = 0 
#     while i < num_len	
#     	j = i + 1
#         while j < num_len
#             return [i,j] if nums[i] + nums[j] == target
#             j += 1
#         end
#        i += 1
#     end
# end
def two_sum(nums, target)
	num_len = nums.length
	dic = {}
	i = 0 
  while i < num_len	
  	number = nums[i]
  	if number == target / 2 && dic[number]
  		return [dic[number],i]
  	end
  	dic[number] = i
  	maybe = dic[target-number]
  	if maybe && maybe != i
  		return [maybe,i]
  		break
  	end
    i += 1
  end
end
# p two_sum([2, 7, 11, 15],9)
p two_sum([0,4,3,0],0)