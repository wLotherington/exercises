# understand
#   given string of words separated by spaces
#   method takes string and returns a string in which the first and last letter of every word are swapped
#
# i/o
#   input - string
#   outout - string
#
# algorithm
#   split to array
#   map, swap, join

def swap(words)
  words.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'