def number_of_arithmetic_slices(a)
	slices = 0
	i = 0
	while i < a.length - 1
		j = i + 1
		diff = a[j] - a[i]
		while j < a.length && (a[j] - a[j - 1]) == diff
			if j > i + 1
				slices += 1
			end
			j += 1
		end
		i += 1
	end
	slices
end

p number_of_arithmetic_slices([1,2,3,4])
# should be 2
p number_of_arithmetic_slices([1,2,3,8,9,10])

