class UsersController < ApplicationController
  def show
    @profile = User.find(current_user.id)
  end

  def edit
  end

  def update
  end
end
