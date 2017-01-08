def is_anagram(s, t)
  s.split("").sort == t.split("").sort  
end

p is_anagram("aaabbb","bbbaaa")
p is_anagram("aaabbb","bbbcccd")