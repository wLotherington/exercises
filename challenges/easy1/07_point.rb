class DNA
  def initialize(strand1)
    @strand1 = strand1
  end

  def hamming_distance(strand2)
    length = [@strand1.length, strand2.length].min
    (0...length).map { |idx| @strand1[idx] == strand2[idx] ? 0 : 1 }.sum
  end
end