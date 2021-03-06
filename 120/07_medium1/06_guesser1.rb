# understand
#   create calss for a number guessing game
#   guess numbers between 1 and 100
#   limit guesses to 7

# The number guessing games consists of a player trying to guess a randomly generated integer.
# The player has 7 attempts to guess the number.
# The number will be between 1 and 100 (inclusive)
# The game will provide feedback if the guess was too high or too low.

# nouns
#   game
#   player
#   - guess
#   random number

class GuessingGame
  LOW = 1
  HIGH = 100
  GUESSES = 7

  def initialize
    @random_number = nil
    @guesses = 0
    @player_guess = nil
  end

  def play
    reset
    generate_random_number
    loop do
      player_turn
      break if player_won? || out_of_guesses?
      display_feedback
    end
    display_results
  end

  def reset
    @guesses = 0
  end

  def generate_random_number
    @random_number = rand(LOW..HIGH)
  end

  def player_turn
    display_remaining_guesses
    prompt_player_guess
    increment_guesses
  end

  def display_remaining_guesses
    puts "You have #{GUESSES - @guesses} guesses remaining."
  end

  def prompt_player_guess
    print "Enter a number between #{LOW} and #{HIGH}: "
    loop do
      @player_guess = gets.chomp.to_i
      break if (LOW..HIGH).include? @player_guess
      print "Invalud guess. Enter a number between #{LOW} and #{HIGH}: "
    end
  end

  def increment_guesses
    @guesses += 1
  end

  def player_won?
    @player_guess == @random_number
  end

  def out_of_guesses?
    @guesses == GUESSES
  end

  def display_feedback
    feedback = @player_guess > @random_number ? "high" : "low"
    puts "Your guess is too #{feedback}"
    puts
  end

  def display_results
    if player_won?
      puts "You win!"
    else
      puts "You are out of guesses. You lose."
    end
    puts
  end
end

game = GuessingGame.new
game.play
