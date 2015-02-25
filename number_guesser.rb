# Build a small, well-tested game that:
#
#  Has a menu that accepts p to play and q to quit
# when the user selects play...
#  Generate a random number between 0 and 100
# Solicit up to ten guesses
# Give feedback whether the guess was too high, too low, or correct
# When the guess is correct or they run out of guesses, return to the menu


# get input
# generate number
# compare number and input
# return if it was too high, too low or correct
# return to menu when out of guesses or guess is correct
#
# compare number and input

class NumberGuesser

  attr_reader :key, :guess

  def generate_key
    @key = (1..100).to_a.sample
  end

  def user_guess
    puts "Please enter a guess"
    @guess = gets.chomp.to_i

  end

  def valid_guess(guess)
    if guess > 100 || guess < 0
      "Your guess is invalid. Please enter another guess."
    end
  end

  def compare(guess)
    if guess == key
      puts "You win!"
    elsif
      guess > key
      puts "Too high. Guess again!"
    else
      puts "Too low. Guess again!"
    end
  end

end

