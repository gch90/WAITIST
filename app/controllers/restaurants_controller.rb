# REMINDER: CAN USE METHODS:
# created_applications, applications_as_restaurant, applications_as_waiter

class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # pg_search MM --->
    if params[:query].present?
      @restaurants = User.search_in_restaurants(params[:query])
    else
      @restaurants = User.restaurant
    end
    # <---
  end

  def show
    @application = Application.new
    @application.restaurant = @restaurant
  end



  private

  def set_restaurant
    @restaurant = User.restaurant.find(params[:id])
  end

end
