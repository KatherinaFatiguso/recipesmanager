require "./method.rb"
require "./step.rb"

require "./ingredient.rb"
require "./measurement.rb"
require "./recipe.rb"

# Recipes Manager

print "All Recipes\n"
print "===========\n"
puts Recipe.all

print "Select by name: "
name = gets.chomp
puts Recipe.select_by_name(name)

print "Select by type: "
type = gets.chomp
puts Recipe.select_by_type(type)

#print "Search by: "
#search_by = gets.chomp
#print "Search for: "
#search_item = gets.chomp
#puts Recipe.select_by(search_by, search_item)
