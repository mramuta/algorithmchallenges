def can_construct(ransom_note, magazine)
	mag_hash = {}
	magazine.split('').each do |letter|
		if mag_hash[letter]
			mag_hash[letter] = mag_hash[letter] + 1
		else
			mag_hash[letter] = 1
		end
	end
	ransom_note.split('').each do |letter|
		if mag_hash[letter] && mag_hash[letter] > 0
			mag_hash[letter] = mag_hash[letter] - 1
		else 
			return false
		end
	end
	return true
end

p can_construct("a", "b") #-> false
p can_construct("aa", "ab") #-> false
p can_construct("aa", "aab")# -> true