=begin
time: 9min

understand
- take one input
- input = string with 1+ words
- return string with all 5+ letter words reversed

input/output data structures
- input = string
- output - string

algorithm
- split string into array
- loop through with map 
- add conditional String#reverse for 5+ letter words
- join array to string & return

notes
- i had to add a variable 'reversed' to hold the array
- i prefer the solutions method of defining an array to hold the modified words

=end

def reverse_words(string)
  reversed = string.split.map do |word| 
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  reversed.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS