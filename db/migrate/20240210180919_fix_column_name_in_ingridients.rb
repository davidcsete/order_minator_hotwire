class FixColumnNameInIngridients < ActiveRecord::Migration[7.0]
  def change
    rename_column :ingridients, :description, :name

  end
end
