# understand
#   return 'right' 'acute' 'obtuse' or 'invalid' depending on the angles sent in
#
# i/o
#   input - 3 ints
#   output - symbol of type
#
# algorithm
#   
# reflection
#   could have used angles.sum instead of angles.reduce(:+)

def triangle(*angles)
  return :invalid if angles.reduce(:+) != 180 || angles.any?(0)
  return :right   if angles.any?(90)
  return :acute   if angles.max < 90
  return :obtuse  if angles.max > 90
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid