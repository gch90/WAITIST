# REMINDER: CAN USE METHODS:
# created_applications, applications_including_restaurant, applications_including_waiter
# waiter_applications_received, restaurant_applications_received, waiter?, restaurant?

class UsersController < ApplicationController
  before_action :set_applications, only: [:show]
  before_action :set_application, only: [:application_update, :approve, :reject]
  before_action :set_user, only: [:show, :update, :approve, :reject]

  def show
    @tab = params[:tab]
    if current_user.waiter?
      @chatrooms = current_user.waiter_chatrooms
    else
      @chatrooms = current_user.restaurant_chatrooms
    end
    @waiters = User.where(user_role: "waiter")
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Your profile was succefully updated"
    else
      render :edit
    end
  end

  def application_update
    if @application.update(application_params)
      redirect_to @application, notice: "You have confirmed the application!"
    else
      render :show
    end
  end

  def approve
    @application.update(status: 1)
    redirect_to @user
  end

  def reject
    @application.update(status: 2)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :address, :phone, :summary, :restaurant_name, :website, :rate, :nickname, :avatar, photos: [])
  end

  def application_params
    params.require(:application).permit(:status, :waiter_id, :restaurant_id, :rating, :creator_id)
  end

  def set_applications
    @applications = Application.where(waiter: current_user).or(Application.where(restaurant: current_user))
  end

  def set_application
    @application = Application.find(params[:id])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
