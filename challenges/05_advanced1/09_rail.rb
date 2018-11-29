# understand
#   createa a class that can either encode or
#   decode a string using a rail cipher
#
# i/o
#   input - str & int
#   output - str
#
# algorithm
#   2 nested loops within a loop
#     1st loop counts up from 0 breaking if too long or hitting max
#     second loop counts down braking if too long or hitting 0

# attempt 1. Rather messy
# class RailFenceCipher
#   def self.encode(str, rail_count)
#     pattern = build_pattern(str.size, rail_count)
#     rails = (0...rail_count).map { [] }

#     str.chars.each_with_index do |char, idx|
#       rails[pattern[idx]] << char
#     end

#     rails.flatten.join
#   end

#   def self.decode(str, rail_count)
#     pattern = build_pattern(str.size, rail_count)

#     rail_counts = pattern.uniq.map { |rail| pattern.count(rail) }
#     rails = rail_counts.map { |rail_idx| str.slice!(0...rail_idx) }

#     pattern.map { |rail_idx| rails[rail_idx].slice!(0) }.join
#   end

#   def self.build_pattern(length, max)
#     pattern = []

#     loop do
#       0.upto(max - 1) do |n|
#         break if pattern.size >= length
#         pattern << n
#       end

#       (max - 2).downto(1) do |n|
#         break if pattern.size >= length
#         pattern << n
#       end

#       break if pattern.size >= length
#     end

#     pattern
#   end
# end

# attempt2 refactored pattern generation
class RailFenceCipher
  def self.encode(string, rail_count)
    pattern = generate_pattern(string.size, rail_count)
    rails = (0...rail_count).map { [] }

    string.chars.each_with_index do |char, idx|
      rails[pattern[idx]] << char
    end

    rails.flatten.join
  end

  def self.decode(string, rail_count)
    pattern = generate_pattern(string.size, rail_count)

    rail_counts = pattern.uniq.map { |rail| pattern.count(rail) }
    rails = rail_counts.map { |rail_idx| string.slice!(0...rail_idx) }

    pattern.map { |rail_idx| rails[rail_idx].slice!(0) }.join
  end

  def self.generate_pattern(string_length, rail_count)
    rail = 0
    shift = 0

    (0...string_length).map do
      value = rail += shift

      if rail_count > 1 && value.zero?
        shift = 1
      elsif rail_count > 1 && value == rail_count - 1
        shift = -1
      end

      value
    end
  end
end
