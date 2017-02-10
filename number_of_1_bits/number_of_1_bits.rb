# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
	n.to_s(2).delete('0').length
end

p hamming_weight(11)