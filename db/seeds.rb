# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = Player.create([
	{ name: 'Gabbo Resala', is_goalie: false, has_left_the_country: false},
	{ name: 'Allister Manson', is_goalie: true, has_left_the_country: false},
	{ name: 'Toshi Borgia Altamirano', is_goalie: false, has_left_the_country: false},
	{ name: 'Martin Cristaldo', is_goalie: false, has_left_the_country: false},
	{ name: 'Nano FC', is_goalie: false, has_left_the_country: false},
	{ name: 'Adam Gardner', is_goalie: false, has_left_the_country: false},
	{ name: 'Rodrigo Almansa Pagani', is_goalie: false, has_left_the_country: false},
	{ name: 'Tommy Ginge', is_goalie: false, has_left_the_country: false},
	{ name: 'Nick Grant', is_goalie: false, has_left_the_country: false},
	{ name: 'Rafael Meyer Pirone', is_goalie: false, has_left_the_country: false},
	{ name: 'Renzo Marna', is_goalie: false, has_left_the_country: false},
	{ name: 'Jenny Douch', is_goalie: false, has_left_the_country: false},
	{ name: 'Devon Thomas', is_goalie: false, has_left_the_country: true},
	{ name: 'David R Cook', is_goalie: false, has_left_the_country: false},
	{ name: 'Lau T.', is_goalie: false, has_left_the_country: false},
	{ name: 'Simon Grundy', is_goalie: false, has_left_the_country: false},
	{ name: 'George Slater', is_goalie: false, has_left_the_country: false},
])

Rating.create([
	{ user_id: User.last, player_id: players[0].id, rating: 1},
	{ user_id: User.last, player_id: players[1].id, rating: 2},
	{ user_id: User.last, player_id: players[2].id, rating: 3},
	{ user_id: User.last, player_id: players[3].id, rating: 4},
	{ user_id: User.last, player_id: players[4].id, rating: 5},
	{ user_id: User.last, player_id: players[5].id, rating: 6},
	{ user_id: User.last, player_id: players[6].id, rating: 7},
	{ user_id: User.last, player_id: players[7].id, rating: 2.5},
	{ user_id: User.last, player_id: players[8].id, rating: 2},
	{ user_id: User.last, player_id: players[9].id, rating: 1},
	{ user_id: User.last, player_id: players[10].id, rating: 7},
	{ user_id: User.last, player_id: players[11].id, rating: 6},
	{ user_id: User.last, player_id: players[12].id, rating: 3},
	{ user_id: User.last, player_id: players[13].id, rating: 4.5},
	{ user_id: User.last, player_id: players[14].id, rating: 5.5},
	{ user_id: User.last, player_id: players[15].id, rating: 2.5},
	{ user_id: User.last, player_id: players[16].id, rating: 1.5},
	{ user_id: User.last, player_id: players[16].id, rating: 2.5}
])
