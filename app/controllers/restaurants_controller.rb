class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(set_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reviews = Review.where(restaurant_id: @restaurant.id)
  end

  def set_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
