# understand
#   manually create Array#reverse!
#
# i/o
#   input - arr
#   output - arr
#
# algorithm
#   map array
#   use negative indesing on the original arr or a copied one if original doesnt work
=begin
original solution

def will_reverse!(arr)
  arr2 = arr.dup
  arr.map!.with_index { |obj, index| obj = arr2[-1 - index] }
  arr
end
=end

def will_reverse!(arr)
  arr.each_with_index { |_, idx| arr.insert(idx, arr.pop) }
end


list = [1,2,3,4]
result = will_reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
result = will_reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]
p list.object_id == result.object_id

list = ['abc']
result = will_reverse!(list) # => ["abc"]
p list == ["abc"]
p list.object_id == result.object_id

list = []
result = will_reverse!(list) # => []
p list == []
p list.object_id == result.object_id
