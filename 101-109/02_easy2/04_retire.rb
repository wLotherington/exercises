=begin
time - 11:55...

understand
- prompt for user's age
- prompt for user's target retire age
- display current year and target retire year
- diplay difference between target year and current year

i/o data structures
- input - 2 integers
- output - 2 strings, each with 1 integer variable

algorithm
- prompt for age with print
- save current_age = gets.chomp.to_i
- prompt target retire age
- save retire_age = gets.chomp.to_i
- save current year to variable
- calculate retire_year = current_year + retire_age
- calculate remaining_years = retire_year - current_year
- puts years
- puts ages
=end

print "What is your age? "
current_age = gets.chomp.to_i
print "At what age would you like to reture? "
retire_age = gets.chomp.to_i

current_year = Time.now.year
remaining_years = retire_age - current_age
retire_year = current_year + remaining_years

puts
puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{remaining_years} of work to go!"
