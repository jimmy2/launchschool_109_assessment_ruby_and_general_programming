# Conditional pass, psuedocode problem solving breakdown

# 101-109 - Small Problems > Medium 2 > Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the 
# number of uppercase and lowercase characters, as well as characters that
# were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that 
# contains 3 entries: one represents the percentage of characters in the 
# string that are lowercase letters, one the percentage of characters that
# are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

### THOUGHT PROCESS

# - receive a string object as a method parameter.
# - create a new hash that will be returned.
# - assign three new variables (lowercase count, uppercase count, neither count)
#   floating point integers of 0.0
# - Floating point numbers are more accurate with division in ruby (compared to
#   integers).
# - iterate through the string from index 0 to -1 to receive each character.
# - if the character is lowercase, uppercase, or neither, increment the relevant
#   counter by 1.
# - Can use a regular expression or .ord to work out if the character is lowercase,
#   uppercase, or neither.
# - If uppercase count is greater than 0, then assign the uppercase key in the hash,
#   the value of uppercase divided by the length of the string, then divide multiply
#   that by 100 to get the percentage.
# - If the count is 0, then assign the uppercase key in the hash 0.
# - Do the same for lowercase and neither.
# - return that hash.

### PSEUDOCODE

START

# Given a string object

SET returned_hash = a new hash object
SET uppercase_count = 0.0
SET lowercase_count = 0.0
SET neither_count = 0.0

SET iterator = 0

WHILE iterator < (string.length - 1)
  IF character is uppercase
    uppercase_count = uppercase_count + 1
  ELSE IF character is lowercase
    lowercase_count = lowercase_count + 1
  ELSE
    neither_count = neither_count + 1

  iterator = iterator + 1

IF uppercase_count > 0
  returned_hash[:uppercase] = (uppercase_count / string.length) * 100
ELSE
  returned_hash[:uppercase] = 0

IF lowercase_count > 0
  returned_hash[:lowercase] = (lowercase_count / string.length) * 100
ELSE
  returned_hash[:lowercase] = 0

IF neither_count > 0
  returned_hash[:neither] = (neither_count / string.length) * 100
ELSE
  returned_hash[:neither] = 0

RETURN returned_hash

END
