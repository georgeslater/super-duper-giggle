class WelcomeController < ApplicationController

  def login
  	if current_user.present?
  		redirect_to events_path
  	end
  end
end