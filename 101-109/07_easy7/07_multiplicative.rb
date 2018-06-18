# understand
#   takes int arr
#   multiplies all numbers together and divides by number of array elements
#   prints result to 3 decimales
#
# i/o
#   input - int arr
#   output - str
#
# algorithm
#   reduce, / arr size puts with round

def show_multiplicative_average(arr)
  avg = format('%.3f' % (arr.reduce(1.0) { |total, i| total *= i } / arr.size))
  puts "The result is #{avg}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
