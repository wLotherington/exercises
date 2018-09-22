# understand
#   3 methods, verse, verses, & lyrics
#   verse accepts 1 argument and returns it
#   verses accept 2 args (start and end) => pass to verse method
#   lyrics recieves no method and returns entire song (99-0)
#   1 & 0 are special cases
# 

# class BeerSong
#   def verse(count)
#     case count
#     when 3
#       "3 bottles of beer on the wall, 3 bottles of beer.\nTake one down and pass it around, 2 bottles of beer on the wall.\n"
#     when 2
#       "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
#     when 1
#       "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
#     when 0
#       "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
#     else
#       "#{count} bottles of beer on the wall, #{count} bottles of beer.\nTake one down and pass it around, #{count-1} bottles of beer on the wall.\n"
#     end
#   end

#   def verses(start, finish)
#     song = []
#     start.downto(finish).each { |count| song << verse(count) }
#     song.join("\n")
#   end

#   def lyrics
#     verses(99, 0)
#   end
# end

## Bonus - no conditionals
class BeerSong
  attr_reader :words
  def initialize
    @words = write_words
  end

  def verse(n)
    "#{words[n][0]} bottle#{words[n][1]} of beer on the wall, #{words[n][2]} bottle#{words[n][1]} of beer.\n#{words[n][3]}, #{words[n][4]} bottle#{words[n][5]} of beer on the wall.\n"
  end

  def verses(start, finish)
    song = []
    start.downto(finish).each { |count| song << verse(count) }
    song.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def write_words
    words = Hash.new

    (4..99).each { |n| words[n] = [n, 's', n, 'Take one down and pass it around', n - 1, 's'] }
    words[3] = [3, 's', 3, 'Take one down and pass it around', 2, 's']
    words[2] = [2, 's', 2, 'Take one down and pass it around', 1, '']
    words[1] = [1, '', 1, 'Take it down and pass it around', 'no more', 's']
    words[0] = ['No more', 's', 'no more', 'Go to the store and buy some more', 99, 's']

    words
  end
end
