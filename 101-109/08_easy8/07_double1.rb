# understand
#   takes a string and returns string with every char doubled
#
# i/o
# input & output - string
#
# algorithm
#   split with chars & map then join

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''