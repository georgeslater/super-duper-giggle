class Player < ActiveRecord::Base
	has_many :ratings
	has_many :notes

	def avg_player_rating
  	
  		self.ratings.average('rating')
  	end
end
