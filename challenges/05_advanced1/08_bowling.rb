class Game
  attr_reader :frames

  def initialize
    @frames = []
  end

  def roll(pins)
    if @frames.empty? || @frames.last.size == 2 || @frames.last.sum == 10
      @frames << [pins]
    else
      @frames.last << pins
    end
  end

  def score
    multiplier = [1]
  end
end

def roll_n_times(rolls, pins)
  rolls.times do
    Array(pins).each { |value| @game.roll(value) }
  end
end

@game = Game.new

@game.roll(10)
@game.roll(3)
@game.roll(4)
roll_n_times(18, 0)
@game.score
p @game.frames