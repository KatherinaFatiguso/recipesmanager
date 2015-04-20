#Recipes Manager
class Recipe
  attr_accessor :title, :ingredients, :method, :type

  def initialize(title, ingredients, method, type)
    @title = title
    @ingredients = ingredients
    @method = method
    @type = type
  end

  def to_s
   string = "#{@title} - #{@type} \n"
   string += "--------------------\n"
   string += self.ingredients_to_s
   string += "Instructions:\n"
   string += self.method_to_s
 end

 def ingredients_to_s
   string = ""
   @ingredients.each { |ingredient| string += "#{ingredient}\n" }
   string
 end

 def method_to_s
    string = ""
    @method.each_pair { |step, instruction| string += "#{step}. #{instruction}\n" }
    string
  end

  def self.all
    [ Recipe.new('Apple pie',
      ['Two apples', 'two cups of self-rising flour', '100gr sugar', 'three eggs'],
      { 1 => "Get apples.",
        2 => "Peel, steam and mash apples.",
        3 => "Mix sugar, eggs and flour into dough.",
        4 => "Place apple puree on top of the dough.",
        5 => "Bake it 180 c for 30 mins."},
      'Breakfast'),
      Recipe.new('Roast Lamb',
      ['1kg prime lamb', 'three potatoes', '2 garlics', '1tsp salt'],
      { 1 => "Crush garlics, add salt and rub it to the lamb.",
        2 => "Peel, chop and arrange potatoes on ovenproof tray.",
        3 => "Put the lamb on top of the potatoes.",
        4 => "Put in the oven for 200 c for 30 mins."},
      'Dinner'),
    ]
    #.self does the same thing
  end

  def self.find_by(what, name)
   all.select { |recipe| recipe.send(what) == name }
 end

end #end of Recipe class


print "All Recipes\n"
print "===========\n"
puts Recipe.all

print "Find recipes by title:\n"
puts Recipe.find_by(:title, "Roast Lamb")

print "Find recipes by type:\n"
puts Recipe.find_by(:type, 'Breakfast')
