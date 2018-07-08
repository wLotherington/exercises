# understand
#   featured num = odd num
#                  multiple of 7
#                  digits occur only once
#   take int and return the next featured number
#   error of there is no next featured number
#
# i/o
#   input - int
#   output - int or error message
#
# algorithm
#   int div 7 then multi by 7 to get starting point
#   increment by 7
#   check for uniq digits => num.digits.size == num.digits.uniq.size
#   num.odd?
#   return num if it fits the above criteria

def featured(int)
  int = int / 7 * 7 + 7
  until int > 9_876_543_210
    return int if int.odd? && int.digits.size == int.digits.uniq.size
    int += 7
  end
  "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) == 'There is no possible number that fulfills those requirements'