# understand
#   method takes one argument, a positive int
#   returns a list of the digits in the number
#
# i/o
#   input - positive int
#   output - arr of digits
#
# algorithm
#   use #digits to break into arr
#   use reverse to reverse the arr
#
# algorithm2
#   use to_s to converto to str
#   use chars to break into arr
# use map to_i to convert back to int

def digit_list(int)
  int.digits.reverse
end

def digit_list(int)
  int.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true