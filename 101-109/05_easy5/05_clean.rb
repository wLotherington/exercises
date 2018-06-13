# understand
#   remove non alphabetic characters from string
#   if more than 1 non-alphabetic character exists, replace with space
#
# i/o
#   input - string with both alphabetic and non alphabetic characters
#   output - string with only single spaces and alphabetic characters
#
# algorithm
#   split to array with String#chars
#   iterate with each
#   check if includes an alphabetic character
#
# reflection
#   very nice clean use of regex in the solution
#   the /i makes it case insensitive
#   the [^a-z] is any non alphabetic character
#   String#squeeze is also a new one where you can choose which characters to reduce repeats of
#
#   def cleanup(text)
#     text.gsub(/[^a-z]/i, ' ').squeeze(' ')
#   end
def cleanup(str)
  clean_str = ''
  str.chars do |char|
    if /[a-zA-Z]/.match(char)
      clean_str << char 
    elsif clean_str[-1] != ' '
      clean_str << ' '
    end
  end
  clean_str
end

p cleanup("---what's my +*& line?") == ' what s my line '