# undersand
#   return second to last word in string arg
#
# i/o
#   input & output - string
#
# algorithm
#   split and grab index -2

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'