# understand
#   accept 2 arrs and return arr with all values and no duplicates
#
# i/o
#   input & output - arr
#
# algorithm
#   merge, flatten, uniq

def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]