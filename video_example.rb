# def amethod(param)
#   param += " world"
#   param << " world"
# end

# str = "hello"

# amethod(str)

# puts str


# a = "hello"
# b = a

# b << " world"

# puts a
# puts b

# a += b

# b << " universe"

# puts a
# puts b

# def prefix!(str)
#   str.prepend("Mr. ")
# end

# name = "Joe"

# prefix!(name)

# puts name

# a = [1,2,3,4,5,6,7,8,9,10]

# output = a.map do | n |
#   puts n
# end

# p output

def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a