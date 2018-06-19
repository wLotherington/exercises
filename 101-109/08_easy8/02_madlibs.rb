# understand
#   create madlibs game
#   noun, verb, adverb, adjective
#
# i/o
#   input - several string inputs form user
#   output - string
#
# algorithm
#   prompt for wach part of speach then build a madlib

words = {}

def prompt(type, words)
  print "Enter a #{type}: "
  words[type] = gets.chomp
end

puts 

prompt('noun', words)
prompt('verb', words)
prompt('adjective', words)
prompt('adverb', words)

puts
puts "you #{words['verb']} your #{words['adjective']} #{words['noun']} #{words['adverb']}? That's hilarious!"