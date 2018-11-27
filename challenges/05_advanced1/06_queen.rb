# Queens
class Queens
  attr_reader :white, :black

  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black
    @white = white
    @black = black
    @board = Array.new(8).map { %w(_ _ _ _ _ _ _ _) }
  end

  def to_s
    @board[white[0]][white[1]] = 'W'
    @board[black[0]][black[1]] = 'B'
    @board.map { |row| row.join(' ') }.join("\n")
  end

  def attack?
    same_row? || same_column? || same_diagonal?
  end

  private

  def same_row?
    white[1] == black[1]
  end

  def same_column?
    white[0] == black[0]
  end

  def same_diagonal?
    (white[0] - black[0]).abs == (white[1] - black[1]).abs
  end
end
