class Recipe < ApplicationRecord
  has_many :recipefoods, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, length: { in: 3..30 }
  validates :description, presence: true, length: { in: 3..500 }
end
