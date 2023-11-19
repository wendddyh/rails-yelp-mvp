class RestaurantsController < ApplicationController
  before_action :restaurant_params, only: %i[show new create]
  def index
    @restaurants = Restaurant.all

  end

  def show

  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurant_params)
    if @restaurants.save
      redirect_to @restaurants, notice: 'Created successfully!'
    else
      render :new
    end
  end

  private

  def restaurant_params
    @restaurants = Restaurant.find(params[:id])
  end

  def tasks_params
    params.require(:restaurant).permit(:name, :address, :phone_number)
  end

end
