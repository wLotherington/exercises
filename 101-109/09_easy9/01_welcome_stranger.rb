# understand
#   takes 2 args: arr & hsh
#   arr contains 2+ elements
#   hsh contains title & occupation keys
#   greet full name & mention title
#
# i/o
#   input - 1 hshs & 1 arr
#   output - str
#
# algorithm
#   join arr with space for name var
#   access occupation key when returning str
#
# reflection
#   I prefer the hash.values.join approach

def greetings(arr, hsh)
  name = arr.join(' ')
  job = "#{hsh[:title]} #{hsh[:occupation]}"
  puts "Hello, #{name}! Nice to have a #{job} around."
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.