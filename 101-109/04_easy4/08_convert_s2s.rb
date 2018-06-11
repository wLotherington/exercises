# understand
#   add the ability to detect +/- on imput
#
# i/o
#   input - string of int chars with potential for +/- char leading
#   output - integer
#
# algorithm
#   if first character is - return negative, else positive
#
# reflection
#   they opted for a case method instead of a conditional... i'm neutral on these 2 options

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  integer = string.chars.map { |digit| DIGITS[digit] }
  integer.map.with_index { |v, i| v * 10 ** (string.length - 1 - i) }.reduce(:+)
end

def string_to_signed_integer(number)
  if number[0] == '-'
    -string_to_integer(number[1..-1])
  elsif number[0] == '+'
    string_to_integer(number[1..-1])
  else
    string_to_integer(number)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100


=begin
Kyle Zhao's solution. I think it's awesome, and I spent 30 minutes understanding annd rebuilding it

def string_to_signed_integer(str)
  output = str.chars.reduce(0) { |sum, char| sum = sum * 10 + ('1'..char).count}
  str[0] == '-' ? -output : output
end

end