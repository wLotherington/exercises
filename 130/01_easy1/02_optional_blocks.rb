# def compute
#   block_given? ? yield : "Does not compute."
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

def compute(arg)
  block_given? ? yield(arg) : "Does not compute."
end

p compute(1) { |n| n + 1}
p compute(2) { |n| n + 1}
p compute(3) { |n| n + 1}
p compute(4)