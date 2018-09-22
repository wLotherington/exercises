# needs to use all letters
# no duplciates
# can't be the same word
# case insensitive
#
# understand
#   return arr of anagrams
#
# i/o
#   input - word / arr
#   output - arr
#
# algorithm
#
class Anagram
  def initialize(word)
    @word = word
  end

  def match(possibles)
    possibles.reject { |possible| possible.casecmp?(@word) || sorted(possible) != sorted(@word) }
  end

  def sorted(word)
    word.downcase.chars.sort
  end
end
