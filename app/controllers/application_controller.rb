class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except =>[:show]

  before_action :configure_permitted_parameters, if: :devise_controller?

#   def sign_up_params
#   devise_parameter_sanitizer.sanitize(:sign_up)
# end

protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |field| field.permit(:last_name, :first_name, :username, :email, :password)}
    devise_parameter_sanitizer.for(:sign_in) { |field| field.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |field| field.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end


  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
  #   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  # end



 
 private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
     welcome_path('home')
  end
  def after_sign_in_path_for(resource)
     # After you enter login info and click submit, I want you to be sent to the dashboard page
     dashboard_path('dashboard')
   end
   


end
