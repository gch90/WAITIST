class ApplicationsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  before_action :set_waiter, only: [:create_by_resto]

  def index
    @applications = Application.where(user: current_user)
  end

  def create
    @application = Application.new
    @application.restaurant_id = @restaurant.id
    @application.waiter_id = current_user.id

    if @application.save!
      redirect_to user_path
    else
      render :create
    end
  end

  def create_by_resto
    @application = Application.new
    @application.restaurant_id = current_user.id
    @application.waiter_id = @waiter.id

    if @application.save!
      redirect_to user_path
    else
      render :create_by_resto
    end
  end


  private

  def set_restaurant
    @restaurant = User.where(user_role: 1).find(params[:id])
  end

  def set_waiter
    @waiter = User.where(user_role: 0).find(params[:id])
  end
end
