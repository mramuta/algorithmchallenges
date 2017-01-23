# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  dic = {}
  i = 0
  while i < nums.length
    if dic[nums[i]]    
      nums[dic[nums[i]]] = nil
      nums[i] = nil
    else
      dic[nums[i]] = i
    end
    i +=1
  end
  nums.compact
end

p single_number([1,2,1,3,2,5])