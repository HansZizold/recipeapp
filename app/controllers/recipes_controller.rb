# Class RecipesController
class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipefoods = Recipefood.where(recipe_id: params[:id])
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy

    if recipe.destroy
      flash[:success] = 'Recipe deleted successfully'
      redirect_to recipes_path
    else
      flash.now[:error] = 'Error: Recipe could not be deleted'
    end
  end
end
