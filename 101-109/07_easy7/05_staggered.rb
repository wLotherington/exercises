# understand
#   take a string and return with staggered text
#
# i/o
#   inpud & output - string
#
# algorithm
#   each with index

def staggered_case(str, cap = 0)
  str.chars.each_with_index { |char, idx| (idx + cap).odd? ? char.downcase! : char.upcase! }.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ALL_CAPS', 1) == 'aLl_cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'