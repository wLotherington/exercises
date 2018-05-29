=begin
Time: 5:22

1. Understand the problem
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

- method
- no return, only print
- do we need to check for string and number validity? (assume no)
- assume string can't be negative
- what if the string is blank?

input
1. string
2. positive intiger

output
1. string

algorithm
Create a method that accepts a string and integer as arguments. Puts the string the number of times as the integer. 
=end

def repeat(str, int)
  int.times{ puts str }
end

repeat('Hello', 3)