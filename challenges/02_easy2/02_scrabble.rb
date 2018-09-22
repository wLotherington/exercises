# # attempt 1
# class Scrabble
#   POINTS = {
#     'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1,
#     'u' => 1, 'l' => 1, 'n' => 1, 'r' => 1,
#     's' => 1, 't' => 1, 'd' => 2, 'g' => 2,
#     'b' => 3, 'c' => 3, 'm' => 3, 'p' => 3,
#     'f' => 4, 'h' => 4, 'v' => 4, 'w' => 4,
#     'y' => 4, 'k' => 5, 'j' => 8, 'x' => 8,
#     'q' => 10, 'z' => 10
#   }

#   def initialize(word)
#     @word = word
#   end

#   def score
#     return 0 unless !!@word && @word.match(/\A[a-zA-Z]+\z/)
#     @word.downcase.chars.inject(0) { |sum, char| sum + POINTS[char] }
#   end

#   def self.score(word)
#     self.new(word).score
#   end
# end

# attempt 2
class Scrabble
  POINTS = {
    'aeioulnrst' => 1, 'dg' => 2, 'bcmp' => 3,
    'fhvwy' => 4, 'k' => 5, 'jx' => 8, 'qz' => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    return 0 unless !!@word && @word.match(/\A[a-zA-Z]+\z/)
    POINTS.inject(0) { |sum, pair| sum + points(pair) }
  end

  def points(pair)
    pair[0].chars.inject(0) { |sum, char| sum + pair[1] * @word.downcase.count(char) }
  end

  def self.score(word)
    self.new(word).score
  end
end

p Scrabble.new('test').score
p Scrabble.new(nil).score
p Scrabble.new("a.a.").score
p Scrabble.new(" \t\n").score
p Scrabble.score('alacrity')