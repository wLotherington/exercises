# understand
#   takes a first and last name
#   returns string that contians reversed with comma
#
# i/o
#   input & output - string
#
# algorithm
#   split reverse join

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'