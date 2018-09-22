# understand
#   at instantiation either receives a set of numbers
#   (unknown quantity) or no arguments
#   if no arguments, refault to 3,5
#   method SumOfMultiples#to method recieves a positive int
#   select all multiples from the instantiation set from the range 1...to(arg)
#   sum them together
#
# i/o
#   input - int
#   output - int
#
# algorithm
#   use splat operator arg veriable with default of [3, 5] on initialize method
#   create teh range with (1...arg)
#   use #select
#   use each on the initialize args
#   return true of % returns 0 else return false
#   sum
class SumOfMultiples
  DEFAULT_NUMS = [3, 5].freeze

  def initialize(*nums)
    @nums = nums.empty? ? DEFAULT_NUMS : nums
  end

  def self.to(limit)
    self.new(*DEFAULT_NUMS).to(limit)
  end

  def to(limit)
    (1...limit).select do |int|
      @nums.any? { |num| (int % num).zero? }
    end.sum
  end
end
