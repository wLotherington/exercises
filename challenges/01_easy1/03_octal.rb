class Octal
  def initialize(octal)
    @digits = octal.match(/[^0-7]/) ? [0] : octal.to_i.digits
  end

  def to_decimal
    @digits.map.with_index { |digit, idx| digit * 8**idx }.sum
  end
end

p Octal.new('123z').to_decimal
p Octal.new('123').to_decimal