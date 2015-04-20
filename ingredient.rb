#this file is required in recipes_manager.rb

class Ingredient
  attr_accessor :ingredient, :measurement

  def initialize(ingredient, measurement)
    @ingredient = ingredient
    @measurement = measurement
  end

  def to_s
    "- #{ingredient} #{measurement}"
  end

  def self.all
    {apple: Ingredient.new("Apple", Measurement.all[:two_fruits]),
      self_rising_flour: Ingredient.new("Self-rising flour", Measurement.all[:two_cups]),
      sugar: Ingredient.new("Sugar", Measurement.all[:one_hundred_grams]),
      lamb: Ingredient.new("Lamb", Measurement.all[:one_kilo]),
      potatoes: Ingredient.new("Potatoes", Measurement.all[:three_items]),
      garlics: Ingredient.new("Garlics", Measurement.all[:two_clovers]),
      salt: Ingredient.new("Salt", Measurement.all[:one_tbsp])
    }
  end

end #end of Ingredients class
