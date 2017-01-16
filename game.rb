require_relative 'word'


class Game
  def initialize

    # good_werds = []
    # File.foreach('/usr/share/dict/words') do |line|
    #   w = line.chomp
    #   if  4 <= w.length && w.length <= 9 && w.downcase == w
    #     good_werds.push(w)
    #   end
    # end

    contents = File.read('/usr/share/dict/words')
    words = contents.split
    good_words = words.select do |w|
      4 <= w.length && w.length <= 9 && w.downcase == w
    end
    @word = good_words.sample

    @all_guesses = []


    @guesses_left = 5
    @answer_array = Array.new(@word.length)
    @correct_guesses = []
  end
  def prompt_player_for_input
    # puts "Your word is #{@word}"
    puts "Please select a letter"
    puts "you have #{@guesses_left} guesses remaining"

  end
  def accept_player_input

    input = gets.chomp
    if !@word.include?(input)
      @all_guesses.push(input)
      @guesses_left -= 1
      puts 'No, Incorrect Answer!'
    else
      puts 'Hurray, That is Correct!'
      @correct_guesses.push(input)
      @all_guesses.push(input)

    end
  end
  def is_out_of_guesses
    @guesses_left == 0

  end
  def show_answer
    puts "The Correct Answer was #{@word}"
  end
  def show_board

    @board = @word.chars.map do |char|
      if @correct_guesses.include? char
        char
      else
        ('__')
      end
    end
   puts @board.join(' | ')
    @board

  end
  def show_guesses
    puts @all_guesses.join(' ')
  end
  def winner
    !show_board.include?('__')

    # @word.chars.all? do |letter|
    #   @all_guesses.include? letter
    # (@word.chars - @all_guesses).empty?
    #   true
    end

end



