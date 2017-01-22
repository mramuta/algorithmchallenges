# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
	if k != 0 &&  k % nums.length != 0
		k = nums.length - k % nums.length
		shifted = nums[k..nums.length] + nums[0..k - 1]
		i = 0
		while i < nums.length
			nums[i] = shifted[i]
			i += 1
		end
	end
	# p nums
end
rotate([1,2,3,4,5,6,7],3)
rotate([1,2],1)