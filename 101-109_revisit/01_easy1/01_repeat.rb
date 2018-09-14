# understand
#   method takes 2 arguments, a string and a positive int
#   print the string int number of times
#
# i/o
#   input - string & positive int
#   output - display output. return?
#
# algorithm
#   call the #times method with the int argument and puts the string

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)