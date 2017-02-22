# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
	return nums1 if n == 0
	i = -1
	first = nums2[0]
	while i < m
		i += 1
		break if nums1[i] > first
	end     
	end_arr = nums1[i..-1].compact
	j = 0
	while j < n
		nums1[i] = nums2[j]
 		i += 1
 		j += 1
	end
	i = -1
	while i > -end_arr.length
		nums1[i] = end_arr[i]
		i -= 1
	end
	nums1
end

p merge([1,0],1,[2],1)





