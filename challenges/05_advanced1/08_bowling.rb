# every time the ball is rolled, check to see if the last frame is complete
#   a complete frame either has 2 rolls already (10th frame is a special case)
#   is equal to 10
# if the frame is not complete, add the pins as a roll
#   if the frame is complete, start a new frame

# this is a monstrosity, but it works for now. needs to be refactored
# class Game
#   attr_reader :frames

#   def initialize
#     @frames = []
#   end

#   def game_over?
#     (frames.size == 10 && !frames[9].strike? && !frames[9].spare? && (frames[9].rolls.size == 2)) ||
#     (frames.size == 12 && frames[9].strike?) ||
#     (frames.size == 11 && frames[9].spare?) ||
#     (frames.size == 11 && frames[9].strike? && !frames[10].strike? && frames[10].rolls.size == 2)
#   end

#   def roll(pins)
#     raise RuntimeError.new('Should not be able to roll after game is over') if game_over?

#     if frames.empty? || @frames.last.complete?
#       frames << Frame.new(pins)
#     else
#       frames.last.roll(pins)
#     end
#   end

#   def score
#     raise RuntimeError.new('Score cannot be taken until the end of the game') unless game_over?

#     return 300 if frames.all? { |frame| frame.strike? } && frames.size == 12
#     doubles = [1, 1]
#     score = 0

#     frames.each_with_index do |frame, idx|
#       if idx > 9
#         score += frame.rolls.sum
#         next
#       end

#       frame.rolls.each do |roll|
#         score += roll * doubles.shift
#       end

#       if frame.strike?
#         doubles[0] ? doubles[0] += 1 : doubles << 2
#         doubles[1] ? doubles[1] += 1 : doubles << 2
#       elsif frame.spare?
#         doubles[0] ? doubles[0] += 1 : doubles << 2
#         doubles << 1 unless doubles[1]
#       else
#         doubles << 1 unless doubles[0]
#         doubles << 1 unless doubles[1]
#       end
#     end

#     score
#   end

# end

# class Frame
#   attr_reader :rolls

#   def initialize(pins)
#     @rolls = []
#     roll(pins)
#   end

#   def validate_roll(pins)
#     raise RuntimeError.new('Pins must have a value from 0 to 10') unless (0..10).cover? pins
#     raise RuntimeError.new('Pin count exceeds pins on the lane') if rolls.sum + pins > 10
#   end

#   def complete?
#     rolls.size == 2 || rolls.sum == 10
#   end

#   def strike?
#     rolls.first == 10
#   end

#   def spare?
#     rolls.sum == 10 && rolls.first < 10
#   end

#   def roll(pins)
#     validate_roll(pins)

#     rolls << pins
#   end
# end

class Game
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def roll(pins)
    validate(pins)
    @rolls << pins

    valid_pin_count?
  end

  def score
    score = 0
    multipliers = [1, 1]
    frame = 0

    while @rolls.size > 0
      frame += 1

      if perfect_game?
        return 300
      elsif past_last(frame)
        score += @rolls.shift
      elsif strike?
        score += @rolls.shift * multipliers.shift
        multipliers[0] += 1
        multipliers << 2
      elsif spare?
        2.times { score += @rolls.shift * multipliers.shift }
        multipliers = [2, 1]
      else
        2.times { score += @rolls.shift * multipliers.shift }
        multipliers = [1, 1]
      end
    end

    score
  end

  def strike?
    @rolls.first == 10
  end

  def spare?
    @rolls.take(2).sum == 10
  end

  def valid_pin_count?
    raise RuntimeError.new('Pin count exceeds pins on the lane') if @rolls.take(2).sum > 10
    true
  end

  def perfect_game?
    @rolls.sum == 120
  end

  def past_last(frame)
    frame > 10
  end

  def validate(pins)
    raise RuntimeError.new('Pins must have a value from 0 to 10') unless (0..10).cover? pins
  end
end


def roll_n_times(rolls, pins)
  rolls.times do
    Array(pins).each { |value| @game.roll(value) }
  end
end

@game = Game.new

[3, 4, 2, 3, 5, 2].each do |pins|
  @game.roll pins
end
roll_n_times(14, 0)
p @game.rolls
p @game.score