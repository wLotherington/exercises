# understand
#   create a nested array to represent pascals triangle
#   the number of triangle levels (rows) is defined at instantiation by the int argument passed in
#   the data structure used to represent the triangle is an array of arrays
#   each sub array represents a single row of the triangle and contains positive ints
#   the array index position represents the triangle rows from top to bottom
#   each row starts and ends with 1 and is 1 position longer than the previous row
#   #each_cons + map + sum would be one way to get the next row

class Triangle
  def initialize(size)
    @size = size
    @rows = [[1]]
  end

  def rows
    (@size - 1).times do
      values = @rows.last.each_cons(2).to_a.map(&:sum)
      @rows << [1] + values + [1]
    end
    @rows
  end

  def last
    @rows.last
  end
end