class UsersController < ApplicationController

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

end
