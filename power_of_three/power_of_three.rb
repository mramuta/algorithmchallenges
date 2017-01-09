# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
	[1, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683, 59049, 177147, 531441, 1594323, 4782969, 14348907, 43046721, 129140163, 387420489, 1162261467].include?(n)    
end


p is_power_of_three(3)
p is_power_of_three(4)