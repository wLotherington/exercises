=begin
time: 4:56

understand
- method takes 2 arguments
- 1 argument is a positive integer
- 1 argument is a boolean
- if the boolean is true, return half of the salary
- else return 0

i/o data structures
- input - integer, bool
- output - integer (technically this might be better as a float, but the test cases show int returns)

algorithm
- ternary based on bool input.
- output int/2 or 0
- assume both inputs are always given

reflection
- the solution put parentheses around the first case which helps with readability
=end

def calculate_bonus(salary, eligible)
  eligible ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000