# understand
#   on instantiation, a new Palindrome object can accept a min_factor and a max_factor
#   #generate
#   #largest
#   #smallest
#   #factors
#   #values
#   it looks like I should have 2 classes
#   combination would generate every version of factors

## attempt 1
# class Palindromes
#   def initialize(limits = {})
#     max = limits[:max_factor]
#     min = limits[:min_factor].nil? ? 1 : limits[:min_factor]
#     factor_set = (min..max).to_a
#     @factor_pairs = factor_set.product(factor_set).map { |pair| pair.sort }
#   end

#   def generate
#     @all_palindromes = {}
#     @factor_pairs.each { |pair| @all_palindromes[pair] = pair.inject(:*) if is_palindrome?(pair) }
#     @all_palindromes
#   end

#   def is_palindrome?(pair)
#     pair.inject(:*).digits == pair.inject(:*).digits.reverse
#   end

#   def largest
#     largest = @all_palindromes.select { |factors, value| value == @all_palindromes.values.max }
#     Subset.new(largest)
#   end

#   def smallest
#     smallest = @all_palindromes.select { |factors, value| value == @all_palindromes.values.min }
#     Subset.new(smallest)
#   end
# end

# class Subset
#   attr_reader :factors, :value

#   def initialize(group)
#     @factors = group.keys.map(&:sort)
#     @value = group.values.last
#   end
# end

## attempt2
# reflection
#   use of Struct class looks useful
#   only store largest and smallest to avoid long iterations of sorting afterwards
#   if both factors are greater than or equal to larger of smallest factor and smaller than smallest largest factor, skip  
class Palindromes
  def initialize(limits = {})
    @min = limits.key?(:min_factor) ? limits[:min_factor] : 1
    @max = limits[:max_factor]
  end

  def generate
    @factor_pairs = (@min..@max).to_a.repeated_combination(2).to_a
    @factor_with_product = @factor_pairs.map { |pair| [pair, pair.inject(:*) ] }.to_h
    @palindrome_factors = @factor_with_product.select { |k, v| v.digits == v.digits.reverse }
  end

  def largest
    large_palindromes = @palindrome_factors.select { |k, v| v == @palindrome_factors.values.max }
    Palindrome.new(large_palindromes)
  end

  def smallest
    small_palindromes = @palindrome_factors.select { |k, v| v == @palindrome_factors.values.min }
    Palindrome.new(small_palindromes)
  end
end

class Palindrome
  attr_reader :factors, :value

  def initialize(subset)
    @factors = subset.keys.map{ |pair| pair.sort }
    @value = subset.values.max
  end
end