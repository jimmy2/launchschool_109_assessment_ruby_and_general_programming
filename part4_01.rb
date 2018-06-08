# Write a method that takes a string as an argument
# The method should return the string in reverse order
# Don't use the String#reverse method.

# def reverse(string)
#   i = 0
#   j = -1
#   output = ""
#   while i < string.length
#     output << string[j]
#     i += 1
#     j -= 1
#   end
#   output
# end

def reverse(string)
  output = ""
  array = string.chars
  string.length.times { output << array.pop } 
  output
end

p reverse("It's the final countdown!")
p reverse("")