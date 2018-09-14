# understand
#   method accepts 1 integer (positive or negative) argument
#   outputs true if the argument is odd
#
# i.o
#   input - integer
#   output - bool
#
# algorithm
#   odd?

def is_odd?(int)
  int.odd?
end

puts is_odd?(2) == false
puts is_odd?(5) == true
puts is_odd?(-17) == true
puts is_odd?(-8) == false
puts is_odd?(0) == false
puts is_odd?(7) == true