class AddRestaurantsToMeals < ActiveRecord::Migration[7.0]
  def change
    add_reference :meals, :restaurant, null: false, foreign_key: true
  end
end
