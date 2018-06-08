# Write a method that takes two numbers.  It should print out all
# prime numbers between the two numbers.  Don't use Ruby's prime class.

def find_primes(start, finish)
  output = (start..finish).to_a.select do | int |
    is_prime?(int)
  end
  output.join(", ")
end

def is_prime?(integer)
  i = 2
  while i < (integer-1)
    return false if integer % i == 0
    i += 1
  end
  true
end


p find_primes(3, 10)
# => 3, 5, 7

p find_primes(20, 50)
# => 23, 29, 31, 37, 41, 43, 47