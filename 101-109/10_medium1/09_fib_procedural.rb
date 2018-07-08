# algorithm
#   2 position array
#
# reflection
#   using upto is cleaner than (n-2) times
#   overwriting both arr positions each time is better since you don't have an ever growing arr
#   tested out the improved solution and it is faster

def fibonacci(n)
  first, second = [1, 1]
  3.upto(n) { first, second = [second, first + second] }
  second
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501