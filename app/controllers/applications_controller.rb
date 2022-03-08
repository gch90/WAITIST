# REMINDER: CAN USE METHODS:
# created_applications, applications_including_restaurant, applications_including_waiter
# waiter_applications_received, restaurant_applications_received, waiter?, restaurant?


class ApplicationsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  before_action :set_waiter, only: [:create_by_resto]

  def index
    @applications = Application.where(creator: current_user)
  end

  def create
    @application = Application.new(application_params)
    @application.restaurant = @restaurant
    @application.waiter = current_user
    @application.creator = current_user
    if @application.save!
      redirect_to user_path(tab: 1)
    else
      render :create
    end
  end


  def create_by_resto
    @application = Application.new(application_params)
    @application.restaurant = current_user
    @application.waiter = @waiter
    @application.creator = current_user
    if @application.save!
      redirect_to user_path(tab: 1)
    else
      render :create_by_resto
    end
  end

  private

  def application_params
    params.require(:application).permit(:start_date, :end_date)
  end

  def set_restaurant
    @restaurant = User.restaurant.find(params[:id])
  end

  def set_waiter
    @waiter = User.waiter.find(params[:id])
  end

end
