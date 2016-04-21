class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def is_admin

  	admins = ['10101488162662259', '10100389999911693', '10153955979225568', '10154219631350039', '10154140717264703', '1070154356378292', '10153627714072582', '10154102576891465']

  	@is_admin ||= admins.include? current_user.uid  if session[:user_id]
  end
  helper_method :is_admin
end
