# understand
#   method returns true if its integer argument is palindromic
#
# i/o
#   input - int argument
#   output - boolean
#
# algorithm
#   num.to_s == num.to_s.reverse
#
# reflection
#   I could have leveraged my palindrome? method and simply used palindromic_number? to convert to string

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(-5) == false