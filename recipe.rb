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
    string << "#{@title} - #{@type}"
    string << "--------------------\n"
    string << "Ingredients: \n#{@ingredients}"
    string << "Method: \n#{@method}"
    string.join("\n")
  end

  def self.all
    recipes
  end

  def self.find_by(what, name)
   all.select { |recipe| recipe.send(what) == name }
  end
end
