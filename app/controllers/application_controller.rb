class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :load_user

  def load_user
    @current_user = current_user
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
