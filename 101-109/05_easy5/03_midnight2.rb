# understand
#   2 methods
#   each takes time in a 24 hour hh:mm format
#   1 returns mins after midnight
#   1 returns mins before midnight
#
# i/o
#   input - string in hh:mm format
#   output - int from 0..1439
#
# algorithm
#   grab hours and minutes separately and convert to_i
#   multiply hours by 60 and add minutes
#   after midnight returns that
#   before midnight subtracts from 1440

MINS_PER_HR = 60
MINS_PER_DAY = 1440

def time_to_i(time)
  hours, minutes = time[0..1].to_i, time[3..4].to_i
end

def after_midnight(time)
  hours, minutes = time_to_i(time)
  (hours * MINS_PER_HR + minutes) % MINS_PER_DAY
end

def before_midnight(time)
  hours, minutes = time_to_i(time)
  (MINS_PER_DAY - (hours * MINS_PER_HR + minutes)) % MINS_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0