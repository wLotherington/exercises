require 'pry'
# type error & incorrect sum... why?
#   the type error occurrs because line tries to add the cards.sum to sum. although
#   we mapped the values of each card in place of their symbols on lines 35-37, this
#   did not mutate the variable cards. the 'cards' on line 40 are the original symbol
#   containing set.
#
#   all of the deck hash elements are pointing to the same cards object
#   we are overwriting each suits cards on every deck.keys.each instance.
#
#   to fix it we can add #dup to make a copy of the values.

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map do |card|
    score(card)
  end.sum
end

puts sum