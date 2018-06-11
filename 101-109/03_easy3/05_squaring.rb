=begin
understand
- use the mult method
- create method that computes the square of its arguments

=end

def multiply(a, b)
  a * b
end

def square(input)
  multiply(input, input)
end

puts square(5) == 25
puts square(-8) == 64