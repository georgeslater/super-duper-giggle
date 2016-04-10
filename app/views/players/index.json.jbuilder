json.array!(@players) do |player|
  json.extract! player, :id, :name, :has_left_the_country, :is_goalie
  json.url player_url(player, format: :json)
end
