class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :ingridients, dependent: :destroy
  has_many :condiments, dependent: :destroy
end
