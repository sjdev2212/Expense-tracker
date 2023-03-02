class ApplicationController < ActionController::Base
  before_action :update_allowed_parameters, if: :devise_controller?

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
  end

  def moon
    cookies[:moon] = {
      value: 'dark mode on'
    }
    redirect_to root_path
  end

  def sun
    cookies.delete(:moon)
    redirect_to root_path
  end

end
