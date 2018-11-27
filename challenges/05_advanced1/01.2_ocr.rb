# break lines into the 4 rows with split('\n')
# normalize row length by (1) finding letter count and (2) multiplying by 3
# letter count times => populate new array using the loop count to pull index from each of the 4 lines


# Attempt 1
# class OCR
#   NUMBERS = {
#     " _ | ||_|" => "0",
#     "     |  |" => "1",
#     " _  _||_ " => "2",
#     " _  _| _|" => "3",
#     "   |_|  |" => "4",
#     " _ |_  _|" => "5",
#     " _ |_ |_|" => "6",
#     " _   |  |" => "7",
#     " _ |_||_|" => "8",
#     " _ |_| _|" => "9",
#     "," => ","
#   }

#   def initialize(text)
#     @text = text
#     @letters = []
#   end

#   def text_to_letters
#     large_lines = @text.split(/\n\n/)
#     large_lines.each do |text|
#       lines = text.split("\n")
#       letter_count = (lines.map(&:size).max / 3.0).ceil
#       letter_segments = lines.map { |line| line.ljust(letter_count * 3) }
#                              .map { |line| line.scan(/.{3}/) }
      
#       letter_count.times do |idx|
#         letter = ""
#         3.times { |line_idx| letter << letter_segments[line_idx][idx] }
#         @letters << letter
#       end
#       @letters << ","
#     end
#   end

#   def convert
#     text_to_letters
#     letters = @letters.map { |letter| NUMBERS[letter] || "?" }.join.gsub(/,\z/, '')
#   end
# end

# Attempt 2
# class OCR
#   NUMBERS = {
#     " _ | ||_|" => "0",
#     "     |  |" => "1",
#     " _  _||_ " => "2",
#     " _  _| _|" => "3",
#     "   |_|  |" => "4",
#     " _ |_  _|" => "5",
#     " _ |_ |_|" => "6",
#     " _   |  |" => "7",
#     " _ |_||_|" => "8",
#     " _ |_| _|" => "9"
#   }
#   NUMBERS.default = "?"

#   def initialize(text)
#     @text = text
#   end

def convert
  @text.split("\n\n").map { |line| line.split("\n").map { |row| row.empty? ? ["   "] : row.scan(/.{1,3}/).map{ |row_segments| row_segments.ljust(3) } }.transpose.map { |letter_segements| letter_segements.join }.map { |letter| NUMBERS[letter] }.join }.join(",")
end
# end

# OCR
class OCR
  NUMBERS = {
    ' _ | ||_|' => '0', '     |  |' => '1', ' _  _||_ ' => '2', ' _  _| _|' => '3', '   |_|  |' => '4',
    ' _ |_  _|' => '5', ' _ |_ |_|' => '6', ' _   |  |' => '7', ' _ |_||_|' => '8', ' _ |_| _|' => '9'
  }
  NUMBERS.default = '?'

  def initialize(text)
    @text = text
  end

  def convert
    lines.map { |line| numbers(line) }.join(',')
  end

  private

  def numbers(line)
    all_segments = rows(line).map { |row| segments(row) }
    all_strings = all_segments.transpose.map { |substr| substr.join }
    all_strings.map { |str| NUMBERS[str] }.join
  end

  def lines
    @text.split("\n\n")
  end

  def rows(line)
    line.split("\n")
  end

  def segments(row)
    row.empty? ? ['   '] : row.scan(/.{1,3}/).map { |segment| segment.ljust(3) }
  end
end
