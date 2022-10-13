# Class RecipefoodsController
class RecipefoodsController < ApplicationController
  def index; end

  def show; end

  def new
    @recipefood = Recipefood.new
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    @recipefood = Recipefood.new(params.permit(:quantity))
    @recipefood.recipe = recipe
    food = Food.where(name: params[:name])
    p food
    @recipefood.food = food

    if @recipefood.save
      flash[:success] = 'Ingredient saved successfully'
      redirect_to recipe_path(recipe)
    else
      flash.now[:error] = 'Error: Ingredient could not be saved'
    end
  end
end
