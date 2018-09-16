# understand
#   class named Series
#   pass string of difits when instantiating
#   public method Series#slices accepts a single int argument
#   #slices returns arr of sub arrs each containing the the argument number of elements
#
# algorithm
#   use chars to convert string of digits to array
#   create a new empty arr
#   determine number of iterations with arr.size - length
#   iterate from 0 up to the number
#   use slice with num..num+length

class Series
  def initialize(num_str)
    @num_arr = num_str.chars.map(&:to_i)
  end

  def slices(length)
    raise ArgumentError.new('Slice is too long') if length > @num_arr.size
    @num_arr.each_cons(length).to_a
  end
  
  ### Original implementation
  # def slices(length)
  #   consecutives = []
  #   count = @num_arr.size - length
  #   0.upto(count) { |idx| consecutives << @num_arr.slice(idx, length) }
  #   raise ArgumentError.new if consecutives.empty?

  #   consecutives
  # end
end

series = Series.new('12345')
p series.slices(2)