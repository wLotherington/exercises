# understand
#   

class SecretHandshake
  SECRET = {
    1 => 'wink',
    10 => 'double blink',
    100 => 'close your eyes',
    1000 => 'jump'
  }
  def initialize(sequence)
    @sequence = cleaned(sequence)
  end

  def commands
    code = @sequence.digits.map.with_index { |digit, idx| 10**idx * digit }
    code = code.reverse if code[-1] == 10000
    code.delete(0)
    code.delete(10000)
    code.map { |action| SECRET[action] }
  end

  private

  def cleaned(sequence)
    return sequence.to_i if sequence.is_a?(String) && sequence.match(/\A[10]+\z/)
    return sequence.to_s(2).to_i if sequence.to_s.match(/\A[0-9]+\z/)
    0
  end
end


# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump

p SecretHandshake.new(1).commands
p SecretHandshake.new(2).commands
p SecretHandshake.new(4).commands
p SecretHandshake.new(8).commands
p SecretHandshake.new(3).commands
p SecretHandshake.new(19).commands
p SecretHandshake.new(31).commands
p SecretHandshake.new('01').commands
p SecretHandshake.new('pip').commands

# p 1.to_s(2)
# p 2.to_s(2)
# p 4.to_s(2)
# p 8.to_s(2)
# p 3.to_s(2)
# p 19.to_s(2)
# p 31.to_s(2)
