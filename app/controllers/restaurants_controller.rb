class RestaurantsController < ApplicationController
  before_action :find, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

    private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  # before show, edit, update and destroy run this code!
  def find
    @restaurant = Restaurant.find(params[:id])
  end
end
end
