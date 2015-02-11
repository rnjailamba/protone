class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   before_filter :store_location

 
   acts_as_token_authentication_handler_for User, fallback_to_devise: false
  protect_from_forgery with: :null_session

 
def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
  return unless request.get? 
  if (request.path != "/users/sign_in" &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr?) # don't store ajax calls
    session[:previous_url] = request.fullpath 
    Rails.logger.info "message1"
    Rails.logger.info request.fullpath 
    
  end
end
 

  def after_sign_in_path_for(resource)
  	Rails.logger.info "message"
   session[:previous_url] 
   
   
  end
end
