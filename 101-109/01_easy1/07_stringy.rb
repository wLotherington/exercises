=begin
time: 7:50

understand
- def method
- receive 1 argument
- argument = positive integer
- return string of alternating 1/0
- always start with 1
- return string length should match the integer argument

I/O data structures
- input - single int
- output - string

algorithm
- receive int argument
- define empty string variable 'digits'
- use #times method based on int argument
- use ternary to shovel a 1 if even, else a 0

comments
- the solution used a ternary too, but didnt perform the shovel actin. instead they used it to assign 1 or 0 to an int variable. the int variable was then shoveled into an array variable. the last step was to join the array for the return.
- I think I prefer my method of shoveling string versions of 1/0 directly into the string variable, but I prefer the solutions method of using the ternary to assign the variable, not perform the action.
=end

def stringy(num, start_value = 1)
  return "error" unless (0..1).include?(start_value)
  digits = ''
  num.times do |count|
    digit = count.even? ? (0 + start_value) : (1 - start_value)
    digits << digit.to_s
  end
  digits
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
puts stringy(7, 3) == '0101010'
puts stringy(7, 3)