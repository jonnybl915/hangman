require_relative 'word'
require_relative 'player'
class Game
  def initialize
    @word = Word.new.grab_random_word
    @player = Player.new
    @board = @word
    @all_guesses = []
    puts @board
    @guesses_left = 5
  end
  def prompt_player_for_input
    puts "Your word is #{@word}"
    puts "Please select a letter"
    puts "you have #{@guesses_left} guesses remaining"
    answer_array = Array.new(@word.length)
    # puts answer_array
    puts " ___ " * @word.length
    # puts array.to_s
  end
  def accept_player_input

    input = gets.chomp.to_i
    if !@word.include?(input)
      @all_guesses.push(input)
      @guesses_left -= 1
    else
    end
  end
  def is_out_of_guesses
    @guesses_left == 0
  end
  def winner

  end

end



