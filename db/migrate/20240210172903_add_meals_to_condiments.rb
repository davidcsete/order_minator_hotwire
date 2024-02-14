class AddMealsToCondiments < ActiveRecord::Migration[7.0]
  def change
    add_reference :condiments, :meal, null: false, foreign_key: true
  end
end
