class Word
  def grab_random_word
    File.read('/usr/share/dict/words').lines.select {|l| (4..9).cover?(l.strip.size)}.sample.strip
  end
end




