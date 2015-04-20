class Instructions
  attr_accessor :steps

  def initialize
    @steps = []
  end

  def to_s
    string = []
    @steps.each { |step| string << "#{step}" }
    string.join("\n")
  end
end
