# understand
#   take 2 int args
#   return arr length of first arg and incremented by second number starting with second
#
# i/o
#   input - 2 ints
#   output - arr
#
# algorithm
#   range to arr then map
#
# reflection
#   apparantly you can go straight from the range to map. the #to_a is not needed

def sequence(count, count_by)
  (1..count).to_a.map { |int| int * count_by }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []