# Write a method that takes two arguments: the first a starting number,
# and the second, an ending number.  Print out all numbers between the
# two numbers, except if a number is divisible by 3, print "Fizz", if a 
# number is divisible by 5, print "Buzz", and finally if a number is 
# divisible by both 3 and 5, print "FizzBuzz".

def fizbuzz(start, finish)
  output = (start..finish).to_a.map do | int |
    case
    when (int % 5 == 0) && (int % 3 == 0) then "FizzBuzz"  
    when int % 5 == 0 then "Buzz"  
    when int % 3 == 0 then "Fizz"  
    else int
    end 
  end
  output.join(", ")
end

p fizbuzz(1, 15)
p fizbuzz(16, 45)