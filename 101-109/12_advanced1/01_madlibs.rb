# understand
#   reads in some text from a file
#   plugs in random NOUNS, VERBS, ADJECTIVES, and ADVERBS

VERBS = ['walks', 'jumps', 'licks', 'sleeps', 'flies']
ADJECTIVES = ['yellow', 'fat', 'funny', 'green', 'red', 'fast']
ADVERBS = ['quickly', 'slowly', 'cautiously']
NOUNS = ['cat', 'dog', 'mouse', 'chicken', 'duck']

def madlibs(text)
  puts text % { noun: NOUNS.sample,
                verb: VERBS.sample,
                adj:  ADJECTIVES.sample,
                adv:  ADVERBS.sample}
end

text = File.read('01_text.txt')
madlibs(text)