class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end


  def new
    @restaurant = Restaurant.new
  end

  def create
  end


end
