# understand
#   method that takes array of ints argument
#   returns array with same number of elements
#   returned array has the running total of the original
#
# i/o
#   input - array
#   output - array
#
# algorithm
#   initialize variable total = 0
#   array map n + total... total += n
#
# reflection
#   is was actually slightly simpler than I aniticpated when thinking of the algorithm step

def running_total(array)
  total = 0
  array.map { |num| total += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []