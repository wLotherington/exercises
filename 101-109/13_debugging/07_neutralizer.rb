# we are mutating the sentance as we iterate through it. since there were 2 negative words next to each other,
# the first one was deleted, the second one shifted into its place and was skipped.
# its only deleting ever other word if it is negative
#
# reflection
#   Array#reject or #select is a better solution

def neutralize(sentence)
  words = sentence.split(' ')
  neutralized = words.dup

  words.each do |word|
    neutralized.delete(word) if negative?(word)
  end

  neutralized.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.