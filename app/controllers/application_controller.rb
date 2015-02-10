class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   acts_as_token_authentication_handler_for User, fallback_to_devise: false
  protect_from_forgery with: :null_session
  def authenticate_user!
     redirect_to "/users/sign_up", notice: 'Create an account first or log in' unless user_signed_in?
end
end
