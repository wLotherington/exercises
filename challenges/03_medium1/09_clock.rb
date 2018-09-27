# understand
#   at method can receive hour and minutes (minutes has default value of 0)
#   + method allows you to add minutes
#   to_s outputs in 00:00 format
#
# reflection
#   instead of making #at a class method, I could alias it with #new to initialize automatically
#   if I keep the class method, I can just call #new insteat of Clock.new
#   instead of custom string, strftime("%H:%M") would be a cleaner doption, or combining both variable into 1 format method

## attempt1
class Clock
  attr_accessor :time
  MINUTES_IN_DAY = 24 * 60

  def self.at(hour, min = 0)
    total_minutes = hour * 60 + min
    new(total_minutes)
  end

  def initialize(time)
    @time = time % MINUTES_IN_DAY
  end

  def to_s
    hour, min = time.divmod(60)
    format('%02d:%02d', hour, min)
  end

  def +(mins)
    self.time = (time + mins) % MINUTES_IN_DAY
    self
  end

  def -(mins)
    self.time = (time - mins) % MINUTES_IN_DAY
    self
  end

  def ==(other)
    time == other.time
  end
end