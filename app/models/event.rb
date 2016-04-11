class Event < ActiveRecord::Base
	def number_of_teams
		if self.number_of_players == 16
			return 2
		else
			return (self.number_of_players / 6)
		end
	end
end
