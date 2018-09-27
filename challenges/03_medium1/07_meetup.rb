require 'date'

## first working solution
# class Meetup
#   WEEKDAYS = { sunday: 0, monday: 1, tuesday: 2, wednesday: 3,
#                thursday: 4, friday: 5, saturday: 6 }.freeze

#   def initialize(month, year)
#     @date = Date.new(year, month, 1)
#   end

#   def day(weekday, schedule)
#     days = (@date...@date.next_month).select { |day| day.wday == WEEKDAYS[weekday] }

#     case schedule
#     when :teenth then days.select { |day| (13..19).include?(day.day) }.last
#     when :second then days[1]
#     when :third then days[2]
#     when :fourth then days[3]
#     when :first then days.first
#     when :last then days.last
#     end
#   end
# end

## second attempt before looking at solution
# class Meetup
#   WEEKDAYS = { sunday: 0, monday: 1, tuesday: 2, wednesday: 3,
#                thursday: 4, friday: 5, saturday: 6 }.freeze

#   OPTIONS = { first: 0, second: 1, third: 2, fourth: 3, last: -1 }.freeze

#   def initialize(month, year)
#     @date = Date.new(year, month, 1)
#     @dates = (@date...@date.next_month).to_a
#   end

#   def day(weekday, schedule)
#     meetup_options = @dates.select { |option| option.wday == WEEKDAYS[weekday] }

#     if schedule == :teenth
#       meetup_options.find { |option| (13..19).cover? option.day }
#     else
#       meetup_options[OPTIONS[schedule]]
#     end
#   end
# end

## third attempt after watching video and reading through some of the submitted solutions
class Meetup
  OFFSET = {
    first:  1,
    second: 8,
    third:  15,
    fourth: 22,
    last:   -7,
    teenth: 13
  }.freeze

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    start_date = Date.new(@year, @month, OFFSET[schedule])
    (start_date..start_date + 6).find { |date| date.send("#{weekday}?") }
  end
end
