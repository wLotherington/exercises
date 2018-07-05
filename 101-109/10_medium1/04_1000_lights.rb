# understand
#   accept 1 arg int
#   create arr length of arg with all 0
#   1.upto(n) toggle every idx
#   return arr position + 1 of all the lights left on (value of 1)
#
# i/o
#   input - int
#   output - arr
#
# algorithm
#   create arr length of input with 0
#   1 up to n
#
# reflection
#   probably should have broken this up into separate methods
#   a hash would have been a nice way to keep the light position and toggle value and avoid the second map
#   second thought, multiple methods would definitely have been more readable

def lights(count)
  bank = (1..count).map { 0 }
  1.upto(count) { |n| bank = bank.map.with_index { |light, idx| ((idx + 1) % n).zero? ? 1 - light : light } }
  bank.map!.with_index { |light, idx| light * (idx + 1) }.delete(0)
  bank
end

puts lights(5).inspect
puts lights(10).inspect
puts lights(1000).inspect
