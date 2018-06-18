# understand
#   rebuild Array#include?
#
# i/o
#   input - arr, elem
#   output - boolean
#
# algorithm
#   use count and ternary
#
# reflection
#   use !! to get bool val
#   use arr.index(val) to find index existence

def include?(arr, obj)
  arr.count(obj) > 0
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false