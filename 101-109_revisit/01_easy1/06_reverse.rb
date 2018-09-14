# understand
#   method takes one string argument of one or more words
#   return the given string with all five or more letter words reversed
#
# i/o
#   input - string of one or more words
#   output - string of same number of words (some potentially modified)
#
# algorithm
#   use String#split to split sentence into words
#   use Array#map to potentially modify each word
#   use String#reverse with the conditional on String#length to flip long words
#   use Array#join to make into sentence again

def reverse_words(words)
  words.split.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'