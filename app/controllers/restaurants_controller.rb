class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # pg_search MM --->
    if params[:query].present?
      @restaurants = User.search_by_name_and_address(params[:query])
    else
      @restaurants = User.where(user_role: 1)
    end
    # <---
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = User.where(user_role: 1).find(params[:id])
  end

end
