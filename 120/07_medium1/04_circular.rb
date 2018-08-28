# understand
#   create a circular queue class that holds arbitrary objects
#   controls
#     allow "enqueue" to add an object
#     allow "dequeue" to remove and return the oldest object (nil if empty)

class CircularQueue
  attr_reader :queue, :size, :idx
  def initialize(size)
    @queue = [nil] * size
    @size = size
    @idx = 0
  end

  def enqueue(obj)
    queue[idx] = obj
    increment
  end

  def dequeue
    old_idx = find_oldest
    return nil unless !!old_idx
    obj = queue[old_idx].dup
    queue[old_idx] = nil
    obj
  end

  def increment
    @idx = (idx + 1) % size
  end

  def find_oldest
    return idx if buffer_full
    oldest_pos
  end

  def buffer_full
    queue.count(nil) == 0
  end

  def oldest_pos
    (1..size).each do |n|
      pos = (idx + n) % size
      return pos if !!queue[pos]
    end
    nil
  end

  def to_s
    queue.dup.to_s
  end
end

system 'clear'
queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil