class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # protected
  #   def configure_permitted_parameters
  #     added_attrs = [:first_name, :last_name, :username, :email, :password, :password_confirmation, :remember_me]
  #     devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   end
  def check
    if current_user.present?
      # redirect_to laptops_path
    else 
      redirect_to new_user_session_path
    end
  end
end
