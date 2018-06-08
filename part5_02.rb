# Write a method that takes a string, and returns a boolean indicating
# whether the string has a balanced set of parentheses.

def balancer(string)
  open, closed = 0, 0
  string.chars.each do | char |
    if char == "("
      open += 1
    elsif char == ")"
      closed += 1
    end
    return false if closed > open
  end
  open == closed
end

p balancer("hi") # => true
p balancer("(hi") # => false
p balancer("(hi)") # => true
p balancer(")hi(") # => false
p balancer("(gg(hi)") # => false
p balancer("(gg(hi))") # => true
p balancer("(()))(") # => false
