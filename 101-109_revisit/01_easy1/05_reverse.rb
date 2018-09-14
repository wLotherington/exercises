# understand
#   method takes one string argument
#   returns string in reverse order of words
#
# i/o
#   input - string
#   output - reversed words in string
#
# algorithm
#   use String#split to split sentence into word arr
#   use Array#reverse to reverse array
#   use Array#join(' ') to rejoin the words into a sentence

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'