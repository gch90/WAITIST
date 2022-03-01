class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]



  def index
    @restaurants = User.where(role: 1)
  end



end
