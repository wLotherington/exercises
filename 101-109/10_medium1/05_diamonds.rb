# understand
#   display diamond
#   input is n which is an odd integer
#
# i/o
#   input - odd int
#   output - printed diamond
#
# algorithm
#   loop n times (count)
#   if growing phase (count < n/2)
#     spaces - n/2 - count
#     stars
#   if shrinking phase (count > n/2)
#     spaces
#     stars

def diamond(num, filled = true)
  num.times do |n|
    spaces = num / 2 - n if num / 2 >= n
    spaces = n - num / 2 if num / 2 < n
    stars = num - spaces * 2
    fill = stars - 2

    if !filled && fill > 0
      puts "#{' ' * spaces}*#{' ' * fill}*"
    else
      puts "#{' ' * spaces}#{'*' * stars}"
    end
  end
end

# diamond(1)
# puts
# diamond(3)
# puts
# diamond(5)
# puts
diamond(7, false)
diamond(7)
