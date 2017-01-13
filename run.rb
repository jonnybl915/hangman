# What do I want to have the game do?
#
# Pick a random word
# Display a collection of blanks for the letters
# Ask the user to guess a letter
# Show all the correct and incorrect guesses the user has made
# Tell the player they won if they get all the letters in the word
# Tell the player they lose after some number of bad guesses
# Display a useful message if a user guesses the same letter twice
# (and not count off for the second guess)
require_relative 'word'
require_relative 'game'
require_relative 'player'

w = Word.new
p = Player.new
g = Game.new

until g.winner || p.is_out_of_guesses

  puts g.prompt_player_for_input


end