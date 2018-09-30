# use gsub to remove everything except numbers, minus signs, and operative words
# use String#Split to break up the string argument
# 

class WordProblem
  OPERATION = {
    'plus' => '+',
    'minus' => '-',
    'multiplied' => '*',
    'divided' => '/',
    'cubed' => '**3'
  }

  def initialize(str)
    words = str.gsub(/what|is|\?|by/i, '').split
    @problem = words.map do |word|
      if word.match(/\A-?\d+\z/)
        word.to_i
      else
        OPERATION[word]
      end
    end
  end

  def answer
    @problem
  end
end

p WordProblem.new('What is 1 plus 1?').answer
p WordProblem.new('What is 1 plus 1?').answer
p WordProblem.new('What is 53 plus 2?').answer
p WordProblem.new('What is -1 plus -10?').answer
p WordProblem.new('What is 123 plus 45678?').answer
p WordProblem.new('What is 4 minus -12?').answer
p WordProblem.new('What is -3 multiplied by 25?').answer
p WordProblem.new('What is 33 divided by -3?').answer
p WordProblem.new('What is 1 plus 1 plus 1?').answer
p WordProblem.new('What is 1 plus 5 minus -2?').answer
p WordProblem.new('What is 20 minus 4 minus 13?').answer
p WordProblem.new('What is 17 minus 6 plus 3?').answer
p WordProblem.new('What is 2 multiplied by -2 multiplied by 3?').answer
p WordProblem.new('What is -3 plus 7 multiplied by -2?').answer
p WordProblem.new('What is -12 divided by 2 divided by -3?').answer
p WordProblem.new('What is 53 cubed?').answer