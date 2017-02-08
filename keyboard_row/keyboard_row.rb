# @param {String[]} words
# @return {String[]}
def find_words(words)
	i  = 0 
	row  = 0
	keys_rows = {"q" => 1,"w" => 1,"e" => 1,"r" => 1,"t" => 1,"y" => 1,"u" => 1,"i" => 1,"o" => 1,"p" => 1, "a"=> 2,"s"=> 2,"d"=> 2,"f"=> 2,"g"=> 2,"h"=> 2,"j"=> 2,"k"=> 2,"l"=> 2,"z"=> 3,"x"=> 3,"c"=> 3,"v"=> 3,"b"=> 3,"n"=> 3,"m"=> 3}
	while i < words.length
		row = keys_rows[words[i][0].downcase]
		j = 1
	while j < words[i].length
		if keys_rows[words[i][j].downcase] != row || !(1..3).include?(row)
			words.delete_at(i)
			i -= 1
			break
		end
		j += 1
	end
	i += 1
	end
	words
end

p find_words(["Hello", "Alaska", "Dad", "Peace"])




