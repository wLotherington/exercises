=begin
time - 8:53

understand
- ask user for a length in meters
- ask user for a width in meters
- display the area of the room in square meters
- display the area of the room in square feet

i/o data structures
- input - 2 floats
- output - string with 2 float variables in it

algorithm
- assign gets.chomp.to_f to length_meters
- assign gets.chomp.to_f to length_width
- assign length_meters * length_width to area_meters
- assign conversion ratio to sq_meter_to_sq_feet
- assign area_meters * sq_meter_to_sq_feet to area_feet
- print string with both variables in it

reflection
- it would have been appropriate to assign the conversion ration to a constant
- i didnt have a round in my original code
=end

puts "Enter the length of the room in meters:"

length_meters = gets.chomp.to_f

puts "Enter the width of the room in meters:"

width_meters = gets.chomp.to_f
area_meters = (length_meters * width_meters).round(2)
sq_meter_to_sq_feet = 10.7639
area_feet = (area_meters * sq_meter_to_sq_feet).round(2)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."