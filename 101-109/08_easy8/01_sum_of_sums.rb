# understand
#   take a num arr and return sum of the sums
#
# i/o
#   input - number arr
#   output - int
#
# algorithm
#   reduce with index
#   take index, reduce
#
# reflection
#   using up to is a nice way to iterate through each

def sum_of_sums(arr)
  arr.map.with_index { |_, idx| arr.take(idx + 1).reduce(:+)}.reduce(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35