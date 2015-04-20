require "./method.rb"
require "./step.rb"
require "./recipe.rb"
require "./recipe_directory.rb"
require "./measurement.rb"
require "./ingredient.rb"

# Recipes Manager
#>>>>>>> 75da52ca8175a3a302e61f5533738ea73bd62eea

#apple = Ingredients.new('apple', 2, "items")
#puts apple

print "All Recipes\n"
print "===========\n"
puts Recipe.all

print "Find recipes by title:\n"
puts Recipe.find_by(:title, "Roast Lamb")

print "Find recipes by type:\n"
puts Recipe.find_by(:type, 'Breakfast')
