# understand
#   interleave 2 arrays
#
# i/o
#   input - 2 arrs
#   output - interleaved arr
#
# algorithm
#   def new arr
#   arr.length times
#   shovel one from each
#
# reflection
#   don't forget about the each_with_object also reduce etc

def interleave(arr1, arr2)
  interleaved = []
  arr1.size.times { interleaved << arr1.shift << arr2.shift }
  interleaved
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']