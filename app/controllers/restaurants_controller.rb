class RestaurantsController < ApplicationController
  before_action
  skip_before_action :authenticate_user!, only: [ :index, :show ]



  def index
    @restaurants = User.where(role: 1)
  end

  def show
    @restaurant = User.where(role: 1).find(params[:id])
  end

end
