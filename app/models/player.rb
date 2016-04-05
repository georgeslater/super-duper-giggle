class Player < ActiveRecord::Base
	extend FriendlyId
	has_many :ratings
	has_many :player_notes
end
