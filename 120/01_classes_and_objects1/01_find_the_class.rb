# # Question 1
# puts "Hello".class
# puts 5.class
# puts [1, 2, 3].class

# # Question 2
module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  attr_accessor :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

# Question 3
kitty = Cat.new('Sophia')
kitty.greet
kitty.name = 'Luna'
kitty.greet
kitty.walk