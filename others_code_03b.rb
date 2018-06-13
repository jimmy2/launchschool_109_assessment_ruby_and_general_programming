# Write a method that takes a mathematical equation in English words and gives
# the relevant output.
# Consider the order of operations

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

def order_of_operations(operation)
  i = 0
  j = operation.size
  loop do
    if operation[i] == "times" || operation[i] == "divided"
      result = compute(operation[i], get_integer(operation[i-1]), get_integer(operation[i+1]))
      operation.delete_at(i) # delete the operand
      operation.delete_at(i) # delete the right integer
      operation.insert(i, result) # insert the answer
      operation.delete_at(i-1) # delete the left integer
      j = j-2 # update array size
      i = i-1 # counter is now on answer
    end
    i += 1
    break if i == j
  end
  operation
end

def computer(english)
  operation = english.split
  operation.delete("by")
  result = 0

  operation = order_of_operations(operation) # remove * and /

  result = get_integer(operation[0])
  operation.shift
  while operation.size > 0
    result = compute(operation[0], result, get_integer(operation[1]))
    operation.shift(2)
  end
  result
end

# 40:16

p computer("two plus two") == 4 # => true
p computer("seven minus six") == 1 # => true
p computer("zero plus 8") == 8 # => true
p computer("two plus two minus three") == 1 # => true
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") == 15 # => true
p computer("one plus seven plus 2 plus 3 minus nine") == 4 # => true

# Consider the order of operations
p computer("eight times four plus six divided by two minus two") == 33 # => true
p computer("one plus four times two minus two") == 7 # => true
p computer("nine divided by three times six") == 18 # => true
p computer("seven plus four divided by two") == 9 # => true
p computer("seven times four plus one divided by three minus two") == 26 # => true
p computer("one plus four times three divided by two minus two") == 5 # => true
p computer("nine divided by three times six") == 18 # => true