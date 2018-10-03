## Attempt1
# reflections
#   the "cleaning" step is not very robust, I should probably flip it to only look for those words
#   looking at examples, they used #scan to pull out numbers and operators
#   also used reduce
# class WordProblem
#   OPERATION = {
#     'plus' => '+',
#     'minus' => '-',
#     'multiplied' => '*',
#     'divided' => '/'
#   }

#   def initialize(str)
#     words = str.gsub(/what|is|\?|by/i, '').split
#     @problem = words.map do |word|
#       if word.match(/\A-?\d+\z/)
#         word.to_i
#       elsif OPERATION.key? word
#         OPERATION[word]
#       else
#         nil
#       end
#     end
#   end

#   def answer
#     result = 0

#     idx = 0
#     while idx < @problem.length
#       if @problem[idx].is_a? Integer
#         result = @problem[idx]
#         idx += 1
#       elsif !@problem[idx].is_a?(String) || !@problem[idx+1].is_a?(Integer)
#         raise ArgumentError
#       else
#         result = result.send(@problem[idx], @problem[idx + 1])
#         idx += 2
#       end
#     end
#     result
#   end
# end

class WordProblem
  OPERATORS = { 'plus' => :+, 'minus' => :-,
                'multiplied' => :*, 'divided' => :/ }

  def initialize(word_problem)
    @problem = parse(word_problem)
  end

  def answer
    result = @problem.shift
    until @problem.empty?
      result = result.send(@problem.shift, @problem.shift)
    end
    result
  end

  private

  def parse(word_problem)
    problem = word_problem.scan(/-?\d+|plus|minus|divided|multiplied/)
    problem = problem.map { |elem| elem.match(/-?\d+/) ? elem.to_i : OPERATORS[elem] }
    raise ArgumentError unless valid?(problem)
    problem
  end

  def valid?(problem)
    return false unless problem.first.is_a?(Integer) &&
                        problem.last.is_a?(Integer) &&
                        problem.size >= 3

    problem.each_with_index do |elem, idx|
      return false unless idx.even? && elem.is_a?(Integer) ||
                          idx.odd? && elem.is_a?(Symbol)
    end
    true
  end
end

# p WordProblem.new('What is 1 plus 1?').answer
# p WordProblem.new('What is 53 cubed?').answer
# p WordProblem.new('What is 1 plus 1?').answer
# p WordProblem.new('What is 53 plus 2?').answer
# p WordProblem.new('What is -1 plus -10?').answer
# p WordProblem.new('What is 123 plus 45678?').answer
# p WordProblem.new('What is 4 minus -12?').answer
# p WordProblem.new('What is -3 multiplied by 25?').answer
# p WordProblem.new('What is 33 divided by -3?').answer
# p WordProblem.new('What is 1 plus 1 plus 1?').answer
# p WordProblem.new('What is 1 plus 5 minus -2?').answer
# p WordProblem.new('What is 20 minus 4 minus 13?').answer
# p WordProblem.new('What is 17 minus 6 plus 3?').answer
# p WordProblem.new('What is 2 multiplied by -2 multiplied by 3?').answer
# p WordProblem.new('What is -3 plus 7 multiplied by -2?').answer
# p WordProblem.new('What is -12 divided by 2 divided by -3?').answer
# # p WordProblem.new('What is 53 cubed?').answer
# # p WordProblem.new('Who is the president of the United States?').answer
