=begin
time: 4:53

Input
- integer (positive, negative, or zero)

Output
- true if abs value of input is odd

data structures
- number input
- boolean output
- keep input as number throughout algorithm

algorithm
- method with 1 argument (integer)
- abs value of input
- check if odd using odd?
- return true if odd, else false

notes after solution
- the abs method was unneccessary. The odd/even judgement will be the same regardless of the positive or negativeness.

def is_odd?(int)
  int.abs.odd?
end
=end

def is_odd?(int)
  int.odd?
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
puts is_odd?(7999)    # => true
