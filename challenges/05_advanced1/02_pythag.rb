class Triplet
  def self.where
  end
  
  def initialize(*numbers)
    @numbers = numbers
  end

  def sum
    @numbers.inject(:+)
  end

  def product
    @numbers.inject(:*)
  end

  def pythagorean?
    @numbers[0]**2 + @numbers[1]**2 == @numbers[2]**2
  end

  def self.where(*test)
    [[1], [2], [3]]
  end
end

# p Triplet.new(3, 4, 5).sum


triplets = Triplet.where(max_factor: 10)
products = triplets.map(&:product).sort
# assert_equal [60, 480], products
p products

# input for Triplet#where
#   max_factor
#   min_factor
#   sum
#   return an array