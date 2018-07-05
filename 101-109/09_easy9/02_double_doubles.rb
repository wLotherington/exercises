# understand
#   double = even num of digits that repeats in the middle
#   return 2 x the num unless it is a double, then return as is
#
# i/o
#   input & output - int
#
# algorithm
#   check if double

def twice(int)
  str = int.to_s
  half = str.length / 2
  str[0...half] == str[half..-1] ? int : int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10