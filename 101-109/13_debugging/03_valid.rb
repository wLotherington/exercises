# understand
#   series mush sum to 47
#   exactly 3 odd numbers
#
# expected behavior
#   the ternary on line 12 has a single equal sign so it is assigning 3 to odd_count
#     instead of comparing odd_count to 3. odd count = 3 would evaluate to true,
#     so the expression will always return true as long as it sums to 47

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true
p valid_series?([1, 12, 2, 5, 16, 6])      == false
p valid_series?([28, 3, 4, 7, 9, 14])      == false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true
p valid_series?([10, 6, 19, 2, 6, 4])      == false

# refactored
def valid_series?(nums)
  odd_count = nums.count{ |n| n.odd? }
  nums.sum == 47 && odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true
p valid_series?([1, 12, 2, 5, 16, 6])      == false
p valid_series?([28, 3, 4, 7, 9, 14])      == false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true
p valid_series?([10, 6, 19, 2, 6, 4])      == false