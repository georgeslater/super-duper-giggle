class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    Rails.logger.debug(user.to_yaml);
    session[:user_id] = user.id
    redirect_to events_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end