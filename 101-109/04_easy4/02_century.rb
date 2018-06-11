# understand
#   method takes a year as input
#   return century number as string
#
# i/o
#   input - int
#   output - string
#
# algorithm
#   0   - 100 = 1st
#   101 - 200 = 2nd
#   201 - 300 = 3rd
#   501 - 600 = 11th
#   501 - 600 = 12th
#   501 - 600 = 13th
#   ... - ... = ...th
#
#   century = input / 100 + 1
#   exceptions for 11, 12, 13
#   check century[-1] for 1, 2, 3
#   century.to_s + th (or appropriate ending)

def century(year)
  century = ((year - 1) / 100) + 1
  century = century.to_s
  century + ending(century)
end

def ending(century)
  if %w(11 12 13).include?(century[-2..-1])
    return 'th'
  end

  case century[-1]
  when '1' then return 'st'
  when '2' then return 'nd'
  when '3' then return 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'