class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def get_teams
		@event = Event.find([params[:id]]).first
		@players_to_create = Array.new
		@players_to_show = Array.new
		access_token = current_user.oauth_token
		Koala.config.api_version = "v2.5"
		@graph = Koala::Facebook::API.new(access_token)
		Rails.logger.debug(Time.now.to_i)
		connections = @graph.get_connections('848848561801054', 'events', since: Time.now.to_i)
		event_id = nil

		connections.each do | connection |
			Rails.logger.debug('ID! '+connection['id'])
			name = connection['name']
			start_time = connection['start_time']
			if (name.downcase.include? @event.day_of_week.downcase) && (start_time.include? (@event.time.to_s+':00:00'))
				event_id = connection['id']
				break
			end
		end

		if event_id.present?

			attending = @graph.get_connections(event_id, 'attending')

			attending.each do | attendee |

				players = Player.find_by name: attendee['name']

				if players.present? && players.length > 0
					@players_to_show.push(attendee)
				else
					@players_to_create.push(attendee['name'])
				end

			end

			
		else

			Rails.logger.debug('Could not find event')
		end
	end
end