# expected behavior
#   several nested arrs
#
# actual behavior
#   error, no implicit conversion.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing') == 'doing you are how'


# refactored
def reverse_sentence(sentence)
  reversed_words = []
  
  sentence.split.each{ |word| reversed_words.unshift(word) }
  reversed_words.join(' ')
end

p reverse_sentence('how are you doing') == 'doing you are how'