class HomeController < ApplicationController

  layout 'application'
  # layout 'clean', :only => [:login]

  def index
    if @current_user.nil?
      render users_sign_in_path
    end
  end
end