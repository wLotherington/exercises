class Element
  attr_reader :datum, :next

  def initialize(elem, next_elem = nil)
    @datum = elem
    @next = next_elem
  end

  def tail?
    !!datum
  end
end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def size
    @list.size
  end

  def empty?
    @list.empty?
  end

  def push(elem)
    @list << Element.new(elem, @list.last)
  end

  def peek
    @list.last.datum unless empty?
  end

  def head
    @list.last
  end

  def pop
    @list.pop.datum
  end

  def self.from_a(arr)
    list = SimpleLinkedList.new
    arr.reverse.each { |elem| list.push(elem) } unless arr.nil?
    list
  end

  def to_a
    @list.reverse.map(&:datum)
  end

  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end
end