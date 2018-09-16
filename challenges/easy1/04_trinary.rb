class Trinary
  def initialize(trinary)
    @digits = trinary.to_i.digits
  end

  def to_decimal
    return 0 if @digits.max >= 3
    @digits.map.with_index { |digit, idx| digit * 3**idx }.sum
  end
end