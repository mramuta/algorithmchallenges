# def find_the_difference(s, t)
# 	(t.split("").reduce(0){|sum,chr| sum + chr.ord} - s.split("").reduce(0){|sum,chr| sum + chr.ord}).chr
# end

# p find_the_difference("abc","abcd")

def find_the_difference(s, t)
	(t.split("").reduce(0){|sum,chr| sum + chr.ord} - s.split("").reduce(0){|sum,chr| sum + chr.ord}).chr
	i = 0
	sum_s = 0
	sum_t = 0
	while i < t.length
		sum_s += s[i].ord if i < s.length
		sum_t += t[i].ord
		i += 1
	end
	(sum_t-sum_s).chr
end
p find_the_difference("abc","abcd")