# understand
#   receive string
#   return ascii string value
#   ascii string value = sum of all character's ascii value
#
# i/o
#   input - string
#   output - int
#
# algorithm
#   convert string to array with String#chars
#   iterate through array with map replacing each char with its ascii value using String#ord
#   use inject to sum values
#
# reflection
#   if iterating over each character in a string, consider using String#each_char
#   str.bytes.sum looks like a nice alternative from Josh Hinman

def ascii_value(str)
  str.chars.inject(0) { |sum, char| sum += char.ord}
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0