class Player < ActiveRecord::Base
	has_many :ratings
	has_many :notes

	validates :name, :presence => true
	validates :facebook_id, :presence => true

	def avg_player_rating
  	
  		self.ratings.average('rating')
  	end
end
