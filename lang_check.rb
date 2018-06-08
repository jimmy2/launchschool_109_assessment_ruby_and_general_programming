array = [1,2,3,4,5]

array.each_with_object([]) do | num, obj |
  obj << num if num.even?
end

=begin

An array of integers is assigned to a variable 'array' on line 1.

This collection is then invoked with the method 'each_with_object' which 
accepts a blank array as an argument.
This method invocation also has a block (do..end) with contains two block 
variables local to that block; 'num' which represents the current element 
of the iterated array, and obj which represents the empty collection 
parameter ([]) that was passed into each_with_object.

On line 4 there is a conditional statement, which checks if the num 
(currently iterated local variable) is a even integer.
If this conditional evaluates to true, then num is pushed into the 
obj collection object.
The block ends on line 5.

The return value of the invocation of each_with_object on array is the 
collection that was passed into the method.  In this case an array 
containing the integers 2 and 4 ([2,4]).

=end
