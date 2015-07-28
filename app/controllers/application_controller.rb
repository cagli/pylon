class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except =>[:show]


  # before_filter :require_login
  # before_filter :authenticate_user!

  # before_filter :authenticate_user!, :except => [:show, :index]

  # before_action :configure_permitted_parameters, if: :devise_controller?

#   def sign_up_params
#   devise_parameter_sanitizer.sanitize(:sign_up)
# end

#   protected

#   def configure_permitted_parameters
#     # devise_parameter_sanitizer.for(:sign_up) { |field| field.permit(:first_name, :last_name, :profile) }
# 	devise_parameter_sanitizer.for(:sign_up) { |field| field.permit(:last_name, :first_name, :profile_name, :email, :password)}
#   end

# private

#   def require_login
#     # unless user.signed_in?
#       redirect_to 'devise/sessions#new'
#     end
 
 private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end



end
