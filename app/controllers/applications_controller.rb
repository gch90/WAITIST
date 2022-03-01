class ApplicationsController < ApplicationController

  def index
    @applications = Application.where(user: current_user)
  end

end
