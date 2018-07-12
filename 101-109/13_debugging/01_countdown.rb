# expected behavior
#   puts '10' 10 times followed by 'LAUNCH'
#   this is due to the fact that ints are immutable so the increment assignment
#     in the decrease method does change the value of counter outside of the method.
#   the method does return the expected value, so we can use the method return value to update
#     the counter in the outer scopes value.
#
# reality
#   behaved as expected
#
# reflection
#   they changed 'counter -= 1' to 'counter - 1' since the assignment was not doing anything

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# refactored
10.downto(1) { |counter| puts counter }

puts 'LAUNCH!'

