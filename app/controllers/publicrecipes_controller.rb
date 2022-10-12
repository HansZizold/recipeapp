# Class RecipesController
class PublicrecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
end
