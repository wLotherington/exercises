class House
  attr_reader :phrases

  def initialize
    @phrases = pieces
  end

  def self.recite
    full_rhyme
  end

  private

  def self.full_rhyme
    phrases = new.phrases
    rhyme = []

    phrases.each_with_index do |phrase, idx|
      line = 'This is '
      (idx...phrases.size).each do |i|
        line << phrases[i].first
        line << "\n#{phrases[i].last} " unless i == (phrases.size - 1)
      end
      rhyme << line
    end

    rhyme.reverse.join(".\n\n") + ".\n"
  end

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

puts House.recite