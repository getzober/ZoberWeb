class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?
  # helper_method :current_user
#   def after_sign_in_path_for(resource)
#     provider_path
# end
 private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |params|
      params.permit(
        :email, :password, :password_confirmation, :firstname,
        :lastname, :organization, :occupation, :first_name, :last_name, :username
      )
    }
    devise_parameter_sanitizer.permit(:account_update) { |params|
      params.permit(
        :email, :password, :password_confirmation, :firstname,
        :lastname, :organization, :occupation, :first_name, :last_name, :username
      )
    }
  end
end



  # private
  #
  # def current_user
  #   @current_user ||= User.find(session[:id]) if session[:id]
  #    rescue ActiveRecord::RecordNotFound
  # end
