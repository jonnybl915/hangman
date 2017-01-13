require_relative 'word'
require_relative 'player'
class Game
  def initialize
    @word = Word.new.grab_random_word
    @player = Player.new
  end
  def prompt_player_for_input
    puts "Your word is #{@word}"
    puts "Please select a letter"
    array = Array.new(@word.length)
    puts " ___ " * @word.length
    # puts array.to_s
    gets.chomp.to_i
  end
  def accept_player_input(input)
    #this line is probably not necessary

    @player.makes_a_guess(input)


  end
  def number_of_guesses
    @all_guesses
  end
  def winner

  end

end



