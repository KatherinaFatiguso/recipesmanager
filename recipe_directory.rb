apple_pie_method = Instructions.new
apple_pie_method.steps << Step.new(1, "Get apples.")
apple_pie_method.steps << Step.new(2, "Peel, steam and mash apples.")
apple_pie_method.steps << Step.new(3, "Mix sugar, eggs and flour into dough.")
apple_pie_method.steps << Step.new(4, "Place apple puree on top of the dough.")
apple_pie_method.steps << Step.new(5, "Bake it 180 c for 30 mins.")

roast_lamb_method = Instructions.new
roast_lamb_method.steps << Step.new(1, "Crush garlics, add salt and rub it to the lamb.")
roast_lamb_method.steps << Step.new(2, "Peel, chop and arrange potatoes on ovenproof tray.")
roast_lamb_method.steps << Step.new(3, "Put the lamb on top of the potatoes.")
roast_lamb_method.steps << Step.new(4, "Put in the oven for 200 c for 30 mins.")

recipes = [
  Recipe.new('Apple pie', ["a", "b", "c", "d"], apple_pie_method, 'Breakfast'),
  Recipe.new('Roast Lamb', ["a", "b", "c", "d"], roast_lamb_method, 'Dinner')
]
