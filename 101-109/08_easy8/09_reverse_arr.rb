# understand
#   takes positive int and returns revered digits
#
# i/o
#   input & output - int
#
# algorithm
#   to_s, reverse, to_i

def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1