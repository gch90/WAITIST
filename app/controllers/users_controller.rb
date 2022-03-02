class UsersController < ApplicationController
  before_action :set_applications, only: [:show]

  def show
    @profile = User.find(current_user.id)
  end

  def edit; end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user, notice: "Your profile was succefully updated"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address)
  end

  def set_applications
    @applications = Application.where(user: current_user.id).or(Application.where(restaurant_id: current_user.id))
  end
end
