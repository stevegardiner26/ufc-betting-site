class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :load_user

  def load_user
    @current_user = current_user
  end
end
