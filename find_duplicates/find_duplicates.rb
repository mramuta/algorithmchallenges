def find_duplicates(arr)
	dict = {}
	i = 0
	while i < arr.length
		if !dict[arr[i]]
			dict[arr[i]] = 1
			arr.delete_at(i)
			next
		end
		i += 1
	end
	arr
end

p find_duplicates([4,3,2,7,8,2,3,1])