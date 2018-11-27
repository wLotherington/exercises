# understand
#   receive array of strings representing a board with mines
#   replace all of the blank spaces with the number of mines
#     that the space is touching
#   return array of strings

# i/o
#   input - array of strings (all strings are the same length)
#   output - array of strings. strings are the same length as input,
#     but all spaces have been replaced by ints

# reflectione
#   could have used regex to validate input

class ValueError < ArgumentError; end

## Minesweeper map
# class Board
#   OFFSETS = [
#     { x: 0,  y: 1  },
#     { x: 0,  y: -1 },
#     { x: 1,  y: 1  },
#     { x: 1,  y: 0  },
#     { x: 1,  y: -1 },
#     { x: -1, y: 1  },
#     { x: -1, y: 0  },
#     { x: -1, y: -1 }
#   ].freeze
#   VALID = [' ', '*'].freeze

#   def self.transform(board)
#     @board = board
#     raise ValueError unless valid_board?

#     board.map.with_index do |row, x|
#       row.chars.map.with_index do |char, y|
#         char == ' ' ? sweep(x, y) : char
#       end.join
#     end
#   end

#   private_class_method

#   def self.sweep(x, y)
#     count = OFFSETS.map do |offset|
#       @board[x + offset[:x]][y + offset[:y]]
#     end.count('*')

#     count.zero? ? ' ' : count
#   end

#   def self.valid_board?
#     return false unless valid_size?
#     return false unless valid_horizontal_borders?
#     return false unless valid_vertical_borders?
#     return false unless valid_characters?
#     true
#   end

#   def self.valid_size?
#     @board.map(&:size).uniq.size == 1
#   end

#   def self.valid_horizontal_borders?
#     return false unless @board.first.chars.uniq.join == '+-'
#     return false unless @board.last.chars.uniq.join == '+-'
#     true
#   end

#   def self.valid_vertical_borders?
#     transposed = @board.map(&:chars).transpose.map(&:join)
#     return false unless transposed.first.chars.uniq.join == '+|'
#     return false unless transposed.last.chars.uniq.join == '+|'
#     true
#   end

#   def self.valid_characters?
#     borderless = @board[1..(@board.size - 2)].map(&:chars).transpose
#     chars = borderless[1..(borderless.size - 2)].flatten.uniq
#     chars.each { |char| return false unless VALID.include?(char) }
#   end
# end

# Minesweeper map refactoring
class Board
  OFFSETS = [{ x: 0,  y: 1 }, { x: 0,  y: -1 }, { x: 1,  y: 1 },
             { x: 1,  y: 0 }, { x: 1,  y: -1 }, { x: -1, y: 1 },
             { x: -1, y: 0 }, { x: -1, y: -1 }].freeze
  VALID = [' ', '*'].freeze

  def self.transform(board)
    @board = board
    raise ValueError unless valid_board?

    board.map.with_index do |row, x|
      row.chars.map.with_index do |char, y|
        char == ' ' ? sweep(x, y) : char
      end.join
    end
  end

  def self.sweep(x, y)
    mine_count = OFFSETS.map do |offset|
      @board[x + offset[:x]][y + offset[:y]]
    end.count('*')

    mine_count.zero? ? ' ' : mine_count
  end

  def self.valid_board?
    # valid size?
    return false unless @board.map(&:size).uniq.size == 1
    
    # valid boarders and chars?
    return false unless @board.first =~ /\A\+-+\+\z/
    return false unless @board.last =~ /\A\+-+\+\z/
    @board[1..-2].each { |row| return false unless row =~ /\A\|[*| ]+\|\z/ }

    # otherwise true
    true
  end
end
