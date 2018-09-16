# understand
#   method Sieve#primes accepts positive int and returns all primes from 2 up to int (inclusive)
#
# i/o
#   input - positive int
#   output - array
#
# algorithm
#   create array from 2 up to argument
#   map to make array of sub arrays (num and prime?), then convert to hash
#   iterate through hash using each
#   if prime, mark all multiples as false
#   if not prime, next
#   return keys as array

## Original implementation
# class Sieve
#   def initialize(limit = 0)
#     @limit = limit
#   end

#   def primes
#     potential_primes = (2..@limit).map { |int| [int, true] }.to_h
    
#     2.upto(@limit) do |int|
#       next unless potential_primes[int]

#       multiples = potential_primes.select { |k, v| (k > int) && (k % int == 0) }.keys
#       multiples.each { |k| potential_primes[k] = false }
#     end

#     potential_primes.select { |_, v| v }.keys
#   end
# end

class Sieve
  def initialize(limit)
    @range = (2..limit).to_a
  end

  def primes
    @range.each do |prime|
      @range.reject! { |int| int != prime && int % prime == 0 }
    end
    @range
  end
end