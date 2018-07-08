# understand
#   method takes string and returns hash with 3 entries
#   pct of lower, upper, and neither
#   no empty string
#
# i/o
#   input - str
#   output - hash
#
# algorithm
#   str.chars.map
#   replace with u, l, n depending on regex check
#   populate hash

def letter_percentages(str)
  type = str.chars.map do |char|
    case char
    when /[a-z]/ then 'lower'
    when /[A-Z]/ then 'upper'
    else              'neither'
    end
  end

  { lowercase: (100.0 * type.count('lower')   / type.size),
    uppercase: (100.0 * type.count('upper')   / type.size),
    neither:   (100.0 * type.count('neither') / type.size) }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
