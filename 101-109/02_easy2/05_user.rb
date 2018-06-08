=begin
time - 7:14

understand problem
- ask for the user's name
- greet the user
- if the user ends their input with a bang, upcase response

i/o
- input - string from user input
- output - string with the user input string variable embedded

algorithm
- prompt for name with print
- save input to name variable
- conditional check if name[-1] == '!'
-- if no bank "Hello #{name}."
-- else "HELLO #{name[0...-1].upcase}. WHY ARE WE SCREAMING?"

comments
- I learned about the string#chop method that removed the last char of a string
=end

print "What is your name? "
name = gets.chomp

if name[-1] != '!'
  puts "Hello #{name}."
else
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING"
  # puts "HELLO #{name.chomp('!').upcase}. WHY ARE WE SCREAMING"
end