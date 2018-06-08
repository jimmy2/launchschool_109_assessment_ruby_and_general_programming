# Write a method that will determine whether an integer is a prime number.
# Don't use the Prime class.

def is_prime?(int)
  i = 2
  while i < (int-1)
    return false if int % i == 0
    i += 1
  end
  true
end


p is_prime?(3) == true
p is_prime?(3) # => true
p is_prime?(4) == false
p is_prime?(4) # => false
p is_prime?(31) == true
p is_prime?(31) # => true
p is_prime?(32) == false
p is_prime?(32) # => false
