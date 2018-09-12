items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*veg ,grain|
  puts veg.join(', ')
  puts grain
end

gather(items) do |fruit, *veg, grain|
  puts fruit
  puts veg.join(', ')
  puts grain
end

gather(items) do | a, b, c, d|
  puts "#{a}, #{b}, #{c}, #{d}"
end