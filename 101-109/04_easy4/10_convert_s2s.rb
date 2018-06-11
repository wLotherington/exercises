def signed_integer_to_string(int)
  arr = []
  str = arr.push(int).join
  %w(0 -).include?(str[0]) ? str : ('+' + str)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'