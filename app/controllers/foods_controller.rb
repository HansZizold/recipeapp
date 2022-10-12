# Class FoodsController
class FoodsController < ApplicationController
  def index
    @foodlists = Food.all
  end

  def show
    @foodlist = Food.find(params[:id])
  end

  def destroy
    foodlist = Food.find(params[:id])

    if foodlist.destroy
      flash[:success] = 'foodList deleted successfully'
      redirect_to foodlists_path
    else
      flash.now[:error] = 'Error: foodList could not be deleted'
    end
  end
end
