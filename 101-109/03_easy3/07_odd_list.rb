# understand
#   write a method that acceps an array argument and returns an array containing every other element of the argument array (starting at index 0)
#
# i/o
#   input - array
#   output - array
#
# algorithm
#   method 'oddities' that accepts argument array
#   create a new variable result_arr
#   iterate with each_with_index
#   if index.even? shovel value onto result_arr
#   return result_arr

def oddities(array)
  result_arr = []
  array.each_with_index { |value, index| result_arr << value if index.even? }
  result_arr
end

# further exploration
# make a companion method that returns the odd index positions
# solve in 2 different ways

def evenities(array)
  result_arr = []
  for count in 0...array.size
    result_arr << array[count] if count.odd?
  end
  result_arr
end

def fun(array)
  array.select.with_index { |_, index| index.odd? }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities(['abc', 'def']) == ['def']
puts evenities([123]) == []
puts evenities([]) == []

puts fun([2, 3, 4, 5, 6]) == [3, 5]
puts fun(['abc', 'def']) == ['def']
puts fun([123]) == []
puts fun([]) == []