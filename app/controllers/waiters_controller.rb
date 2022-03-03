class WaitersController < ApplicationController
  before_action :set_waiter, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # pg_search MM --->
    if params[:query].present?
      @waiters = User.search_in_waiters(params[:query])
    else
      @waiters = User.waiter
    end
    # <---
  end

  def show
  end

  private

  def set_waiter
    @waiter = User.waiter.find(params[:id])
  end
end
