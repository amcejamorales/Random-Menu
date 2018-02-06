# menu program generates a random food item from
# program pulls from three arrays describing flavor, texture, and food

# arrays
flavor = ["sweet", "savory", "hot", "mild", "umamicious", "corn-filled", "creamy", "salty", "juicy", "DRY"]
texture = ["crispy", "soft", "gooey", "crunchy", "chopped", "sauteed", "fried", "steamed", "stench-filled", "CORROSIVE"]
food = ["hot dog", "cranberry", "muffin", "funnel cake", "potato wedges", "melted cheese", "salad dressing", "mega taco", "dorito chip", "TEA"]

# ask user how many meals they want
puts "Random meal generator: "
puts "How many meals would you like to generate? Please choose 10 meals or fewer."
num_meals = gets.chomp.to_i

until num_meals <= 10 && num_meals > 0
  puts "Please choose fewer than 10 meals."
  num_meals = gets.chomp.to_i
end

# generate x random meals
(1..num_meals).each do |food_item|
  rand_flavor = flavor[rand(flavor.length)]
  rand_texture = texture[rand(texture.length)]
  rand_food = food[rand(food.length)]
  puts "#{food_item}. #{rand_flavor} #{rand_texture} #{rand_food}"
  flavor.delete(rand_flavor)
  texture.delete(rand_texture)
  food.delete(rand_food)
end
