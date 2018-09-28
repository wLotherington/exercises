# understand
#   only test factors up to the sqare root of the number in question
#   build up a list of prime numbers up to the square root of the number
#
# algorithm
#   populate arr of primes. loop until arr.length is corrent length
#   with every new number, select primes that are less than or equal to 
#     the square root and check if #any? mod to 0?

## attempt1
# class Prime
#   def self.nth(n)
#     raise ArgumentError if n.zero?
#     primes = [2]
#     number = 3

#     until primes.length == n
#       primes << number unless primes.select { |prime| prime <= Math.sqrt(number) }.any? { |prime| number % prime == 0 }
#       number += 2
#     end

#     primes.last
#   end
# end

## attempt2 (optimize for speed)
## much faster (from 26 seconds down to 0.09623s)
## I'm guessing the select method in the previous solution greatly slowed down the process since
##   it evaluated every single arr pos. The current method just iterates until the break condition
##   is reached
# class Prime
#   def self.nth(n)
#     raise ArgumentError if n.zero?
#     @primes = [2]
#     number = 3

#     until @primes.length == n
#       @primes << number if is_prime?(number)
#       number += 2
#     end

#     @primes.last
#   end

#   def self.is_prime?(number)
#     @primes.each do |prime|
#       break if prime > Math.sqrt(number)
#       return false if (number % prime) == 0
#     end
#     true
#   end
# end

## attempt3 (optimize for readability)
## this ended u plooking very similar to the example solutions
class Prime
  def self.nth n
    raise ArgumentError unless n > 0
    @primes = [2]
    current = 3
    until @primes.length == n
      @primes << current if is_prime?(current)
      current += 2
    end
    @primes.last
  end

  def self.is_prime? number
    @primes.each do |prime|
      break true if prime > Math.sqrt(number)
      return false if (number % prime).zero?
    end
  end
end
