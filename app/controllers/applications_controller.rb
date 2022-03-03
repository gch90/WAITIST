# REMINDER: CAN USE METHODS:
# created_applications, applications_with_restaurant, applications_with_waiter, waiter?, restaurant? %>

class ApplicationsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  before_action :set_waiter, only: [:create_by_resto]

  def index
    @applications = Application.where(creator: current_user)
  end

  def create
    @application = Application.new
    @application.restaurant = @restaurant
    @application.waiter = current_user
    @application.creator = current_user
    if @application.save!
      redirect_to user_path
    else
      render :create
    end
  end

  def create_by_resto
    @application = Application.new
    @application.restaurant = current_user
    @application.waiter = @waiter
    @application.creator = current_user

    if @application.save!
      redirect_to user_path
    else
      render :create_by_resto
    end
  end

  private

  def set_restaurant
    @restaurant = User.restaurant.find(params[:id])
  end

  def set_waiter
    @waiter = User.waiter.find(params[:id])
  end
end
