# understand
#   return all subs from start char
#
# i/o
#   input - str
#   output - str arr
#
# algorithm
#   1.upto(str.length)
#   shovel to new arr

def substrings_at_start(str)
  sub_strings = []
  1.upto(str.length) { |count| sub_strings << str[0...count] }
  sub_strings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']