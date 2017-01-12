# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
	x_bin_str =  x.to_s(2)
	y_bin_str =  y.to_s(2)
	if x_bin_str.length > y_bin_str.length
		y_bin_str = ("0" * (x_bin_str.length - y_bin_str.length)) + y_bin_str
	elsif x_bin_str.length < y_bin_str.length
		x_bin_str = ("0" * (y_bin_str.length - x_bin_str.length)) + x_bin_str
	end
	i = 0 
	j = 0
	while i < x_bin_str.length
		j += 1 if x_bin_str[i] != y_bin_str[i]
		i += 1
	end
	j
end

p hamming_distance(3,34)