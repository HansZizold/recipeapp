class Food < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user

  validates :name, presence: true, length: { in: 3..30 }
  validates :measurement_unit, presence: true, length: { in: 2..20 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
end
