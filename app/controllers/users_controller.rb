class UsersController < ApplicationController
  before_action :set_applications, only: [:show]
  before_action :set_application, only: [:application_update, :approve]
  before_action :set_user, only: [:show, :update, :approve]

  def show
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

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address)
  end

  def application_params
    params.require(:application).permit(:status, :waiter_id, :restaurant_id, :rating, :creator_id)
  end

  def set_applications
    @applications = Application.where(waiter_id: current_user.id).or(Application.where(restaurant_id: current_user.id))
  end

  def set_application
    @application = Application.find(params[:id])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
