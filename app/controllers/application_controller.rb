class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  # For additional fields in app/views/devise/registrations/new.html.erb
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :address, :phone, :summary, :description, :rate, :website, :restaurant_name, :nickname, :avatar, photos: [] ])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :description, :rate, :avatar, :restaurant_name])
  end

end
