=begin
time 5:28

understand the problem
- define argument that takes 1 string as argument
- return the string with words in reverse order

input
- string

output
- string

algorithm
- accept string as method argument
- split string on ' ' into an array
- reverse the array
- join array into a string
- return flattened array

notes from solution
- I could combine the two lines by running it all together
- I don't need the (' ') when splitting
- I don't need to use the reverse! since the simple reverse would return the correct value without mutating the string
=end

def reverse_sentence(str)
  array = str.split(' ')
  array.reverse!.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'