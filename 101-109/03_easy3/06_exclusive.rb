# Understand
#   create a method that returns true iff one of the 2 arguments is true
#
# i/o data structures
#   input - 2 arguments that evaluate to bools
#   outut - bool
#
# algorithm
#   def method that accepts 2 arguments
#   (arg1 || arg2) && !(arg1 && arg2)

def xor?(bool1, bool2)
  (bool1 || bool2) && !(bool1 && bool2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# further exploration
#   schrodinger's cat - either box_is_open or uncertain_of_cat_state is true, but not both
#   bowling - either rerack_pins or ready_to_bowl can be true, but not both
#
# short circuit?
#   it is not a short circuit operator since both states need to be verified before the correct answer can be determined
#   it does not really make sense to think of xor in these terms