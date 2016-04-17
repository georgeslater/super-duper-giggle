# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.create([
	{ number_of_players: 16, day_of_week: 'Monday', time: '20'},
	{ number_of_players: 24, day_of_week: 'Friday', time: '20'},
	{ number_of_players: 12, day_of_week: 'Friday', time: '21'},
	{ number_of_players: 12, day_of_week: 'Wednesday', time: '19'}
])

users = User.create([
	{ first_name: 'George', last_name: 'Slater', uid: '10101488162662259', name: 'George Slater' }
])

players = Player.create([
	{ name: 'Gabbo Resala', is_goalie: false, facebook_id: '651321464'},
	{ name: 'Allister Manson', is_goalie: true, facebook_id: '758460170'},
	{ name: 'Toshi Borgia Altamirano', is_goalie: false, facebook_id: '100003461588083'},
	{ name: 'Martin Cristaldo', is_goalie: false, facebook_id: '100001670148315'},
	{ name: 'Nano FC', is_goalie: false, facebook_id: '100001512125227'},
	{ name: 'Adam Gardner', is_goalie: false, facebook_id: '1656483378'},
	{ name: 'Rodrigo Almansa Pagani', is_goalie: false, facebook_id: '1293092966'},
	{ name: 'Tommy Ginge', is_goalie: false, facebook_id: '657492581'},
	{ name: 'Nick Grant', is_goalie: false, facebook_id: '574875567'},
	{ name: 'Rafael Meyer Pirone', is_goalie: false, facebook_id: '542111141'},
	{ name: 'Renzo Marna', is_goalie: false, facebook_id: '535124702'},
	{ name: 'Jenny Douch', is_goalie: false, facebook_id: '502491169'},
	{ name: 'Devon Thomas', is_goalie: false, facebook_id: '133400351'},
	{ name: 'David R Cook', is_goalie: false, facebook_id: '501090845'},
	{ name: 'Lau T.', is_goalie: false, facebook_id: '311300047'},
	{ name: 'Simon Grundy', is_goalie: false, facebook_id: '222303701'},
	{ name: 'George Slater', is_goalie: false, facebook_id: '36806386'},
	{ name: 'Martin Olivera', is_goalie: false, facebook_id: '100001979124828'},
	{ name: 'Nico Michel', is_goalie: false, facebook_id: '1371760486'},
	{ name: 'Gonzalo Caceres', is_goalie: false, facebook_id: '572417860'},
	{ name: 'Matt Connolly', is_goalie: false, facebook_id: '522271342'},
	{ name: 'Jake Eames', is_goalie: false, facebook_id: '516332989'},
	{ name: 'Gonzalo Pivotto', is_goalie: false, facebook_id: '1563260221'},
	{ name: 'Matías Rodríguez', is_goalie: false, facebook_id: '100003605445168'},
	{ name: 'Juan Ayala', is_goalie: false, facebook_id: '1147836014'}
])

Rating.create([
	{ user_id: users[0].id, player_id: players[0].id, rating: 1},
	{ user_id: users[0].id, player_id: players[1].id, rating: 2},
	{ user_id: users[0].id, player_id: players[2].id, rating: 3},
	{ user_id: users[0].id, player_id: players[3].id, rating: 4},
	{ user_id: users[0].id, player_id: players[4].id, rating: 5},
	{ user_id: users[0].id, player_id: players[5].id, rating: 6},
	{ user_id: users[0].id, player_id: players[6].id, rating: 7},
	{ user_id: users[0].id, player_id: players[7].id, rating: 2.5},
	{ user_id: users[0].id, player_id: players[8].id, rating: 2},
	{ user_id: users[0].id, player_id: players[9].id, rating: 1},
	{ user_id: users[0].id, player_id: players[10].id, rating: 7},
	{ user_id: users[0].id, player_id: players[11].id, rating: 6},
	{ user_id: users[0].id, player_id: players[12].id, rating: 3},
	{ user_id: users[0].id, player_id: players[13].id, rating: 4.5},
	{ user_id: users[0].id, player_id: players[14].id, rating: 5.5},
	{ user_id: users[0].id, player_id: players[15].id, rating: 2.5},
	{ user_id: users[0].id, player_id: players[16].id, rating: 1.5},
	{ user_id: users[0].id, player_id: players[16].id, rating: 2.5},
	{ user_id: users[0].id, player_id: players[17].id, rating: 5.5},
	{ user_id: users[0].id, player_id: players[18].id, rating: 4.5},
	{ user_id: users[0].id, player_id: players[19].id, rating: 1.5},
	{ user_id: users[0].id, player_id: players[20].id, rating: 2.5},
	{ user_id: users[0].id, player_id: players[21].id, rating: 3.5},
	{ user_id: users[0].id, player_id: players[22].id, rating: 3.0},
	{ user_id: users[0].id, player_id: players[23].id, rating: 2.0},
	{ user_id: users[0].id, player_id: players[24].id, rating: 1.5}

])
