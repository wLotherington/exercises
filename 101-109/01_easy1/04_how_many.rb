=begin
time 12:05

understand the problem
- count number of occurrences of each element in an array

input
- array

output
- hash library with count of occurrences as value

algorithm
- receive array input in method
- create an empty hash called occurrence_count
- loop through each array position using .each method
- if our hash contains the array value as a key, add one to its value
- otherwise, initialize that key with a value of 1
- print our hash keys and values

assumptions
- method is case sensative
- no empty array positions
- all array positions contain strings
=end

def count_occurrences(vehicles)
  occurrence_count = {}
  vehicles.each do |value|
    if occurrence_count.has_key?(value)
      occurrence_count[value] += 1
    else
      occurrence_count[value] = 1
    end
  end
  occurrence_count.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)