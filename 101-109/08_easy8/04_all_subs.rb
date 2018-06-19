# understand
#   all subs
#
# i/o
#   input - str
#   output - arr
#
# algorithm
#   nested upto

=begin
def substrings(str)
  sub_end = str.length - 1
  temp = []
  subs = []

  0.upto(sub_end) do |sub_start|
    temp.clear
    sub_start.upto(sub_end) do |idx|
      temp << str[sub_start..idx]
    end
    subs << temp.dup
  end
  subs.flatten
end
=end

def substrings_at_start(str)
  sub_strings = []
  1.upto(str.length) { |count| sub_strings << str[0...count] }
  sub_strings
end

def substrings(str)
  subs = []
  0.upto(str.length - 1) do |count|
    subs << substrings_at_start(str[count...str.length])
  end
  subs.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]