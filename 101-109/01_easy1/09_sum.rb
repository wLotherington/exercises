=begin
time: 10:27

understand
- method that acceps a single positive integer
- return sum of its digits

i/o data structures
- input - single positive int
- output - single positive int

algorithm
- accept int
- convert #to_s to convert to string
- String#split to convert to array
- loop through array
- change each element back to an into with #to_i
- reduce with (:+)
*note underscores are allowed in ruby number input, but are not carried into the method

comments
- woah, this was a cool one
- String#chars lets you split every letter without ('')
- map(&:to_i) is a cleaner notation when its a simple transformation
=end

def sum(num)
  num.to_s.split('').map { |num_str| num_str.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
