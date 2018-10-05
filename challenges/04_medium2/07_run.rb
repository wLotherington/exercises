# understand
#   #encode class method accespts a single string argument
#   reduces and repeated consecutive characters with a number (indicating how many times it repeats)
#     and the character (only once)
#   if the character only appears once, there is no "count" given
#   the decode process does the opposite
#   be wary of the challenge of 2+ digit numbers
#
# i/o
#   input - string
#   output - string
#
# encode algorithm
#   create a "encoded" arr variable
#   encoded arr will contain sub arrs each with a char and the consecutive occurrance count
#   break string into arr (chars) and iterate through each
#   if the current char == the last char in the encoded arr, add 1 to the occurrance count
#   if the currrent char != last char, add a new sub arr to encoded
#
# decode algorithm
#   create a decoded string variable
#   use scan(/\d*[^\d]/) to break up into arr
#   iterate through each and break out digits and convert to int and break out non digit using regex
#   shovel the char * int (1 if no int) into the decoded variable
#
# reflection
#   damn, I was pretty proud of my solution until I looked at the submitted ones. The regex ones
#     that leverage blocks to manipulate the regex method outputs are awesome

## attempt 1
class RunLengthEncoding
  def self.encode(input)
    encoded = []
    input.chars.each do |char|
      if encoded.empty? || encoded.last[1] != char
        encoded << [1, char]
      else
        encoded.last[0] += 1
      end
    end
    encoded.flatten!.delete(1)
    encoded.join
  end

  def self.decode(input)
    decoded = ''
    groups = input.scan(/\d*[^\d]/)
    groups.each do |group|
      count = group.match(/\d*/).to_s.to_i
      count = 1 if count.zero?
      char = group.match(/[^\d]/).to_s
      decoded << char * count
    end
    decoded
  end
end

## solution from example. I need to reference this next time I read the regex book
# module RunLengthEncoding
#   def self.encode(input)
#     input.gsub(/(.)\1{1,}/) { |match| match.size.to_s + match[0] }
#   end

#   def self.decode(input)
#     input.gsub(/\d+\D/) { |match| match[-1] * match.to_i }
#   end
# end
