class Robot
  attr_reader :name
  @@registered_names = []

  def initialize
    @name = generate_name
    @@registered_names << @name
  end

  def generate_name
    random_name = ''
    loop do
      2.times { random_name << ('A'..'Z').to_a.sample }
      3.times { random_name << (0..9).to_a.sample.to_s }
      break unless @@registered_names.include? random_name
    end
    random_name
  end

  def reset
    old_name = @name
    initialize
    @@registered_names.delete(old_name)
  end
end
