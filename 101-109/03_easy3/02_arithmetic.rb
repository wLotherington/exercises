=begin
understand
- prompt for 2 positive ints
- show all operator outputs

i/o
input - 2 integers as strings
output 6 string that contant 3 int variable substituation

algorithm
- puts for first num
- save to num1
- puts for secnd number
- save to num2
- calculate + - * / % **
- display as strings
=end

def prompt(message)
  puts "==> #{message}"
end

def valid_int?(num)
  num == num.to_i.to_s && num.to_i > 0 #this is not a very good validation
end

num1 = ''
prompt("Enter the first number:")
loop do
  input = gets.chomp
  if valid_int?(input)
    num1 = input.to_i
    break
  end
  puts "Invalid, please enter positive int"
end

num2 = ''
prompt("Enter the second number:")
loop do
  input = gets.chomp
  if valid_int?(input)
    num2 = input.to_i
    break
  end
  puts "Invalid, please enter positive int"
end

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")
