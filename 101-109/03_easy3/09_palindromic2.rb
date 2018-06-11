# unerstand
#   method returns true if string input is palidrome
#   ignore case
#   ingnore non alphanumerics
#
# i/o
#   input - string
#   output - boolean
#
# algorithm
#   downcase string
#   split string input with chars
#   select ('a'..'z') && (0..9)
#   join and send to palindrome? method
#   use palindrome? method from previous exercise for final check
#
# reflection
#   string.downcase.delete('^a-z0-9') works better for removing specific letters

def palindrome?(obj)
  obj == obj.reverse
end

#def alphanumeric?(char)
#  ('a'..'z').cover?(char) || ('0'..'9').cover?(char)
#end

def real_palindrome?(string)
  #cleaned_string = string.downcase.chars.select { |char| alphanumeric?(char) }
  cleaned_string = string.downcase.delete('^a-z0-9')
  palindrome?(cleaned_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
