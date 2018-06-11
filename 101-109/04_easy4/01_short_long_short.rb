# understand
#   method takes 2 string arguments
#   determines longest of the 2 strings (strings will be different lengths)
#   returns concat shorter, longer, shorter
#
# i/o
#   input - 2 string args
#   output - concatted string
#
# algorithm
#   ternary based on string.length
#

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"   