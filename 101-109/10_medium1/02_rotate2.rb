# understand
#   accept second arg that specifies which position from the end will be moved to teh end
#
# i/o
#   input - arr & int
#   output - arr
#
# algorithm
#   use drop based on second arg
#   send that through the first method

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, int)
  num_arr = num.digits.reverse
  (num_arr + rotate_array( num_arr.pop(int))).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917