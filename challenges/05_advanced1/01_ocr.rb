class OCR
  CHARS = {
    " _\n| |\n|_|\n" => '0',
    "\n  |\n  |\n"   => '1',
    " _\n _|\n|_\n"  => '2',
    " _\n _|\n _|\n" => '3',
    "\n|_|\n  |\n"   => '4',
    " _\n|_\n _|\n"  => '5',
    " _\n|_\n|_|\n"  => '6',
    " _\n  |\n  |\n" => '7',
    " _\n|_|\n|_|\n" => '8',
    " _\n|_|\n _|\n" => '9'
  }
  CHARS.default = '?'

  def initialize(text)
    @text = text
  end

  def convert
    # lines = to_lines(@text)
    pipes = to_pipes(@text)
    # to_char(pipes)
  end

  def to_lines(text)
  end

  def to_pipes(lines)
    line1, line2, line3 = lines.split("\n")
    line1
  end

  def to_char(pipes)
    pipes.map { |pipe| CHARS[pipe] }.join
  end
end

text = <<-NUMBER.chomp
    _
  || |
  ||_|

NUMBER
# OCR.new(text).convert
puts OCR.new(text).convert