# understand
#   take 2 int arguments
#   print out all arguments between them inclusive
#   divisible by 3 > Fizz
#   divisible by 5 > Buzz
#   divisible by 3 and 5 > FizzBuzz
#
# i/o
#   input - 2 ints
#   output str
#
# algorithm
#   first number upto second number
#   case statement
#
# reflection
#   don't put anything after the case statement if you want to have it evaluate boolean conditionals

def fizzbuzz(first, last)
  result = []
  first.upto(last) do |num|
    if (num % 5 == 0) && (num % 3 == 0)
      result << 'FizzBuzz'
    elsif num % 3 == 0
      result << 'Fizz'
    elsif num % 5 == 0
      result << 'Buzz'
    else
      result << num
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15)