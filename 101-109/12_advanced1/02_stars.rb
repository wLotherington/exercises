# understand
#   display 8 pointed star
#   n x n grid where n is odd
#   smallest n is 7
#
# i/o
#   input = odd int >=7 
#   output = printed star
#
# algorithm
#   outter spaces = row
#   inner spaces = (n - 3 - (2*row))/2

def star(n)
  half = n / 2
  half.times do |outter|
    inner = ' ' * (half - outter - 1)
    outter = ' ' * outter
    puts outter + '*' + inner + '*' + inner + '*'
  end

  print '*' * n
  puts

  half.times do |inner|
    outter = ' ' * (half - inner - 1)
    inner = ' ' * inner
    puts outter + '*' + inner + '*' + inner + '*'
  end
end

star(9)