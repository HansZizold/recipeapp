# Class FoodsController
class FoodsController < ApplicationController
  def index
    @foodLists = Food.all
  end

  def show
    @foodList = Food.find(params[:id])
  end

  def destroy
    foodList = Food.find(params[:id])

    if foodList.destroy
      flash[:success] = 'foodList deleted successfully'
      redirect_to foodLists_path
    else
      flash.now[:error] = 'Error: foodList could not be deleted'
    end
  end
end
