class Octal
  def initialize(octal)
    @digits = octal.to_i.digits
  end

  def to_decimal
    return 0 if @digits.max >= 8
    @digits.map.with_index { |digit, idx| digit * 8**idx }.sum
  end
end