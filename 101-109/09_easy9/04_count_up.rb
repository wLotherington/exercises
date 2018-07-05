# understand
#   takes an int and returns an array of all ints up to num
#
# i/o
#   input - i
#   output - arr of ints
#
# algorithm
#   upto shovel to arr
#
# reflection
#   (1..int).to_a is much cleaner

def sequence(int)
  arr = []
  1.upto(int) { |count| arr << count }
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]