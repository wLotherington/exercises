# reflection
#   could have used String#slice!
#   could have used #scan
#   could have used the anchor regex instead of grabbing specific string positions

class PigLatin
  def self.translate(words)
    words.split.map do |word|
      pos = 0
      
      if word[0].match(/[aeiou]/i) || word[0..1].match(/xr|yt/i)
        pos = 0
      elsif word.match(/qu/i)
        pos = word =~ /[aeio]/
      else
        pos = word =~ /[aeiou]/
      end

      word[pos..-1] + word[0...pos] + 'ay'
    end.join(' ')
  end
end