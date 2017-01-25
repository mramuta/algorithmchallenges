def arithmetic_slices(arr)
	slices = 0
	i = 0
	while i < arr.length - 1
		j = i + 1
		diff = arr[j] - arr[i]
		while j < arr.length && arr[j] - arr[j - 1]
			if j > i + 1
				slices += 1
			end
			j += 1
		end
		i += 1
	end
	slices
end

p arithmetic_slices([1,2,3,4])

