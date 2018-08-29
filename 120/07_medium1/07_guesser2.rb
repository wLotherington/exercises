class GuessingGame
  def initialize(low = 1, high = 100)
    @random_number = nil
    @guesses = 0
    @player_guess = nil
    @low = low
    @high = high
    @max_guesses = calculate_guesses
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

  def calculate_guesses
    @max_guesses = Math.log2(@high - @low).to_i + 1
  end

  def reset
    @guesses = 0
  end

  def generate_random_number
    @random_number = rand(@low..@high)
  end

  def player_turn
    display_remaining_guesses
    prompt_player_guess
    increment_guesses
  end

  def display_remaining_guesses
    puts "You have #{@max_guesses - @guesses} guesses remaining."
  end

  def prompt_player_guess
    print "Enter a number between #{@low} and #{@high}: "
    loop do
      @player_guess = gets.chomp.to_i
      break if (@low..@high).include? @player_guess
      print "Invalud guess. Enter a number between #{@low} and #{@high}: "
    end
  end

  def increment_guesses
    @guesses += 1
  end

  def player_won?
    @player_guess == @random_number
  end

  def out_of_guesses?
    @guesses == @max_guesses
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

game = GuessingGame.new(501, 1500)
game.play
