# Write a method that takes a mathematical equation in English words and gives
# the relevant output.
# Don't worry about the order of operations

def get_integer(string)
  case string
  when "one"   then 1
  when "two"   then 2
  when "three" then 3
  when "four"  then 4
  when "five"  then 5
  when "six"   then 6
  when "seven" then 7
  when "eight" then 8
  when "nine"  then 9
  when "zero"  then 0
  else string.to_i
  end
end

def compute(string, int1, int2)
  case string
  when "plus"  then return int1 + int2
  when "minus" then return int1 - int2
  when "times" then return int1 * int2
  else
    int1 / int2
  end
end

def computer(english)
  operation = english.split
  operation.delete("by")
  result = get_integer(operation[0])
  operation.shift
  while operation.size > 0
    result = compute(operation[0], result, get_integer(operation[1]))
    operation.shift(2)
  end
  result
end

# 40:16

p computer("two plus two") # => 4
p computer("seven minus six") # => 1
p computer("zero plus 8") # => 8
p computer("two plus two minus three") # => 1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # => 15
p computer("one plus seven plus 2 plus 3 minus nine") # => 4

# Don't worry about the order of operations
p computer("eight times four plus six divided by two minus two") # => 17 (not 33)
p computer("one plus four times two minus two") # => 8 (not 7)
p computer("nine divided by three times six") # => 18