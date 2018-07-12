# understand
#   find and fix bug
#   explain why it printed the results that it did

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The critical error is the missing elsif condition on line 8.
# Because ruby is not strict with line breaks, the program will automatically
#   continue to lower lines until it finds an expression to use as the elsif condition.
# In this case, lines 9-11 have an Array#map method being called on the array
#   variable.
# Array#map returns an array which is a truthy expression.
# As a result, all non empty array arguments passed to this method will evaluate
#   as true for the elsif condition.
# Since the Array#map method is already used for the elsif condition, all non empty
#   array arguments immediately hit the end on line 11 and return nil.
# To correct for this, we can add an "array.size > 1" as the elsif condition
