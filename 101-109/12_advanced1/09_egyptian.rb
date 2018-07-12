# understand
#   return egyptian fraction denominators
#   do the opposite
#
# i/o
#   input - rational
#   output - arr
#   input - arr
#   output - rational
#
# sum = 0
# denoms = []
# while sum < arg
#   if sum += count <= arg
#     sum += count
#     denoms << count
#   end
#
# map rational & inject

def egyptian(rational)
  sum = 0
  count = 1
  denominators = []

    while sum < rational
      if (sum + Rational(1, count)) <= rational
        (sum += Rational(1, count))
        denominators << count
      end
      count += 1
    end
  denominators
end

def unegyptian(denominators)
  denominators.map{ |denominator| Rational(1, denominator) }.inject(:+)
end

p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)