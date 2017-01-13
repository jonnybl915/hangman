class Player
  def initialize
    @guesses_left = 5
    @all_guesses = []
  end
  def makes_a_guess(guess)
    @guesses_left -= 1
    @all_guesses.push(guess)
  end
  def is_out_of_guesses
    @guesses_left == 0
  end
  def guesses_left
    @guesses_left
  end
  def all_guesses
    @all_guesses
  end
end