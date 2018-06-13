# Write a method that will return all palindromes within a string.

def substring(string, start, finish=nil)
  return string[start] if finish == nil
  string[start..finish]
end

def substrings(string)
  output = []
  start_index = 0
  end_index = 1
  while start_index <= (string.length-2)
    while end_index <= (string.length-1)
      output << substring(string, start_index, end_index)
      end_index += 1
    end
    start_index += 1
    end_index = start_index + 1
  end
  output
end

def palindromes(string)
  substring_array = substrings(string)
  substring_array.select do | substring |
    substring == substring.reverse
  end
end

p palindromes("ppop") # => ["pp", "pop"]
p palindromes("ppop") == ["pp", "pop"] # => true
p palindromes("helleh") # => ["helleh", "elle", "ll"]