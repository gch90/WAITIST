class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @restaurants = User.restaurant.shuffle.first(10)
     if user_signed_in?
      if current_user.restaurant?
        redirect_to user_path(tab: 0)
     end
    end
  end
end
