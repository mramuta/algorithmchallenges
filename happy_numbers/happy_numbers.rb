# @param {Integer} n
# @return {Boolean}

def sqr_and_sum(n)
	sum = 0
	while n >= 10
		sum += (n % 10) ** 2
		n /= 10
	end
	sum += n ** 2
end

def is_happy(n)
	sums = {}
	loop do 
		p n
		n = sqr_and_sum(n)
		return false if sums[n]
		return true if n == 1
		sums[n] = 1
	end
end

p is_happy(7)
p sqr_and_sum(10)