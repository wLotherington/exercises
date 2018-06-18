# understand
#   split arr into 2 (round to first arr)
#
# i/o
#   input & output - arr
#
# algorithm
#   take

def halvsies(arr)
  split = [[],[]]
  arr.each_with_index { |obj, idx| idx >= (arr.size / 2.0 ) ? split[1] << obj : split[0] << obj}
  split
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]