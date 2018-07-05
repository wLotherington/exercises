def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, int)
  num_arr = num.digits.reverse
  (num_arr + rotate_array( num_arr.pop(int))).join.to_i
end

def max_rotation(num)
  size = num.digits.size
  size.times { |n| num = rotate_rightmost_digits(num, (size - n)) }
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845