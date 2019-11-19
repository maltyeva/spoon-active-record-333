class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(3)
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # this page is just to get the form
    @restaurant = Restaurant.new
    #<Restaurant id: nil, name: nil, rating: nil, created_at: nil, updated_at: nil, address: nil>
  end

  def create
    #this is to submit
    # @restaurant = Restaurant.new(name: "yang's dumplings", address: "west nanjing", rating: 3)
    # @restaurant = Restaurant.new(name: params[:name], address: params[:address], rating: params[:rating])
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # redirect_to restaurant_path(@restaurant.id)
    redirect_to @restaurant
  end

  def edit
    # restaurants/5/edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    # restaurants/5
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end


end
