class Word
  def grab_random_word
    # File.read('/usr/share/dict/words').lines.select {|l| (4..8).cover?(l.strip.size)}.sample.strip
    contents = File.read('/usr/share/dict/words')
    words = contents.split
    goodwords = words.select do |w|
      4 <= w.length && w.length <= 9 && w.downcase == w
      goodwords.sample
    end
  end
end




