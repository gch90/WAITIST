class WaitersController < ApplicationController
  before_action :set_waiter, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # pg_search MM --->
    if params[:query].present?
      @waiters = User.search_by_fname_and_lname_and_address(params[:query])
    else
      @waiters = User.where(user_role: 0)
    end
    # <---
  end

  def show
  end

  private

  def set_waiter
    @waiter = User.where(user_role: 0).find(params[:id])
  end

end
