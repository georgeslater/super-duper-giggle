class Rating < ActiveRecord::Base
	belongs_to :player
	belongs_to :user

	after_update do | rating |
		if rating.rating != rating.rating_was
			history = History.new
			history.old_rating = rating.rating_was
			history.new_rating = rating.rating
			history.user_id = rating.user_id
			history.player_id = rating.player_id
			history.save!
		end
	end
end
