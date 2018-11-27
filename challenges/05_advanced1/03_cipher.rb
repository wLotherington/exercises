# Ceasers Cipher
class Cipher
  attr_accessor :key

  def initialize(key = nil)
    @key = assign_key(key)
  end

  def encode(text)
    cipher(text) { |ord, offset| ord + offset }
  end

  def decode(text)
    cipher(text) { |ord, offset| ord - offset }
  end

  private

  def assign_key(key)
    if key.nil?
      Array.new(100).map { ('a'..'z').to_a.sample }.join
    else
      raise ArgumentError unless key =~ /\A[a-z]+\z/
      key
    end
  end

  def cipher(text)
    text.chars.map.with_index do |char, idx|
      ord = char.ord - 97
      offset = @key[idx].ord - 97
      offset_ord = yield(ord, offset) % 26
      (offset_ord + 97).chr
    end.join
  end
end
