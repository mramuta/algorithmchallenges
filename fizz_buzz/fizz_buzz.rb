# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  arr = []
  n.times{|n| arr<<(n+1).to_s}
  len = arr.length
  i = 0 
  while i < len
  	j = i + 1
  	if j % 3 == 0 || j % 5 == 0
  		if j % 3 == 0 && j % 5 == 0
  			arr[i] = 'FizzBuzz'
  		elsif j % 3 == 0
  			arr[i] = 'Fizz'
  		elsif j % 5 == 0
  			arr[i] = 'Buzz'
  		end
  	end
  	i += 1
  end
  arr
end