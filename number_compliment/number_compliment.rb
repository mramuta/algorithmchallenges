# @param {Integer} num
# @return {Integer}
def find_complement(num)
	num = num.to_s(2).split('').map! do |bit|
		if bit == '1'
			'0'
		else
			'1'
		end
	end
	num.join('').to_i(2)
end

p find_complement(5)