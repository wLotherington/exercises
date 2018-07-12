# understand
#   accept 2 sorted arrays and return 1 array with all elements sorted in order
#   you cannot sort the final array
#   don't mutate the original arrays
#
# i/o
#   input - 2 arrs
#   output - 1 arr
#
# algorithm
#   initial thought is to combine arguments and pull out with Array#min... but this feels too close to a sort
#
#   use ternary on last arr elems to assign the 2 arrays based on largest value
#   initialze counting variable to keep place in second arr
#   iterate through the main array
#   while elem > second[n] shovel second onto the new arr
#   else shovel elem

def merge(arr1, arr2)
  sorted_arr = []
  n = 0

  arr1.each do |int|
    until arr2[n].nil? || arr2[n] > int
      sorted_arr << arr2[n]
      n += 1
    end
    sorted_arr << int
  end

  sorted_arr += arr2[n..-1]
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]