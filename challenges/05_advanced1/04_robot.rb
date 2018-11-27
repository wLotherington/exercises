# Simulator
class Simulator
  def instructions(input)
    commands = []
    input.chars.each do |command|
      commands << case command
                  when 'L' then :turn_left
                  when 'R' then :turn_right
                  when 'A' then :advance
                  end
    end
    commands
  end

  def place(robot, config = {})
    robot.at(config[:x], config[:y])
    robot.orient(config[:direction])
  end

  def evaluate(robot, input)
    instructions(input).each { |command| robot.send(command) }
  end
end

# Robot
class Robot
  attr_reader :bearing, :coordinates
  DIRECTIONS = [:north, :east, :south, :west].freeze

  def initialize
    @bearing = nil
    @coordinates = nil
  end

  def orient(direction)
    raise ArgumentError unless DIRECTIONS.include?(direction)
    @bearing = direction
  end

  def turn_right
    @bearing = case @bearing
               when :north then :east
               when :east  then :south
               when :south then :west
               when :west  then :north
               end
  end

  def turn_left
    @bearing = case @bearing
               when :north then :west
               when :east  then :north
               when :south then :east
               when :west  then :south
               end
  end

  def at(x, y)
    @coordinates = [x, y]
  end

  def advance
    case @bearing
    when :north then @coordinates[1] += 1
    when :east  then @coordinates[0] += 1
    when :south then @coordinates[1] -= 1
    when :west  then @coordinates[0] -= 1
    end
  end
end
