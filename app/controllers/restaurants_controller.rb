class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    @search = Restaurant.search do
      fulltext params[:search]
    end


  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.create!(restaurant_params)
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update!(restaurant_params)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private
  def restaurant_params
    params.permit(:name, :info, :category, :photo_url, :gotchas)
  end

end
