class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @restaurants = User.where(role: 1)
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = User.where(role: 1).find(params[:id])
  end

end
