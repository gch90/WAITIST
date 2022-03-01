class ApplicationsController < ApplicationController
  before_action :set_restaurant, only: [:create]

  def index
    @applications = Application.where(user: current_user)
  end

  def create
    @application = Application.new
    @application.restaurant_id = @restaurant.id
    @application.user_id = current_user.id

    if @application.save!
      redirect_to user_path
    else
      render :create
    end
  end

  private

  def set_restaurant
    @restaurant = User.where(user_role: 1).find(params[:id])
  end
end
