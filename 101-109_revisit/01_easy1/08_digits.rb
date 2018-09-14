# understand
#   method takes one positive int arg
#   returns sum of its digits
#
# i/o
#   input - positive int
#   output - positive int
#
# algorithm
#   break int into digits with #digits
#   sum #sum

def sum(int)
  int.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45