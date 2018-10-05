class Bst
  attr_reader :data, :left, :right

  def initialize(number)
    @data = number
  end

  def insert(number)
    if number > data
      right.nil? ? @right = Bst.new(number) : right.insert(number)
    else
      left.nil? ? @left = Bst.new(number) : left.insert(number)
    end
  end

  def each(&block)
    to_a.each(&block)
  end

  def to_a
    [left.to_a, data, right.to_a].flatten
  end
end