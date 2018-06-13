# understand
#   method takes string with one or more space separated words
#   return hash that shows the number of words of different sizes
#
# i/o
#   input - string of words
#   output - hash
#
# algorithm
#   create empty hash array
#   split string to array with String#split
#   ternary based on has_key?(word.size)
#   either add 1 to the key or create key
#
# reflection
#   refactored my original ternary check with a simple += 1 as is in the solution
#   this required having a default hash value of 0

def word_sizes(words)
  counts = Hash.new(0)
  words.split.each { |word| counts[word.length] += 1 }
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
