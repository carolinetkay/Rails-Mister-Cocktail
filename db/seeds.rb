# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Let\'s make some 'seedy' ingredients for your drinks~"

# puts "Cleaning up the older ingredients for ya..."
# Ingredient.destroy_all

puts "Preparing some fresh ingredients..."
Ingredient.create(name: "lemon slices")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "olive")
Ingredient.create(name: "bitters")
Ingredient.create(name: "rum")
Ingredient.create(name: "vodka")
Ingredient.create(name: "gin")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "dry vermouth")
Ingredient.create(name: "campari")
Ingredient.create(name: "sweet vermouth")

puts "Enjoy your ingredients!"