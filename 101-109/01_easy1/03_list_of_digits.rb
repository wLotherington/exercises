=begin
time 8:04

understand the problem
- define mathod that takes 1 positive integer argument
- return a list of digits in the number

input
- positive integer

output
- array of numbers

algorithm
- define method that accepts one positive intiger argument
- convert integer to string
- split string on empty string
- return array
=end

def digit_list(int)
  int.to_s.split('').map { |v| v.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true