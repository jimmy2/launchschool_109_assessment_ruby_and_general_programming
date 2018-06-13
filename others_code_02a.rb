# Write a method that will return a substring based on a specified indices.

def substring(string, start, finish=nil)
  return string[start] if finish == nil
  string[start..finish]
end

p substring("honey", 0, 2) # => "hon"
p substring("honey", 1, 2) # => "on"
p substring("honey", 3, 9) # => "ey"
p substring("honey", 2) # => "n"
p substring("honey", 0, 2) == "hon" # => true
p substring("honey", 1, 2) == "on" # => true
p substring("honey", 3, 9) == "ey" # => true
p substring("honey", 2) == "n" # => true