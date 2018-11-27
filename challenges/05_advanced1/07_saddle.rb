# Saddle Points
class Matrix
  attr_reader :rows, :columns

  def initialize(points)
    @rows = points.split("\n").map { |row| row.split.map(&:to_i) }
    @columns = rows.transpose
  end

  def saddle_points
    points = []
    rows.each_with_index do |row, row_idx|
      row.each_with_index do |point, col_idx|
        if point == row.max && point == columns[col_idx].min
          points << [row_idx, col_idx]
        end
      end
    end
    points
  end
end
