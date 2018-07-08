BLOCKS = [['B','O'],['X','K'],['D','Q'],['C','P'],
          ['N','A'],['G','T'],['R','E'],['F','S'],
          ['J','W'],['H','U'],['V','I'],['L','Y'],
          ['Z','M']]
# understand
#   there are letter pairs "blocks", and you can only make words that use onl 1 of the 2
#
# i/o
#   input - string
#   output - boolean
#
# algorithm
#   nested arr
#   string.chars.each
#   iterate through blocks using include?
#   delete arr pos if it is used
#
# refleaction
#   nested arrays for blocks could have just been 2 letter arr
#   instead of building the words (deleting blocks), I could have checked for 2 blocks

def block_word?(str)
  blocks = BLOCKS.dup
  str.upcase.chars.each do |char|
    if blocks.flatten.include?(char)
      blocks.each_with_index do |block, idx|
        blocks.delete_at(idx) if block.include?(char)
      end
    else
      return false
    end

  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('t') == true