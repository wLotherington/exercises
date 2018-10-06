class Diamond
  def self.make_diamond(letter)
    size = (letter.ord - 64) * 2 - 1

    upper = ('A'..letter).map.with_index do |char, idx|
      str = idx.zero? ? char : char + ' ' * (idx * 2 - 1) + char
      str.center(size) + "\n"
    end
    
    lower = upper.reverse
    lower.shift
    (upper + lower).join
  end
end
