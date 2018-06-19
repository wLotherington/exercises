# understand
#   return middle char (2 chars if even)
#
# i/o
#   input & output - str
#
# algorithm
#   ternary, check even or odd
#   return str.length /2

def center_of(str)
  len = str.length
  len.odd? ? str[len/2] : str[(len-1)/2,2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'