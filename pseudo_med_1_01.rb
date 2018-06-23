# Conditional pass, psuedocode problem solving breakdown

# 101-109 - Small Problems > Medium 1 > Rotation (Part 1)

# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.


### THOUGHT PROCESS

# - receive an array as a method parameter.
# - get the first element of the array (index[0]).
# - get the second to the last elements (index[1]..index[-1]) as an array.
# - first element is not an array, so make it an array.
# - add the second to last elements array to the first element array
#   to create a new array.
# - return that new array.

### PSEUDOCODE

START

# Given an array of various types

SET first_element = value of first index in the array
SET last_elements = values of index 2 to -1 in the array

SET (reassign) first_element to an array of first_element

RETURN last_elements + first_element

END