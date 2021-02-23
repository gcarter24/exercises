class Bowling
  attr_accessor :roll, :score

  def initialize(input_options)
    @roll = input_options[:roll]
    @score = input_options[:score]
  end
end

bowling = Bowling.new(2)

p bowling.score
p bowling.roll
