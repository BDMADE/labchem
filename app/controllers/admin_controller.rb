class AdminController < ApplicationController
  ## this is for admin page
  def index
    if user_signed_in?
      redirect_to members_url
    else
      redirect_to new_user_session_path
    end

  end

end
