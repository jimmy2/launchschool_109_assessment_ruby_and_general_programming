# Conditional pass, psuedocode problem solving breakdown

# 101-109 - Small Problems > Medium 2 > Sum Square - Square Sum

# Write a method that computes the difference between the square of the sum
# of the first n positive integers and the sum of the squares of the first n
# positive integers.

### THOUGHT PROCESS

# - receive an integer object as a method parameter.
# - pass the integer as an argument to new method to create the sum of the
#   squares that takes the integer as a parameter.
#   - find the sum of 1..int
#   - possibly use Enumerable#inject to convert the range into an array and 
#     calculate the sum.
#   - then find the square of that sum (**2)
#   - return that integer
# - pass the integer as an argument to new method to create the square of the
#   sum that takes the integer as a parameter.
#   - find the square (**2) of each integer in 1..integer
#   - map those results to a new array
#   - then find the sum of the array items using Enumerable#inject
#   - return that integer
# - calculate the subtraction (returned sum of the squares minus returned square
#   of the sum)
# - return the result of the subtraction

### PSEUDOCODE

START 

# Given an iteger object

SET integer = passed in integer object parameter

SET sum_square = 0
SET incrementor = 1

WHILE incrementor <= integer
  sum_square = sum_square + incrementor
  incrementor = incrementor + 1

sum_square = sum_square ** 2

SET square_sums = 0
SET incrementor = 1

WHILE incrementor <= integer
  SET squared_number = incrementor ** 2
  square_sums = square_sums + squared_number
  incrementor = incrementor + 1

SET calculation = sum_square - square_sums

RETURN calculation

END