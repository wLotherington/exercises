# understand
#   method takes int (+/-) as argument to represent minutes before or after midnight
#   return hh:mm based on a 24 hour format
#
# i/o
#   input - positive or negative integer
#   output - string in hh:mm format
#
# algorithm
#   switch everything to the same direction
#   input < 0 => (input % 720) + 720
#   divmod by 60 to get hours and minutes
#
# reflection
#   I should study Kernel#format
#   refactored to define mins_per_day to a constant

MINS_PER_DAY = 1440
MINS_PER_HOUR = 60

def time_of_day(int)
  int %= MINS_PER_DAY
  hours, minutes = int.divmod(MINS_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"