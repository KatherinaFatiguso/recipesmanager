#this file is reqiured in recipes_manager.rb

class Measurement
  attr_accessor :unit, :metrix

  def initialize(unit, metrix)
    @unit = unit
    @metrix = metrix
  end

  def to_s
    "#{@unit} #{@metrix}"
  end

  def self.all
    {two_fruits: Measurement.new(2, 'ripe fruits'),
      two_cups: Measurement.new(2, 'cups'),
      one_hundred_grams: Measurement.new(100, 'grams'),
      one_kilo: Measurement.new(1, 'kilo'),
      three_items: Measurement.new(3, 'large size'),
      two_clovers: Measurement.new(2, 'clovers'),
      one_tbsp: Measurement.new(1, 'tablespoon')
    }
  end

end #end of Measurement class
