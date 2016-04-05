class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def is_admin
  	@is_admin ||= current_user.uid == '10101488162662259' if session[:user_id]
  end
  helper_method :is_admin
end
