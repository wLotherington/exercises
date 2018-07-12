# expected behavior
#   print out 'Hey you'
#   the mutation impacts the letters in the array created by String#chars
#   name does not point to the same object as the chars array and is not impacted
#     by the mutating method.
#   to fix you would need to add a join to combine the mutated array into a string
#     and you would have to assign the value to name.
#
# reality
#   behaved as expected
#
# reflection
#   they changed the method to name.upcase!
#   I was trying to make as few changes as possible
#   I will make the refactored code before looking at the solution moving forward

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'


# refactored

def shout_out_to(name)
  puts "HEY #{name.upcase}"
end

shout_out_to('you') # expected: 'HEY YOU'