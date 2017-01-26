# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
	nums.length * (nums.length + 1) / 2 - nums.reduce(:+)
end

p missing_number([0,1,2,3,5])