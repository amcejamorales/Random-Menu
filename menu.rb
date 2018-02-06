# menu program generates a random food item from
# program pulls from three arrays describing flavor, texture, and food

# arrays
flavor = ["sweet", "savory", "hot", "mild", "umamicious", "corn-filled", "creamy", "salty", "juicy", "DRY"]
texture = ["crispy", "soft", "gooey", "crunchy", "chopped", "sauteed", "fried", "steamed", "stench-filled", "CORROSIVE"]
food = ["hot dog", "cranberry", "muffin", "funnel cake", "potato wedges", "melted cheese", "salad dressing", "mega taco", "TEA"]

# generate 10 random meals
puts "Random meal generator: "

(1..10).each do |food_item|
  rand_flavor = flavor[rand(10)]
  rand_texture = texture[rand(10)]
  rand_food = food[rand(10)]
  puts "#{food_item}. #{rand_flavor} #{rand_texture} #{rand_food}"
end
