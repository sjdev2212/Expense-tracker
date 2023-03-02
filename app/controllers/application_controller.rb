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
    if user_signed_in?
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  def sun
    cookies.delete(:moon)
    if user_signed_in?
      redirect_to user_path(current_user)
    else
      redirect_to   root_path
    end
  end
end
