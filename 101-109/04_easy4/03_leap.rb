# understand
#   method checks if input year is leap year and returns boolean
#   leap year if...
#     year % 400 == true
#     year % 100 == false
#     year % 4   == true
#
# i/o
#   input - year as positive int
#   output - boolean
#
# algorithm
#   3 level conditional checking for the 3 above criteria
#
# reflection
#   The solution used a more standard conditional of if and ifelse that is probably easier to read. I might have sacrificed a little readability for redundency and brevity.
#   I like how their last conditional could evaluate to true or false and updated my code based on it.

def leap_year?(year)
  return true  if year % 400 == 0
  return false if year % 100 == 0
  year % 4   == 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
p leap_year?(1752) == true