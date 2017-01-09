# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
	num_hash = {"1" => 1,"2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,"7" => 7,"8" => 8,"9" => 9,"0" => 0}
	letter_hash = {1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9", 0 => "0"}
	if num2.length > num1.length
		short_num = num1
		long_num = num2
	else
		short_num = num2
		long_num = num1
	end
	i = -1
	j = 0
	remainder = 0
	while i >= -short_num.length 
		number_a = num_hash[short_num[i]]
		number_b = num_hash[long_num[i]]
		if (number_b + number_a + remainder) > 9
			sum = (number_b + number_a + remainder) - 10
			long_num[i] = letter_hash[sum]
			remainder = 1
		else
			sum = number_b + number_a + remainder
			long_num[i] = letter_hash[sum]
			remainder = 0
		end
		i -= 1
	end
	while remainder != 0 && i >= -long_num.length
		number_b = num_hash[long_num[i]]
		if (number_b + remainder) > 9
			sum = (number_b + remainder) - 10 
			long_num[i] = letter_hash[sum]
			remainder = 1
		else
			sum = number_b + remainder
			long_num[i] = letter_hash[sum]
			remainder = 0
		end
		i -= 1
	end
	if remainder != 0
		return "1" + long_num
	else 
		return long_num
	end
end

p add_strings('1','23')
p add_strings('9','11')
p add_strings('21','19')
p add_strings('99','19')

