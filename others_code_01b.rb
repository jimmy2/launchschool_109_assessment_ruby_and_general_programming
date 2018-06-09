# Write a program that asks the user to enter an integer greater than
# 0, then asks if the user wants to determine the sum or product of 
# all numbers between 1 and the entered integer.

def prompt(string)
  puts ">> " + string
end

def valid_integer?(int)
  int > 0
end

def valid_choice?(char)
  char == "s" || char == "p"
end

def calc_sum(int)
  (1..int).to_a.reduce(:+)
end

def calc_product(int)
  (1..int).to_a.reduce(:*)
end

def display_output(int, operator)
  if operator == "s"
    p "The sum of integers between 1 and #{int} is #{calc_sum(int)}"
  else
    p "The product of integers between 1 and #{int} is #{calc_product(int)}"
  end
end

integer = 0
choice = ""
prompt "Please enter an integer greater than 0:"
loop do
  integer = gets.chomp.to_i
  break if valid_integer?(integer)
  prompt "Please enter a valid integer (greater than 0):"
end
prompt "Enter 's' to compute the sum, 'p' to compute the product:"
loop do
  choice = gets.chomp.downcase
  break if valid_choice?(choice)
  prompt "Please select between 's' and 'p':"
end
display_output(integer, choice)