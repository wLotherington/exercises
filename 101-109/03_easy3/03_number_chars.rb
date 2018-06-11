=begin
understand
- prompt user to input word
- return number of characters (excluding spaces)

i/o
- input string
- output string with int variable embedded

algorithm
- print prompts for user input
- save input to input_string
- char_count = input_string.length - input_string.count(' ')
- puts string

comments
- they used string#delete(' ') to get rid of spaces before counting. this is not a bad idea since its shorter and non destructive
=end

print "Please write word or multiple words: "
input_string = gets.chomp
char_count = input_string.length - input_string.count(' ')
puts "There are #{char_count} characters in \"#{input_string}\""