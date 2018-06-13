# understand
#   method takes string argument
#   returns a new string that removes duplicate consecutive letters
#
# i/o
# input - string
# output - string of equal or lesser length and no repeat letters
#
# algorithm
#   define empty string variable
#   split to array with String#chars
#   iterate with each_with_i & shovel to string if it != previous array char

def crunch(str)
  crunched = ''
  str.each_char { |char| crunched << char if char != crunched[-1] }
  crunched
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
