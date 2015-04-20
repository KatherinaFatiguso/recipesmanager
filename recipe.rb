$apple_pie_method = Instructions.new
$apple_pie_method.steps << Step.new(1, "Get apples.")
$apple_pie_method.steps << Step.new(2, "Peel, steam and mash apples.")
$apple_pie_method.steps << Step.new(3, "Mix sugar, eggs and flour into dough.")
$apple_pie_method.steps << Step.new(4, "Place apple puree on top of the dough.")
$apple_pie_method.steps << Step.new(5, "Bake it 180 c for 30 mins.")

$roast_lamb_method = Instructions.new
$roast_lamb_method.steps << Step.new(1, "Crush garlics, add salt and rub it to the lamb.")
$roast_lamb_method.steps << Step.new(2, "Peel, chop and arrange potatoes on ovenproof tray.")
$roast_lamb_method.steps << Step.new(3, "Put the lamb on top of the potatoes.")
$roast_lamb_method.steps << Step.new(4, "Put in the oven for 200 c for 30 mins.")


$apple_pie_ingredients =
  [Ingredient.all[:apple],
  Ingredient.all[:self_rising_flour],
  Ingredient.all[:sugar]]

  $roast_lamb_ingredients =
    [Ingredient.all[:lamb],
    Ingredient.all[:potatoes],
    Ingredient.all[:garlics],
    Ingredient.all[:salt]]

class Recipe
  attr_accessor :title, :ingredients, :method, :type

  def initialize(title, ingredients, method, type)
    @title = title
    @ingredients = ingredients
    @method = method
    @type = type
  end

  def to_s
    string = []
    string << "\n#{@title} - #{@type}"
    string << "--------------------\n"
    string << "Ingredients:"
    @ingredients.each { |ing| string << ing.to_s }
    string << "Method: \n#{@method}"
    string.join("\n")
  end

  def self.all
    [ Recipe.new('Apple pie', $apple_pie_ingredients, $apple_pie_method, 'Breakfast'),
    Recipe.new('Roast Lamb', $roast_lamb_ingredients, $roast_lamb_method, 'Dinner') ]
  end

end
