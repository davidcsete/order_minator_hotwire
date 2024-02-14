class AddMealsToIngridients < ActiveRecord::Migration[7.0]
  def change
    add_reference :ingridients, :meal, null: false, foreign_key: true
  end
end
