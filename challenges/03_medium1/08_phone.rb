# understand
#   clean up phone numbers
#     if 10 digits, valid
#     if 11 digits with a leading 1, valid
#     else unvalid
#     remove all non digit chars & trim leading 1 if 11 chars
#     return all 0000 if invalid
#   methods
#     #number => returns 10 digits
#     #area_code => returns first 3 digits
#     #to_s => returns formatted

## attempt 1
# class PhoneNumber
#   INVALID = '0' * 10

#   def initialize(number)
#     @number = number.gsub(/[^\da-z]/i,'')
#   end

#   def number
#     @number.match(/\A1?\d{10}\z/) ? @number[-10..-1] : INVALID
#   end

#   def area_code
#     number[0..2]
#   end

#   def to_s
#     "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
#   end
# end

## attempt 2
class PhoneNumber
  attr_reader :number
  INVALID = '0' * 10

  def initialize(data)
    @number = clean(data)
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end

  private

  def clean(data)
    data.gsub!(/[^\da-z]/i, '')
    data =~ /\A1?\d{10}\z/ ? data[-10..-1] : INVALID
  end
end
