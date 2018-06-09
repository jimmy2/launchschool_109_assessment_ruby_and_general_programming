# Write a method that combines to arrays passed in as arguments, and 
# returns a new array that contains all elements from both arguments
# with the elements taken in altercation.

# You may assume that both input arrays are non-empty, and that they
# have the same number of elements.

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

# def interleave(arr1, arr2)
#   output = []
#   i = 0
#   while i < arr1.length
#     output << arr1[i]
#     output << arr2[i]
#     i += 1
#   end
#   output
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 2, 3], ['a', 'b', 'c'])