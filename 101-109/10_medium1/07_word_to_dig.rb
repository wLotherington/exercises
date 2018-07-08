# understand
#   receive string
#   convert written out numers to digits & return
#
# i/o
#   input - string
#   output - string
#
# algorithm
#   hash with digit vals and string keys
#   string split
#   string map, replace if has_key?
#   join and return
#
# reflection
#   my initial map attempt ran into a hiccup from the period
#   instead of trying to make a work around I will pivot to a gsub solution

NUMS = { 'zero'  => '0', 'one'   => '1', 'two'   => '2',
         'three' => '3', 'four'  => '4', 'five'  => '5',
         'six'   => '6', 'seven' => '7', 'eight' => '8',
         'nine'  => '9' }

def word_to_digit(str)
  NUMS.each { |k, v| str.gsub!(k, v) }
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# further exploration
#   handle any case strings
#   remove spaces between consecutive numbers of nums you replaced
#   format strings of 10 digits as phone number

# def word_to_digit2(str)

# end

# p word_to_digit2('Please call me at five five five one Two three fOur zero zero zero. Thanks.') == 'Please call me at (555) 123-4000. Thanks.'
# p word_to_digit2('one ONe') == '11'
# p word_to_digit2('one ONe 1 2') == '11 1 2'
# p word_to_digit2('freight') == 'freight'