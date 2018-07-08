# understand
#   return fib sequence to nth
#
# i/o
#   input = int
#   output = int
#
# algorithm
#   1, 1, 2, 3, 5, 8, 13, 21
#   fib(total, last)
#   (1, 1) (2, 1) (3, 2) (5, 3) (8, 5)
#   F(n) = F(n - 1) + F(n - 2)
#   F(8) = F(7) + F(6)

# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765