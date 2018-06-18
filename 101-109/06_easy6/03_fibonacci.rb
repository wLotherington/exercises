# understand
#   method returns index number (starting at 1) of the first number with the args number of digits
#
# i/o
#   input int
#   output int
#
# algorithm
#   arr variable with 2 spots (last, current)
#   while current.length < input
#   increment fib_index by one each loop
#   return index

def find_fibonacci_index_by_length(int)
  fib_vals = [0, 1]
  fib_index = 1
  while fib_vals[1].to_s.length < int
    fib_vals[0], fib_vals[1] = fib_vals[1], fib_vals.reduce(:+)
    fib_index += 1
  end
  fib_index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847