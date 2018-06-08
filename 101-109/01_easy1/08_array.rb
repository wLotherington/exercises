=begin
time: 5min

understand
- def method that accepts 1 argument
- argument will contain integers (never empty and all positive)
- return averge

i/o data structures
- input - array of ints
- output - float

algorithm
- accept array of ints
- create a 'sum' variable equal to 0.0
- loop through the array and += each value to the 'sum' variable
- divide sum variable by array.size

comments
- I forgot to look at the test case answers and didnt notice that they were using integer division
- instead of defining initializing sum at 0.0, I changed it to sum = 0 to keep everything in integer form
- looking at the solution, I didnt need to initialize the sum variable on its own line if I had used the reduce method
- reduce is an interesting method alternative for this
- additionally, #count might be more descriptive than #size
=end

def average(int_arr)
  sum = 0.0 # changed based on the 'further exploration' section
  int_arr.each { |int| sum += int }
  sum / int_arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40