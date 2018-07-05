# understand
#   check if all are upcase
#
# i/o
#   input - str
#   output - boolean
#
# algorithm
#   check with upcase

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true