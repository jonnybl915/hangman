class Word

  def initialize
    @word = grab_random_word

  end

  def grab_random_word
    #returns a random word from the dictionary or other source

    # rando2 =  File.read('/usr/share/dict/words').lines.select {|l| (5 .. 12).cover?(l.strip.size)}.sample.strip
    # puts rando2
    File.read('/usr/share/dict/words').lines.select {|l| (4..9).cover?(l.strip.size)}.sample.strip

  end
end

w = Word.new.grab_random_word
puts w



