class RestaurantsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_id
    @restaurant = Restaurant.find(params[:id])
  end

  def create_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def update_params
    params.require(:restaurant).permit(:address, :phone_number)
  end
end
