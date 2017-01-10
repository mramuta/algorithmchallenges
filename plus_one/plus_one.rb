# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
	(digits.join('').to_i + 1).to_s.split('').map{|i| i.to_i}
end

p plus_one([9])