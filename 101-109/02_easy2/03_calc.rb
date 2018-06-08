=begin
time - 

understand
- prompt for bill amount
- prompt for tip rate
- return string with calculated tip amount and total bill amount

i/o data structures
- input - 2 user submitted floats
- output - 2 strings, each with a float variable (rounded to 2 decimal places)

algorithm
- prompt for bill amount with print
- save user input to bill_amount with gets.chomp.to_f
- prompt for tip percentage with print
- save user input to tip_percentage with gets.chomp.to_f
- calculate and save tip to tip with (bill_amount * tip_percentage / 100).round(2)
- calculate and save bill_total with (tip + bill_amount).round(2)
- puts string with tip amount
- puts string with total amount
=end

print "What is the bill? "
bill_amount = gets.chomp.to_f
print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip = (bill_amount * tip_percentage / 100).round(2)
tip = format("%#.2f", tip).to_f

bill_total = (bill_amount + tip).round(2)
bill_total = format("%#.2f", bill_total).to_f

puts "The tip is $#{tip}"
puts "The total is $#{bill_total}"