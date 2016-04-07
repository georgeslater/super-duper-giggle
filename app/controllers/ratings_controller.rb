class RatingsController < ApplicationController
	def index
		if params[:player_id].present?
			@player = Player.find(params[:player_id])
			@ratings = @player.ratings
		end
	end

	def new
		if params[:player_id].present?
			@player = Player.find(params[:player_id])
			@rating = Rating.new
		end
	end 

	def create
		if params[:player_id].present?
			@player = Player.find(params[:player_id])
			@rating = @player.ratings.create(rating_params.merge(:user_id => current_user.id))
			redirect_to player_ratings_path(@player)
		end
	end

	private
    def rating_params
      params.require(:rating).permit(:rating, :player_id)
    end
end
