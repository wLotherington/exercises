# understand
#   take positive int
#   display right triangle
#
# i/o
#   input - positive int
#   output - string triangles
#
# algorithm
#   set string length to int
#   int times with index
#   puts print '*' * index rjust

def triangle(int)
  int.times { |idx| puts ('*' * (idx + 1) ).rjust(int) }
end

triangle(50)