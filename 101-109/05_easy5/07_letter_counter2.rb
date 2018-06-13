# reflection
#   clean_word = word.delete('^A-Za-z')

def clean(words)
  words.gsub(/[^a-z|\s]|/i, '').squeeze(' ')
end

def word_sizes(words)
  counts = Hash.new(0)
  clean(words).split.each { |word| counts[word.length] += 1 }
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}