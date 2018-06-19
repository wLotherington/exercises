# understand
#   return all the palindrome substrings
#
# i/o
#   input - str
#   output - arr
#
# algorithm
#   check with reverse and use select

def substrings_at_start(str)
  sub_strings = []
  1.upto(str.length) { |count| sub_strings << str[0...count] }
  sub_strings
end

def substrings(str)
  subs = []
  0.upto(str.length - 1) do |count|
    subs << substrings_at_start(str[count...str.length])
  end
  subs.flatten
end

def palindromes(str)
  substrings(str).select { |sub| sub == sub.reverse && sub.length > 1}
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
