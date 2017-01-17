# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
	if nums2.length > nums1.length
		buffer = nums2
		nums2 = nums1
		nums1 = buffer
	end
	nums2_hash = {}
	i = 0
	while i < nums2.length
		nums2_hash[i] = nums2[i]
		i += 1
	end
	i = 0
	while i < nums1.length
		if nums1[i] == nums2_hash[0]
			j = 0
			while j < nums2.length
				return [i + 1] if j == nums2.length - 1 && nums2_hash[j] == nums1[i+j]
				break if nums2_hash[j] != nums1[i+j]
				j += 1
			end
		end
		i += 1
	end
	return []
end

p intersection([1],[1,1])
