def min_moves(nums)
	moves = 0
	nums.sort!
	j = 0
	i = 0
	k = nums.length - 1 
	while i < nums.length - k
		p nums
		if nums[i] < nums[i+k]
			l = 0
			while l < k
				nums[l] = nums[l] + 1
				l += 1
			end
			nums.sort!
			j += 1
			i = 0
			next
		end
		i += 1
	end
	j
end


p min_moves([1,2,3])
p min_moves([1,4,9])
p min_moves([1,2,9,10])
p min_moves([1,2])