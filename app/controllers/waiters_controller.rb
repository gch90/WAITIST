class WaitersController < ApplicationController
  before_action :set_waiter, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @waiters = User.where(user_role: 0)
  end

  def show
  end

  private

  def set_waiter
    @waiter = User.where(user_role: 0).find(params[:id])
  end

end
