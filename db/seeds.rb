# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Clear existing data
Restaurant.destroy_all
Meal.destroy_all
Ingridient.destroy_all
Condiment.destroy_all

# Seed Restaurants
10.times do |i|
  restaurant = Restaurant.create(
    name: "Restaurant #{i + 1}",
    description: "Description for Restaurant #{i + 1}"
  )

  # Seed Meals for each Restaurant
  15.times do |j|
    meal = Meal.create(
      name: "Meal #{j + 1} at Restaurant #{i + 1}",
      description: "Description for Meal #{j + 1} at Restaurant #{i + 1}",
      restaurant: restaurant
    )

    # Seed Ingredients for each Meal
    Ingridient.create(
      kcalorie_count: rand(100..500),
      protein_count: rand(5..30),
      carbohydrate_count: rand(10..50),
      fat_count: rand(1..20),
      weight_in_gramms: rand(50..300),
      name: "Ingridient for Meal #{j + 1} at Restaurant #{i + 1}",
      meal: meal
    )

    # Seed Condiments for each Meal
    Condiment.create(
      name: "Condiment for Meal #{j + 1} at Restaurant #{i + 1}",
      quantity_in_grams: rand(5..50),
      description: "Description for Condiment #{j + 1} at Restaurant #{i + 1}",
      meal: meal
    )
  end
end

puts 'Seed data generated successfully.'
