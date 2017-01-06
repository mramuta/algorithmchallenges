def move_zeroes(nums)
	j = 0
	i = 0
  while i < nums.length - j
  	if nums[i] == 0
  		k = i 
  		while k < nums.length - 1 - j
  			nums[k] = nums[k+1]
  			k += 1
  		end
  		nums[-1 - j] = 0
  		j += 1
  		i -= 1
  	end
  	i += 1
  end
  p j
  nums
end

p move_zeroes([0, 1, 0, 3, 12])
p move_zeroes([0, 0, 0, 0, 0])
p move_zeroes([0, 0, 0, 0, 1])
p move_zeroes([1, 0, 0, 0, 0])