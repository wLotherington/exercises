=begin
understand
- puts 6 times to request 6 numbers from the user
- print string to show if the 6th number appears in the first 5

i/o
input - 6 ints
output - string with int and int arr embedded

algorithm
- create an array variable containing the 5 numbers for each loop called positions
- iterate through the array with pos in positions
- for each, puts tring request with pos embedded
- verify gets.chomp to be a number
- if it is a number, shovel into numbers array
- positions.include?(last_num)
- outputs OK and NG

comments
- their solution seems overly redundent, but it is actually more readable than all of my loops and variable substitutions... alothough a lot of the loops are due to verifying the number.
- a happy medium might be a semi manual code that calls teh validation method
=end


def valid_input?(num)
  num == num.to_i.to_s
end

search_arr = []
positions = ['1st', '2nd', '3rd', '4th', '5th']
for pos in positions
  puts "Enter the #{pos} number:"
  loop do
    input = gets.chomp
    if valid_input?(input)
      search_arr << input.to_i
      break
    else
      puts "#{input} is invalid, please enter number."
    end
  end
end

search_num = ''
puts "Enter the last number:"
loop do
  input = gets.chomp
  if valid_input?(input)
    search_num = input.to_i
    break
  else
    puts "#{input} is invalid, please enter number."
  end
end

if search_arr.include?(search_num)
  puts "The number #{search_num} appears in #{search_arr}."
else
  puts "The number #{search_num} does not appear in #{search_arr}."
end