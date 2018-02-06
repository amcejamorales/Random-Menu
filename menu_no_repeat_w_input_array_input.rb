# menu program generates a random food item from
# program pulls from three arrays describing flavor, texture, and food

puts "Random meal generator: "

# arrays
flavor = []
texture = []
food = []

# generate arrays from user input
puts "Please enter as many flavors as you'd like. Enter \"done\" to move on."
current_flavor = gets.chomp
flavor.push(current_flavor)

until current_flavor == "done"
  current_flavor = gets.chomp
  flavor.push(current_flavor)
end

puts "Please enter as many textures as you'd like. Enter \"done\" to move on."
current_texture = gets.chomp
texture.push(current_texture)

until current_texture == "done"
  current_texture = gets.chomp
  texture.push(current_texture)
end

puts "Please enter as many foods as you'd like. Enter \"done\" to move on."
current_food = gets.chomp
food.push(current_food)

until current_food == "done"
  current_food = gets.chomp
  food.push(current_food)
end


# ask user how many meals they want
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
end
