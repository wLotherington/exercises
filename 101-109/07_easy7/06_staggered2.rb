def staggered_case(str, cap = 0)
  counter = 0
  str.chars.each { |char|
    (counter + cap).odd? ? char.downcase! : char.upcase!
    counter += 1 if char =~ /[a-zA-Z]/
  }.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'