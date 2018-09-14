# understand
#   method counts the number of occurrances of each element in a given array
#   print out the number of occurrences
#
# i/o
#   input - arr
#   output - display
#
# algorithm
#   use Array#uniq to elemenate repeate values
#   use Array#each to iterate over each element and output the element name and count in original arr

def count_occurrences(arr)
  arr.uniq.each { |element| puts "#{element} => #{arr.count(element)}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)