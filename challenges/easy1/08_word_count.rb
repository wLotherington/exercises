# class Phrase
#   def initialize(words)
#     @words = clean(words)
#   end

#   def word_count
#     @words.uniq.map { |word| [word, @words.count(word)] }.to_h
#   end

#   def clean(words)
#     words.downcase.gsub(/\s\W*|\W*\s|[^\w+'\w+]/, ' ').split
#   end
# end

class Phrase
  def initialize(words)
    @words = words.downcase.scan(/\w+'?\w+|\w+/i)
  end

  def word_count
    @words.uniq.map { |word| [word, @words.count(word)] }.to_h
  end
end
