=begin
time - 8:14

understand
- prompt for integer greater than 0
- prompt to find out if they want to sum or product
- return string with answer

algorithm
- puts request for input
- save gets.chomp.to_i to number
- puts request for sum or product
- save gets.chomp to operator
- define result=0
- use 1.upto(num) do
    conditional based on 
  end

=end

puts ">> Please enter an integer greater then 0:"
num = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

result = 1
operator_string = ''
if operator == 's'
  result = (1..num).inject(:+)
  operator_string == 'sum'
else
  result = (1..num).inject(:*)
  operator_string == 'product'
end

puts "The #{operator_string} of the integers between 1 and #{num} is #{result}"