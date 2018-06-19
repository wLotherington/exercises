# understand
#   only double consonants
#
# i/o
#   input & ouput - str
#
# algorithm
#   same thing as last time with regex check for consonents

def double_consonants(str)
  str.chars.map { |char| char =~ /[a-z&&[^aeiou]]/i ? char * 2 : char }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""