# understand
#   takes arr of fruits and quantities
#   converts to array of the correct num of each fruit
#
# i/o
#   input & output = arr
#
# algorithm
#   def empty arr variable
#   fruit arr.each and shovel first element
#
# reflection
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
#   don't forget that you can assign variables to multiple array positions when calling Array#map

def buy_fruit(arr)
  list = []
  arr.each do |item|
    item[1].times { list << item[0] }
  end
  list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]