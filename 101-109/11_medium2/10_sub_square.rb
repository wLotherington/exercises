# understand
#   method computes the difference between the square of the sum and the sum of the squares
#
# i/o
#   input - int
#   output - int
#
# algorithm
#   (1..n).reduce

def sum_square_difference(int)
  range = (1..int)
  range.sum**2 - range.inject{|sum, n| sum + n**2}
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150