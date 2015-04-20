class Step
  attr_accessor :step, :instruction
  def initialize(step, instruction)
    @step = step
    @instruction = instruction
  end

  def to_s
    "#{@step}. #{@instruction}"
  end
end

# step = Step.new(1, "Buy apples.")
# puts step
