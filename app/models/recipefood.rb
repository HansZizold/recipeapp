# frozen_string_literal: true

class Recipefood < ApplicationRecord
  belongs_to :food
  belongs_to :recipe
end
