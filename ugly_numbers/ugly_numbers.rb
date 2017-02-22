require 'prime'
# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return true if num == 1
  return false if num == -1
  return false if num == 0
  return false if num == -2147483648
  num = num.abs
  prime_factor_arr = []
  primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997]
  until Prime.prime?(num)
    primes.each do|prime|
      if (num % prime) == 0
        if prime != 2 && prime != 3 && prime != 5 
          return false
        end
        prime_factor_arr << prime
        num /= prime
        break
      end
    end
  end
  return true
end

# p is_ugly(-1000)




require 'prime'
def prime_factors(num)
  return [1] if num == 1
  prime_factor_arr = []
  primes = []
  Prime.each(1000){|prime| primes << prime}
  until Prime.prime?(num)
    primes.each do|prime|
      if (num % prime) == 0
        prime_factor_arr << prime
        num /= prime
        break
      end
    end
  end
  prime_factor_arr << num
  prime_factor_arr
end

p prime_factors(1000)