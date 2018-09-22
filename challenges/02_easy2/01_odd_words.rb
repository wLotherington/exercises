# understand
#   charachter set = letters, 1 space, 1 point
#   words = 1..20 letters
#   input test = 1+ words separated by 1+ spaces & terminated by 0+ spaces & 1 point
#   read input from first letter of first word to end point
#   output test = seccessive words are separated by 1 space & last word terminated by point & odd words (idx) reversed

# bonus, read & print characters 1 at a time

# i/o
#   input - string
#   output - string
#
# edge
#   caps & lowers
#   multiple spaces
#   leading and trailling spaces (before point)
#   1 letter input
#   20 letter word
#
# algorithm 1
#   remove point from string
#   break string into words with String#split
#   iterate through array with map with index
#   if index is odd, reverse, otherwise leave the same
#   join
#   add point
#
# algorithm 2
#   loop through string. break on point
#   detect if character is a space, a character, or a point
#   maintain a previous local variable that shows you what the last character type was
#   1 - index every time previous was character and curr is space
#   display space if curr is space and previous is character
#   display character if cur is character and index is even

#   if current is character and index is odd, shift reverse_buffer
#   if curr is space or point and previous was character and buffer is not empty, display buffer and clear it

# def odd_words(str)
#   str.delete('.').split.map.with_index do |word, idx|
#     idx.odd? ? word.reverse : word
#   end.join(' ') << '.'
# end

# odd_words('hello world.')
# p odd_words('hello.')                  == 'hello.'
# p odd_words('h.')                      == 'h.'
# p odd_words('h hi.')                   == 'h ih.'
# p odd_words(' h    hi .')              == 'h ih.'
# p odd_words('h hH.')                   == 'h Hh.'
# p odd_words('z aaaaaaaaaaaaaaaaaaaA.') == 'z Aaaaaaaaaaaaaaaaaaaa.'
# p odd_words('hi my name is will.')     == 'hi ym name si will.'

# INCOMPLETE BONUS ATTEMPT
class OddWords
  POINT = '.'
  SPACE = ' '

  def initialize(str)
    @chars    = str.chars
    @current  = nil
    @previous = nil
    @index    = 0
    @char_count = 0
    @buffer   = ''
  end

  def output
    @chars.each do |char|
      @current = type(char)

      add_to_buffer(char) if add_buffer?
      print @buffer if buffer?
      clear_buffer  if buffer?
      print POINT   if point?
      print SPACE   if space?
      print char    if char?
      count_char    if char?
      increment     if new_word?

      @previous = @current
    end
    puts
  end

  def type(char)
    case char
    when SPACE then :space
    when POINT then :point
    else :letter
    end
  end

  def add_to_buffer(char)
    @buffer = char + @buffer
  end

  def clear_buffer
    @buffer = ''
  end

  def add_buffer?
    @current == :letter &&
    @index.odd?
  end

  def buffer?
    @previous == :letter &&
    [:space, :point].include?(@current)
  end

  def point?
    @current == :point
  end

  def space?
    @current == :letter &&
    @previous == :space &&
    @char_count > 0
  end

  def char?
    @current == :letter &&
    @index.even?
  end

  def count_char
    @char_count += 1
  end

  def new_word?
    @previous == :letter &&
    @current == :space
  end

  def increment
    @index += 1
  end
end

# OddWords.new('hello world .').output
OddWords.new('hello.').output                  # => 'hello.'
OddWords.new('h.').output                      # => 'h.'
OddWords.new('h hi.').output                   # => 'h ih.'
OddWords.new(' h    hi .').output              # => 'h ih.'
OddWords.new('h hH.').output                   # => 'h Hh.'
OddWords.new('z aaaaaaaaaaaaaaaaaaaA.').output # => 'z Aaaaaaaaaaaaaaaaaaaa.'
OddWords.new('hi my name is will.').output     # => 'hi ym name si will.'
