def find_the_difference(s, t)
	(t.split("").reduce(0){|sum,chr| sum + chr.ord} - s.split("").reduce(0){|sum,chr| sum + chr.ord}).chr
end

# p find_the_difference("abc","abcd")