# understand
#   take 2 arr arguments
#   return product of each pair
#
# i/o
#   input - 2 arrs
#   output - 1 arr
#
# algorithm
#   map on one, times the other

def multiply_list(arr1, arr2)
  #arr1.map.with_index { |num, idx| num * arr2[idx] }
  arr1.zip(arr2).map { |pair| pair.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]