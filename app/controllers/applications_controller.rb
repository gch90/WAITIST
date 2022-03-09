# REMINDER: CAN USE METHODS:
# created_applications, applications_including_restaurant, applications_including_waiter
# waiter_applications_received, restaurant_applications_received, waiter?, restaurant?


class ApplicationsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  before_action :set_waiter, only: [:create_by_resto]
  before_action :set_application, only: [:update]

  def index
    @applications = Application.where(creator: current_user)
  end

  def create
    @application = Application.new(application_params)
    @application.restaurant = @restaurant
    @application.waiter = current_user
    @application.creator = current_user

    @chatroom = Chatroom.new
    @chatroom.restaurant = @restaurant
    @chatroom.waiter = current_user
    if @application.save! && @chatroom.save!
      redirect_to user_path(tab: 2)
    else
      render :create
    end
  end

  def update
    if @application.update(application_params)
      # raise
      redirect_to user_path(tab: 1), notice: "you have completed your review"
    else
      render user_path(tab: 1)
    end
  end

  def create_by_resto
    @application = Application.new(application_params)
    @application.restaurant = current_user
    @application.waiter = @waiter
    @application.creator = current_user

    @chatroom = Chatroom.new
    @chatroom.restaurant = current_user
    @chatroom.waiter = @waiter

    if @application.save! && @chatroom.save!
      redirect_to user_path(tab: 1)
    else
      render :create_by_resto
    end
  end

  private

  def application_params
    params.require(:application).permit(:start_time, :end_time, :restaurant_comment, :waiter_comment, :waiter_rating, :restaurant_rating)
  end

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def set_restaurant
    @restaurant = User.restaurant.find(params[:id])
  end

  def set_waiter
    @waiter = User.waiter.find(params[:id])
  end

  def set_application
    @application = Application.find(params[:id])
  end
end
