# class Integer
#   ROMAN = {
#     1    => 'I',
#     5    => 'V',
#     10   => 'X',
#     50   => 'L',
#     100  => 'C',
#     500  => 'D',
#     1000 => 'M'
#   }

#   def to_roman
#     digits = self.digits

#     digits.map.with_index do |int, idx|
#       case int
#       when 0      then ''
#       when (1..3) then ROMAN[10**idx] * int
#       when 4      then ROMAN[10**idx] + ROMAN[5 * 10**idx]
#       when 5      then ROMAN[5 * 10**idx]
#       when (6..8) then ROMAN[5 * 10**idx] + ROMAN[10**idx] * (int - 5)
#       when 9      then ROMAN[10**idx] + ROMAN[10**(idx + 1)]
#       end
#     end.reverse.flatten.join
#   end
# end

class Integer
  ONES  = ['I','X', 'C', 'M']
  FIVES = ['V', 'L', 'D']

  def to_roman
    self.digits.map.with_index do |int, idx|

      case int
      when 0    then ''
      when 1..3 then ONES[idx] * int
      when 4    then ONES[idx] + FIVES[idx]
      when 5    then FIVES[idx]
      when 6..8 then FIVES[idx] + ONES[idx] * (int - 5)
      when 9    then ONES[idx] + ONES[idx + 1]
      end

    end.reverse.join
  end
end

p 27.to_roman
