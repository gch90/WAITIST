# REMINDER: CAN USE METHODS:
# created_applications, applications_as_restaurant, applications_as_waiter

class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # pg_search MM --->
    if params[:query].present?
      @restaurants = User.search_in_restaurants(params[:query])
      @result = params[:query]
    else
      @restaurants = User.restaurant
    end
    # <---
    # mapbox MM --->
    @markers = @restaurants.geocoded.map do |resto|
      {
        lat: resto.latitude,
        lng: resto.longitude,
        info_window: render_to_string(partial: "info_window", locals: { resto: resto }),

        image_url: helpers.asset_url("marker.png")

      }
    end
    # <---
  end

  def show
    @application = Application.new
    @application.restaurant = @restaurant
    @restaurants = User.restaurant.where(restaurant_type: @restaurant.restaurant_type).first(4)
  end



  private

  def set_restaurant
    @restaurant = User.restaurant.find(params[:id])
  end

end
