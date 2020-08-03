require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food_hash|
    puts "#{food_hash[:name]} (#{food_hash[:cuisine]}) | Heat Level: #{"🌶" * food_hash[:heat_level]}"
  end
  end

def get_names(spicy_foods)
spicy_foods.map do |food_hash|
  food_hash[:name]
end
end 

def spiciest_foods(spicy_foods)
  spicy_foods.select do |food_hash|
    food_hash[:heat_level] > 5 
  end 

end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
spicy_foods.find do |food_hash|
  food_hash[:cuisine] == cuisine 
end 
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
spiciest_foods = spiciest_foods(spicy_foods)
print_spicy_foods(spiciest_foods)
end

def average_heat_level(spicy_foods)
heat_level = 0
spicy_foods.each do |food_hash|
  heat_level += food_hash[:heat_level]
end
heat_level / spicy_foods.length
end 
# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
binding.pry
"pls"