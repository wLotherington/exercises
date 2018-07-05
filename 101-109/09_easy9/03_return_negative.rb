# understand
#   always return negative
#
# i/o
#   input & output - int
#
# algorithm
#   ternary to negate
#
# reflection
#   using -abs would have been interesting

def negative(int)
  int < 0 ? int : -int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby