# understand
#   method takes 2 args, a positive int and bool
#   calculates the bonus
#   if true, bonus is half salary
#   if false, bonus is 0
#
# i/o
#   input - positive int and bool
#   output - positive int or 0
#
# algorithm
#   use ternary

def calculate_bonus(salary, bonus_check)
  bonus_check ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000