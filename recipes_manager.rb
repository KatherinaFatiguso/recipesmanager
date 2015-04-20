require "./method.rb"
require "./step.rb"
require "./recipe.rb"
require "./recipe_directory.rb"
require "./measurement.rb"
require "./ingredient.rb"

# Recipes Manager

print "All Recipes\n"
print "===========\n"
puts Recipe.all

print "Find recipes by title:\n"
puts Recipe.find_by(:title, "Roast Lamb")

print "Find recipes by type:\n"
puts Recipe.find_by(:type, 'Breakfast')
