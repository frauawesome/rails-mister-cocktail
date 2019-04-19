# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# file_path = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# get_drinks = open(file_path).read
# drinks = JSON.parse(get_drinks)

# drink_ingredients = drinks['drinks']

# drink_ingredients.each do |drink|
#   we_want = drink['strIngredient1']
#   Ingredient.create!(name: we_want)
# end

puts 'Create ingredients'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient['strIngredient1'])
  puts "create #{i.name}"
end


# Cocktail.create!(name: 'Green Green Land')
# Cocktail.create!(name: 'Giant Garden')
# Cocktail.create!(name: 'Golden Mare-Bear')
# Cocktail.create!(name: 'Smart Carly')
# Cocktail.create!(name: 'Muscleman Jake')
# Cocktail.create!(name: 'Creepy James')

# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
