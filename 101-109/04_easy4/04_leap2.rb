# understand
#   gregorian is the leap year model from the previous exercise
#   prior to the gregorian leap year, the julien calendar had a leap year anytime it was divisible by 4
#   write method to handle both of these

def leap_year?(year)
  return year % 4 == 0 if year < 1752
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true