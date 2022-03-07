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
    # Mapbox MM --->
    @markers = @waiters.geocoded.map do |waiter|
      {
        lat: waiter.latitude,
        lng: waiter.longitude,
        info_window: render_to_string(partial: "info_window", locals: { waiter: waiter }),
        image_url: helpers.asset_url("/home/gch90/code/gch90/WAITIST/app/assets/images/icons/Waitist-logo.svg")
      }
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
