# understand
#   method receives positive integer argument
#   find all multiples of 3 & 5 <= argument
#   return sum of all 3 & 5 multiples
#
# i/0
#   input - positive integer
#   output - positive integer
#
# algorithm
#   define variable sum = 0
#   iterate through all numbers from 3 to input
#   sum += number if number % 3 or number % 5 == 0
#   return sum
#
# reflection
#   refactor with upto format

def multisum(number)
  sum = 0
  3.upto(number) { |num| sum += num if (num % 3 == 0) || (num % 5 == 0) }
  sum
end

# further exploration
# method that leverages arrays and inject/reduct

def multisum2(number)
  (3..number).select { |i| (i % 3).zero? || (i % 5).zero? }.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

p multisum2(3) == 3
p multisum2(5) == 8
p multisum2(10) == 33
p multisum2(1000) == 234168