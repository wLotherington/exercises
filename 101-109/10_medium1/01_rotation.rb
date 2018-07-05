# understand
#   return an array with the arr[0] element to arr[-1]
#   don't mutate the original array
#
# i/o
#   input - array
#   output - array
#
# algorithm
#   create a new arr that is equal to the different parts of the input
#
# reflection
#   i don't need to create a new arr variable, I can just have the line return

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true