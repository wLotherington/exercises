# understand
#   method that convers string of numeric characters to int
#
# i/o
#   input - string of int characters
#   output - integer
#
# algorithm
#   convert to array string input using String#chars
#   map over array calling to_int
#   to_int uses objet ID and case method to return correct int
#   join
#
# reflection
#   totally missed the opportunity to use a hash as a dictionary. I opted for a case. I will refactor with hash since that seems significantly better
#   didnt define digits as a global variable originally

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  integer = string.chars.map { |digit| DIGITS[digit] }
  integer.map.with_index { |v, i| v * 10 ** (string.length - 1 - i) }.reduce(:+)
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570