# understand
#   method prints box around str input
#
# i/o
#   input - string
#   output - multi line strings
#
# algorithm
#   use escape docs
#   use string length as variable

def print_in_box(str)
  size = str.length
  puts <<-box
  +-#{'-' * size}-+
  | #{' ' * size} |
  | #{str} |
  | #{' ' * size} |
  +-#{'-' * size}-+
  box
end

print_in_box('To boldly go where no one has gone before.aduhasgd;kghaslkdghaskljghasklgdhsakljghaskjldghaksldjghaskdjghaskldgjh')
print_in_box('')
