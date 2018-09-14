# understand
#   method takes a single positive integer argument
#   returns a string alternating 1 & 0, always starting with 1
#   string length should match int
#
# i/o
#   input - int
#   output - string of 1 & 0 alternating
#
# algorithm
#   use range (1..arg)
#   use to_a to convert to array
#   use Array#map to modify values
#   use element % 2 to return 1 or 0
#   make str
#   use join to join

def stringy(int)
  (1..int).to_a.map { |n| n % 2 }.join.to_s
end

# interesting option based on Bradley Gay
def stringy(int)
  '10' * (int / 2) + (int.even? ? '' : '1')
end

# interesting solution based on William Robert Mills
def stringy(int)
    ''.ljust(int, '10')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'