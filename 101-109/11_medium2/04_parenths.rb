# understand
#   check if all the parentheses are balanced
#   not that you can't just use count since hte order matters
#
# i/o
#   input - string
#   output - boolean
#
# algorithm
#   every ( is a positive 1, every ) if a negative 1.
#   start at 0, if it ever goes negative return false
#   if it end on 0, return true
#
# reflection
#   could have used break if paren < 0 instead of return false
#   could have used paren.zero? instead of == 0

def balanced?(str)
  paren = 0
  str.chars.each do |char|
    paren += 1 if char == '('
    paren -= 1 if char == ')'
    return false if paren < 0
  end
  paren == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false