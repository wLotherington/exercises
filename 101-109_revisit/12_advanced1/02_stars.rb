def star(size)
  size.times do |row|
    size.times do |col|
      print part_of_star?(size, row, col) ? '*' : ' '
    end
    puts
  end
end

def part_of_star?(size, row, col)
  row == col            ||
  row + col == size - 1 ||
  row == (size - 1) / 2 ||
  col == (size - 1) / 2
end

star(7)