# understand
#   clean text > downcase and only keep a-z chars
#   find the square size with length**0.5 rounded up
#   use String#scan to split into the correct sized sub arrays
#   

class Crypto
  attr_reader :normalize_plaintext, :size

  def initialize(text)
    @normalize_plaintext = text.downcase.gsub(/[^a-z\d]/, '')
    @size = (@normalize_plaintext.size**0.5 + 0.5).round(0, half: :down) 
  end

  def plaintext_segments
    @normalize_plaintext.scan(/.{1,#{@size}}/)
  end

  def ciphertext
    plaintext_segments.map { |segment| segment.ljust(@size).chars }
                      .transpose
                      .map { |segment| segment.join.strip }
                      .join
  end

  def normalize_ciphertext
    extra_char = ciphertext.size - ciphertext.size / @size * @size
    len = ciphertext.size / @size
    text = ciphertext

    cipher_segments = []
    @size.times do |idx|
      chars = idx < extra_char ? text.slice!(0..len) : text.slice!(0...len)
      cipher_segments << chars
    end
    
    cipher_segments.join(' ')
  end
end

test = Crypto.new('hello')
p test.ciphertext
p test.normalize_ciphertext
p test.ciphertext
