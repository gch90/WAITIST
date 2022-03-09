class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @restaurants = User.restaurant.shuffle.first(10)
  end
end
