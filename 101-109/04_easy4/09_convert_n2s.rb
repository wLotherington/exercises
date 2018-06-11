# understand
#   opposite of the last 2 exercises
#   converting a number to a string
#
# i/o
#   input - number
#   output - string
#
# algorithm
#   store int.remainder(10) to an array with unshift
#   overwrite int with integer division for int / 10
#   loop until int < 10
#   use hash lookup to replace with string
#   join and return
#
# reflection
#   soilution used => number, remainder = number.divmod(10)
#   result.prepend(DIGITS[remainder])
#   divmod is an interesting method that returns both the number result of the division as well as the remainder!

def integer_to_string(int)
  convert = []
  loop do
    convert.unshift(int % 10)
    int /= 10
    break if int == 0
  end
  convert.join
end

=begin
another Kyle Zhaosolution
I like how he leveraged the join method that converts the array elements into a string.

def integer_to_string(int)
  int.digits.reverse.join
end
=end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
