# Class RecipesController
class PublicrecipesController < ApplicationController
  def index
    @recipes = Recipe.where(public: 'true').order(updated_at: :desc).includes([:user])
  end
end
