# understand
#   valid triangle - sum of any 2 sides is greater than third && all sides > 0
#   types - 3 sides are equal, 2 sides are equal, none are equal
#   take 3 lengths & return symbol of triangle type
#
# i/o
#   input - 3 nums (ints or floats)
#   outut - symbol
#
# algorithm
#   1. check sums
#   2. check equality
#   3. check zero
#   a, b, c
#   a == b == c
#
# reflection
#   I really likes Toman Tomecek's solution. It avoids all of the manual comparisons
#
# def triangle(*sides)
#   return :invalid     if sides.min(2).sum <= sides.max
#   return :equilateral if sides.uniq.one?
#   return :scalene     if sides.uniq.size == 3
#   :isosceles
# end

def invalid?(sides)
  sides.any?(0) || sides.count != 3 ||
    sides[0] + sides[1] <= sides[2] ||
    sides[1] + sides[2] <= sides[0] ||
    sides[2] + sides[0] <= sides[1]
end

def count(sides)
  sides.map { |side| sides.count(side) }.max
end

def triangle(*sides)
  if    invalid?(sides)   then :invalid
  elsif count(sides) == 3 then :equilateral
  elsif count(sides) == 2 then :isosceles
  else                         :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
