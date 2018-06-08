# Write a method that takes an array of strings, and returns an array
# of the same string values, except with the vowels removed.

def remove_vowels(array)
  # array.map { | word | word.gsub(/[aeiou]/i, "") }
  array.map { | word | word.delete("AEIOUaeiou") }
end

p "Write a list of words:"
input = gets.chomp
input = input.split(",")
output = remove_vowels(input)
p "List of modified words are: #{output.join(",")}"

# input: green, yellow, black, white
# => grn, yllw, blck, wht
 