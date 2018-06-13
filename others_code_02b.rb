# Write a method that finds all substrings in a string.  No one letter words. 

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

p substrings("band") # => ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") # => ['wo', 'wor', 'worl', world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") # => ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
