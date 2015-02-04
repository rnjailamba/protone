class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_user!
     redirect_to "/users/sign_up", notice: 'Create an account first or log in' unless user_signed_in?
end
end
