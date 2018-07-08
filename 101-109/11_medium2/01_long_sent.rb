# understand
#   return length of longest sentence
#   sentnence ends in [., !, ?]
#
# i/o
#   input = text file
#   output = int
#
# algorithm
#   load file to variable
#   split on punctuation
#   map and split each on space and replace with arr.size
#   return largest

def longest_sentence(text)
  sentences = text.gsub("\n", ' ').split(/\?|\.|\!/)
  sent_lengths = sentences.map { |sent| sent.split.size }
  sent_lengths.max
end

text = File.read('01_sample_text2.txt')
p longest_sentence(text)