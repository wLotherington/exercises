include Math

def draw_sine
  # Adjustable
  amplitude = 5
  period_count = 2
  period = 10
  
  # Fixed
  offset = amplitude
  cordinates = []
  x = 1
  current_period = 1

  # Calculate cordinates
  loop do
    y = amplitude * sin(x.to_f / period) + offset
    cordinates << y

    current_period += 1 if next_period?(x, cordinates)

    break if current_period > period_count
    x += 1
  end

  # Display wave
  (amplitude * 2).downto(0) do |row|
    cordinates.each { |y| print (y.to_i == row) ? '*' : ' '}
    puts
  end
end

def next_period?(x, cordinates)
  x > 1 &&
  cordinates[x - 2] < cordinates[0] &&
  cordinates[x - 1] >= cordinates[0]
end

draw_sine