# understand
#   method returns true if string argument is a palindrome
#
# i/o data structures
#   input - string argument
#   outpur - boolean
#
# algorithm
#   argument == argument.reverse

def palindrome?(string)
  string == string.reverse
end

# further exploration
#   method that determines if an array is a palindrome
#
# understand
#   method for array palindromes
#
# i/o
#   array input
#   boolean output
#
# algorithm
#   array == array.reverse

def arr_palindrome?(array)
  array == array.reverse
end

# further exploration
#   method that can accept either a string or array as arg & return true if palindrome. CANNOT USE IF, UNLESS, or CASE
#
# i/o
#   input - array or string
#   output - boolean
#
# algorithm
#   input == input.reverse

def power_palindrome?(obj)
  obj == obj.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p arr_palindrome?([1, 2, 3, 2, 1]) == true
p arr_palindrome?([1, 2, 3, 2]) == false
p arr_palindrome?(['a']) == true
p arr_palindrome?(['a', 'b', 'A']) == false
p arr_palindrome?([12, 1, 12]) == true

p power_palindrome?('madam') == true
p power_palindrome?('Madam') == false          # (case matters)
p power_palindrome?("madam i'm adam") == false # (all characters matter)
p power_palindrome?('356653') == true
p power_palindrome?([1, 2, 3, 2, 1]) == true
p power_palindrome?([1, 2, 3, 2]) == false
p power_palindrome?(['a']) == true
p power_palindrome?(['a', 'b', 'A']) == false
p power_palindrome?([12, 1, 12]) == true
