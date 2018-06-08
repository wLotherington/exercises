=begin
time - 7:53

understand
- print all odd numbers 1 - 99 inclusive
- each should be on a new line

i/o
- input - none
- output several puts of odd ints

algorithm
- for loop
- puts num if num % 2 == 1
=end

=begin
first attempt

for num in 1..99
  puts num if num % 2 == 1
end
=end

1.upto(99) { |num| puts num if num.odd? }