class Poker
  attr_reader :hands

  def initialize(hands)
    @hands = hands.map { |hand| Hand.new(hand) }
  end

  def best_hand
    hands
  end
end

class Hand
  def initialize(hand)
    @hand = hand.map { |card| Card.new(card) }
  end

  def identify
  end
end

class Card
  attr_reader :value
  VALUES = { 'T' => 10, 'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14 }

  def initialize(card)
    @card = card
    @value = VALUES[card.chars.first] || card.chars.first.to_i
    @suit = card.chars.last
  end

  def <=>(other)
    value <=> other.value
  end
end

high_of_jack = %w(4S 5S 7H 8D JC)
game = Poker.new([high_of_jack])
p game.best_hand