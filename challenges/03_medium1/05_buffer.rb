# understand
#   need to track write position (next available in circle or overwrite oldest)
#   need to track read position (oldest)
#     alternatively you could have a data structure that keeps track of age. but this could lead to increasing memory requirements
#   raise exception if buffer is empty and #read is called
#   clear buffer if #clear is called
#   nil arguments shouldnt be written
#   raise BufferFull exception if #write is called on full buffer
#   write! should overwrite oldest position
#
# reflection
#   looking at other's code, I think I took this too literally by trying to force my solution to match the
#     human readable description. This resulted in less readable code since I didn't take advantage of 
#     methods that are better geared for array handling.

## first working pass
# class CircularBuffer
#   def initialize(size)
#     @buffer = Array.new(size)
#     @size = size
#     @read_pos = 0
#     @write_pos = 0
#     @overwrite
#   end

#   def write(data)
#     return unless !!data

#     if @overwrite
#       @overwrite = false
#     else
#       raise BufferFullException.new if @buffer.count(nil).zero?
#     end

#     @buffer[@write_pos] = data
#     increment :write
#   end

#   def write!(data)
#     return unless !!data

#     @overwrite = true
#     increment :read if !!@buffer[@write_pos]
#     write(data)
#   end

#   def read
#     raise BufferEmptyException.new unless !!@buffer[@read_pos]
#     return_value = @buffer[@read_pos]
#     @buffer[@read_pos] = nil
#     increment :read
#     return_value
#   end

#   def increment type
#     @read_pos = (@read_pos + 1) % @size if type == :read
#     @write_pos = (@write_pos + 1) % @size if type == :write
#   end

#   def clear
#     @buffer = @buffer.map { nil }

#     @read_pos = 0
#     @write_pos = 0
#   end

#   class BufferEmptyException < StandardError; end
#   class BufferFullException < StandardError; end
# end

class CircularBuffer
  def initialize(size)
    @buffer = []
    @max_size = size
  end

  def write(data)
    return unless !!data
    raise BufferFullException if full?
    @buffer.unshift(data)
  end

  def write!(data)
    return unless !!data
    @buffer.pop if full?
    write(data)
  end

  def read
    raise BufferEmptyException if @buffer.empty?
    @buffer.pop
  end

  def clear
    @buffer.clear
  end

  private

  def full?
    @buffer.size >= @max_size
  end

  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end
end

buffer = CircularBuffer.new(2)
buffer.write '1'
buffer.write '2'
# buffer.write! 'A'
# assert_equal '2', buffer.read
# assert_equal 'A', buffer.read
# assert_raises(CircularBuffer::BufferEmptyException) { buffer.read }