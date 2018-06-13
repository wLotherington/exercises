# understand
#   method takes array of ints between 0 and 19
#   returns array sorted by english words of each number
#
# i/o
#   input - array of ints 0-19
#   output - ordered array of ints based on english name
#
# algorithm
#   create gloabal hash key
#   array.map{ key > value}.sort.map(value > key)
#
# reflection
#   Array#sort_by would have been a useful alternative

INT_TO_ENG = {
  0  => 'zero',
  1  => 'one',
  2  => 'two',
  3  => 'three',
  4  => 'four',
  5  => 'five',
  6  => 'six',
  7  => 'seven',
  8  => 'eight',
  9  => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
}

def alphabetic_number_sort(arr)
  arr.map{ |int| INT_TO_ENG[int] }.sort.map{ |eng| INT_TO_ENG.key(eng) }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]