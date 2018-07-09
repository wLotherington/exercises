def circle(radius)
  grid = radius * 2 + 1
  center = radius + 1
  1.upto(grid) do |y|
    x = (((radius**2 - (y-center)**2)**0.5).abs + center).round
    space = grid - x
    marks = grid - space * 2
    space, marks = space * 2, marks * 2
    puts "#{' ' * space}#{"\u25cf" * marks}"
  end
end

radius = 0
loop do
  print "Input positive integer for circle radius: "
  radius = gets.chomp.to_i
  break if radius.to_i != 0 
  puts "invalid"
end
circle(radius)
