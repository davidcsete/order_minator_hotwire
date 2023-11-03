class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :short_description
      t.string :long_description

      t.timestamps
    end
  end
end
