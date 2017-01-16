require_relative 'word'


Dictionary = [
    'jazz',
    'umphreys',
    'mcgee'
]


class Game
  def initialize
    # @word = Word.new.grab_random_word
    @word = Dictionary.sample
    @all_guesses = []
    puts @board
    @guesses_left = 5
  end
  def prompt_player_for_input
    puts "Your word is #{@word}"
    puts "Please select a letter"
    puts "you have #{@guesses_left} guesses remaining"
    answer_array = Array.new(@word.length)
    puts " ___ " * @word.length
  end
  def accept_player_input

    input = gets.chomp
    if !@word.include?(input)
      @all_guesses.push(input)
      @guesses_left -= 1
      puts 'No, Incorrect Answer!'
    else
      puts 'Hurray, That is Correct!'
    end
  end
  def is_out_of_guesses
    @guesses_left == 0

  end
  def show_guesses
    puts @all_guesses.join(',')
  end
  def winner

  end

end



