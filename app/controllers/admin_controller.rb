class AdminController < ApplicationController
  ## this is for admin page
  before_action :authenticate_user!
layout 'admin'
  def index
    if user_signed_in?
      redirect_to dashboard_url
    else
      redirect_to new_user_session_path
    end

  end


  def dashboard

  end

end
