class ApplicationsController < ApplicationController

  def index
    @applications = Application.where(user: current_user)
  end

  def new
    @application = Application.new
  end

  def update
    @application = Application.new
    @restaurant = Restaurant.find(params[:id])
    @application.restaurant = @restaurant
    @application.user = current_user
  end

end
