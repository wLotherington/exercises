# understand
#   Algorithm - starting from the right, every other digit gets doubled (and 9 is removed if over 10.
#     afterward, digits are summed.
#     if last digit is 0, it is valid
#   #addends
#     returns the processed numbers
#   #checksum
#     returns summed addends
#   #valid?
#     returns bool dependend on last digit being 0
#   #create
#     adds a number to the end to make it valid
#
# i/o
#   input - int
#   output - int (or bool if valid? method)

class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    addends_arr = @number.digits.map.with_index do |digit, idx|
      digit *= 2 if idx.odd?
      digit -= 9 if digit >= 10
      digit
    end
    addends_arr.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    luhn = new(number * 10)
    number *= 10
    number += (10 - luhn.checksum.digits.first) unless luhn.valid?
    number
  end
end

# luhn = Luhn.new(12_121)
# p luhn.addends
# p [1, 4, 1, 4, 1] == luhn.addends

# luhn = Luhn.new(8631)
# p luhn.addends
# [7, 6, 6, 1] == luhn.addends 

# luhn = Luhn.new(4913)
# p luhn.addends
# p luhn.checksum
# p 22 == luhn.checksum

# number = Luhn.create(873_956)