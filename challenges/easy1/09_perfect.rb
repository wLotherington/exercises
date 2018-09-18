# understand
#   perfect == sum of factors
#   abundant > sum of factors
#   deficient < sum of factors
#
# i/o
#   input - int
#   output - str
#
# algorithm
#   (1...arg).select
#   case statement with sum

class PerfectNumber
  def self.classify(int)
    raise RuntimeError if int < 0
    factor_sum = (1...int).select { |i| int % i == 0 }.sum

    case 
    when factor_sum == int then 'perfect'
    when factor_sum >  int then 'abundant'
    when factor_sum <  int then 'deficient'
    end
  end
end