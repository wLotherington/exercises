# understand
# takes a string and returns a hash that contains 3 entries
# number of carachers that are lowercase
# number of uppercase
# and number of non letters
#
# i/o
#   input - string
#   output - hash
#
# algorithm
#   chars each with object
#   regex to check for upper or lower letters
#
# reflection
#.  instead of doing chars and iterating, they simply setup the regex and counted all characters

def letter_case_count(str)
  counts = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  str.chars.each do |char|
    if /[a-z]/.match(char)
      counts[:lowercase] += 1
    elsif /[A-Z]/.match(char)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
