=begin
time - 3:02

understand
- generates and prints a sentence with teddy's age in it
- age is random number between 20-200

i/o data structures
- input non
- output string
- int variable is parsed into string

algorithm
- create a variable age that is populated with a rand(20..200) int
- puts a string with the variable age within it
=end

print("What is your name? ")
name = gets.chomp
if name == '' then name = "Teddy" end
age = rand(20..200)
puts "#{name} is #{age} years old!"