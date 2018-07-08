require 'date'
# understand
#   return number of friday the thirteenths in a given year
#   year >= 1752, so gregorian is OK
#
# i/o
#   input - int representing year
#   output - int representing number of friday the thirteenths
#
# algorithm
#
# reflection
#   didn't think about the fact that there are only 12 13ths a year. I could have iterated through months instead of days
#
# really like Eric Ricketts solution
#
#   def friday_13th(year)
#     (1..12).select {|month| Time.new(year, month, 13).friday?}.count
#   end


def friday_13th(year)
  date = Date.new(year)
  unlucky_fridays = 0

  until date.year != year
    unlucky_fridays += 1 if date.friday? && date.day == 13
    date += 1
  end

  unlucky_fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2