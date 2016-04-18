# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def generateRatings(playerId, *args)
	
	ratings = Array.new

	args.each_with_index do | arg, index |
		unless arg.nil?
			rating = Hash.new
			rating['user_id'] = User.find(index+1).id
			rating['rating'] = arg
			rating['player_id'] = playerId
			ratings << rating
		end
	end

	ratings
end

events = Event.create([
	{ number_of_players: 16, day_of_week: 'Monday', time: '20'},
	{ number_of_players: 24, day_of_week: 'Friday', time: '20'},
	{ number_of_players: 12, day_of_week: 'Friday', time: '21'},
	{ number_of_players: 12, day_of_week: 'Wednesday', time: '19'}
])

users = User.create([
	{ first_name: 'George', last_name: 'Slater', uid: '10101488162662259', name: 'George Slater' },
	{ first_name: 'Greg', last_name: 'Symons', uid: '284200086', name: 'Greg Symons'},
	{ first_name: 'Nick', last_name: 'Grant', uid: '574875567', name: 'Nick Grant'},
	{ first_name: 'Dan', last_name: 'Luddy', uid: '743795038', name: 'Dan Luddy'},
	{ first_name: 'Renzo', last_name: 'Marna', uid: '535124702', name: 'Renzo Marna'},
	{ first_name: 'Jorge', last_name: 'Mucacos', uid: '100001512125227', name: 'Jorge Mucacos'},
	{ first_name: 'Tom', last_name: 'Maher', uid: '657492581', name: 'Tom Maher'},
	{ first_name: 'Gabbo', last_name: 'Resala', uid: '651321464', name: 'Gabbo Resala'}
])

players = Player.create([
	{ name: 'Adam Fry', is_goalie: false, facebook_id: '517406398'},
	{ name: 'Adam Gardner', is_goalie: false, facebook_id: '1656483378'},
	{ name: 'Allister Manson', is_goalie: true, facebook_id: '758460170'},
	{ name: 'Anthony Schmidt', is_goalie: false, facebook_id: '93400876'},
	{ name: 'Bart Steenbergen', is_goalie: false, facebook_id: '743293734'},
	{ name: 'Bruno Marna', is_goalie: false, facebook_id: '1129354645'},
	{ name: 'Carlos Rompani Zorrilla', is_goalie: false, facebook_id: '500102761'},
	{ name: 'Chelo Resala', is_goalie: false, facebook_id: '775737781'},
	{ name: 'Charlie Poladura', is_goalie: false, facebook_id: '100002148388320'},
	{ name: 'Colin Rogers', is_goalie: false, facebook_id: '1622160721'},
	{ name: 'Daniel Luddy', is_goalie: false, facebook_id: '743795038'},
	{ name: 'David R Cook', is_goalie: false, facebook_id: '501090845'},
	{ name: 'Denis Correa', is_goalie: false, facebook_id: '100003479471799'},
	{ name: 'Didier Flores', is_goalie: false, facebook_id: '100001255253843'},
	{ name: 'Diego Camino', is_goalie: false, facebook_id: '1555830680'},
	{ name: 'Diego Cardozo', is_goalie: false, facebook_id: '100000651187987'},
	{ name: 'Eduardo Rodrigo Ahumada Pamanes', is_goalie: false, facebook_id: '503400077'},
	{ name: 'Enzo Fedato', is_goalie: false, facebook_id: '100002458977921'},
	{ name: 'Enzo Trombotti', is_goalie: false, facebook_id: '100004810773349'},
	{ name: 'Fabian Bolso', is_goalie: false, facebook_id: '100008463432421'},
	{ name: 'Fabian Wagner', is_goalie: false, facebook_id: '564519248'},
	{ name: 'Gabbo Resala', is_goalie: false, facebook_id: '651321464'},
	{ name: 'Gaspard Wallut', is_goalie: false, facebook_id: '726171510'},
	{ name: 'George Slater', is_goalie: false, facebook_id: '36806386'},
	{ name: 'German Boiso', is_goalie: true, facebook_id: '1314132122'},
	{ name: 'Gonzalo Caceres', is_goalie: false, facebook_id: '572417860'},
	{ name: 'Gonzalo García', is_goalie: false, facebook_id: '1289254932'},
	{ name: 'Gonzalo Pivotto', is_goalie: false, facebook_id: '1563260221'},
	{ name: 'Gonzalo Talo Antunes', is_goalie: false, facebook_id: '1151491110'},
	{ name: 'Greg Symons', is_goalie: false, facebook_id: '284200086'},
	{ name: 'Gustavo Castellanos', is_goalie: false, facebook_id: '526000323'},
	{ name: 'Hugo Llanos', is_goalie: false, facebook_id: '1577424399'},
	{ name: 'Jake Eames', is_goalie: false, facebook_id: '516332989'},
	{ name: 'James Potts', is_goalie: false, facebook_id: '511486124'},
	{ name: 'Jean-Baptiste Moriceau', is_goalie: false, facebook_id: '100011071094137'},
	{ name: 'Jean-Charles Joachim', is_goalie: false, facebook_id: '637440979'},
	{ name: 'Jenny Douch', is_goalie: false, facebook_id: '502491169'},
	{ name: 'Jock McGlinchey', is_goalie: false, facebook_id: '687915478'},
	{ name: 'Joshua Anderson', is_goalie: false, facebook_id: '35402076'},
	{ name: 'JT MVD', is_goalie: false, facebook_id: '100010333444844'},
	{ name: 'Juan Ayala', is_goalie: false, facebook_id: '1147836014'},
	{ name: 'Juan Manuel Rocha Cocco', is_goalie: false, facebook_id: '1156003952'},
	{ name: 'Kailum Gardner', is_goalie: false, facebook_id: '100000465683835'},
	{ name: 'Ken Cowley', is_goalie: false, facebook_id: '818075065'},
	{ name: 'Lau T.', is_goalie: false, facebook_id: '311300047'},
	{ name: 'Luis Davyt', is_goalie: false, facebook_id: '1388153035'},
	{ name: 'Luis Piedrabuena', is_goalie: false, facebook_id: '1407384273'},
	{ name: 'Luca Delalla', is_goalie: false, facebook_id: '100002762751426'},
	{ name: 'Marcelo Holanda Santos', is_goalie: false, facebook_id: '100000608537108'},
	{ name: 'Marcus Hayden', is_goalie: false, facebook_id: '508144264'},
	{ name: 'Marcus Sabini', is_goalie: false, facebook_id: '1015860836'},
	{ name: 'Martin Cristaldo', is_goalie: false, facebook_id: '100001670148315'},
	{ name: 'Martin Olivera', is_goalie: false, facebook_id: '100001979124828'},
	{ name: 'Mati Baravran', is_goalie: false, facebook_id: '100003730157192'},
	{ name: 'Matias David Cabrera', is_goalie: false, facebook_id: '100001843708299'},
	{ name: 'Matías Gariazzo', is_goalie: false, facebook_id: '679601358'},
	{ name: 'Matías Rodríguez', is_goalie: false, facebook_id: '100003605445168'},
	{ name: 'Matt Connolly', is_goalie: false, facebook_id: '522271342'},
	{ name: 'Mauricio Cardozo Massa', is_goalie: false, facebook_id: '1137451175'},
	{ name: 'Mauricio Palma Hidalgo', is_goalie: false, facebook_id: '1283483011'},
	{ name: 'Maximiliano de los Santos', is_goalie: false, facebook_id: '100004541290200'},
	{ name: 'Melkior Frapin', is_goalie: false, facebook_id: '1083584525'},
	{ name: 'Miguel Fernandez', is_goalie: false, facebook_id: '100001305060261'},
	{ name: 'Nano FC', is_goalie: false, facebook_id: '100001512125227'},
	{ name: 'Nick Grant', is_goalie: false, facebook_id: '574875567'},
	{ name: 'Nico Michel', is_goalie: false, facebook_id: '1371760486'},
	{ name: 'Nicolás Schmid', is_goalie: false, facebook_id: '100010651302108'},
	{ name: 'Nicolas Villazan', is_goalie: false, facebook_id: '717892590'},
	{ name: 'Osvaldo Leite', is_goalie: false, facebook_id: '1483011469'},
	{ name: 'Pablo Marquez', is_goalie: false, facebook_id: '1456546479'},
	{ name: 'Rafael Meyer Pirone', is_goalie: true, facebook_id: '542111141'},
	{ name: 'Renzo Marna', is_goalie: false, facebook_id: '535124702'},
	{ name: 'Rodrigo Almansa Pagani', is_goalie: false, facebook_id: '1293092966'},
	{ name: 'Russ Levine', is_goalie: false, facebook_id: '571289211'},
	{ name: 'Santiago RosadoVaz', is_goalie: false, facebook_id: '643889419'},
	{ name: 'Sasch Ito', is_goalie: false, facebook_id: '566548027'},
	{ name: 'Sasha Mente', is_goalie: false, facebook_id: '100009421360500'},
	{ name: 'Sebastian Peraza', is_goalie: false, facebook_id: '1371619847'},
	{ name: 'Sebastian Reboredo', is_goalie: false, facebook_id: '509665062'},
	{ name: 'Sebastian Ruh', is_goalie: false, facebook_id: '858840593'},
	{ name: 'Simon Grundy', is_goalie: false, facebook_id: '222303701'},
	{ name: 'Tim Morris', is_goalie: false, facebook_id: '199705227'},
	{ name: 'Tommy Ginge', is_goalie: false, facebook_id: '657492581'},
	{ name: 'Toshi Borgia Altamirano', is_goalie: false, facebook_id: '100003461588083'}
])

ratings = []
#Adam Fry
ratings.concat(generateRatings(players[0].id, nil, 3, 1.5, 2.5, 2.5, 2.5, 3, 2.5))
#Adam Gardner
ratings.concat(generateRatings(players[1].id, nil, 4, 3.5, 3.5, 4, 3.5, 4, 4))
#Allister Manson
ratings.concat(generateRatings(players[2].id, nil, 5, 6, 6, 6, 5, 5, 5))
#Anthony Schmidt
ratings.concat(generateRatings(players[3].id, nil, 2.5, 1.5, 2, 2.5, 1.5, 2, nil))
#Bart Steenbergen
ratings.concat(generateRatings(players[4].id, nil, 3, 3, 3, 3, 3, 3, 3.5))
#Bruno Marna
ratings.concat(generateRatings(players[5].id, nil, 3, 2.5, 3, 3, 3, 4, 3))
#Carlos Rompani Zorrilla
ratings.concat(generateRatings(players[6].id, nil, 3, 3, 3, 4, 3, 4, 4))
#Chelo Resala
ratings.concat(generateRatings(players[7].id, nil, 4, 4, 4.5, 4.5, 4, 4, 4))
#Charlie Poladura
ratings.concat(generateRatings(players[8].id, nil, 2, 1.5, 2, 2, 1.5, 1, 2))
#Colin Rogers
ratings.concat(generateRatings(players[9].id, nil, 3, 3, 4, 4, 3.5, 4, 3.5))
#Daniel Luddy
ratings.concat(generateRatings(players[10].id, nil, 1.5, 1.5, nil, 1.5, 1.5, 1, 1.5))
#Denis Correa
ratings.concat(generateRatings(players[11].id, nil, 3, 2.5, 3, 3, 2.5, 3, 2.5))
#David R Cook
ratings.concat(generateRatings(players[12].id, nil, nil, 4, nil, 5, 3, 5, 5))
#Didier Flores
ratings.concat(generateRatings(players[13].id, nil, 1.5, 2, 2, 2.5, 2, nil, nil))
#Diego Camino
ratings.concat(generateRatings(players[14].id, nil, 7, 7, 7, 7, 7, 7, 7))
#Diego Cardozo
ratings.concat(generateRatings(players[15].id, nil, nil, 4.5, nil, nil, nil, nil, nil))
#Eduardo Rodrigo Ahumada Pamanes
ratings.concat(generateRatings(players[16].id, nil, nil, 3, nil, 5, 4, nil, 4))
#Enzo Fedato
ratings.concat(generateRatings(players[17].id, nil, 1.5, 1, 1, 1.5, 1.5, 1, 2))
#Enzo Trombotti
ratings.concat(generateRatings(players[18].id, nil, 1.5, 1.5, 1, 2, 1.5, 2, 2))
#Fabian Bolso
ratings.concat(generateRatings(players[19].id, nil, 2.5, 2, 2.5, 2.5, 2, 3, 3))
#Fabian Wagner
ratings.concat(generateRatings(players[20].id, nil, 5, 5, 5, 5, 5, 5, 5))
#Gabbo Resala
ratings.concat(generateRatings(players[21].id, nil, 3, 3, 3, 3, 3, 3, nil))
#Gaspard Wallut
ratings.concat(generateRatings(players[22].id, nil, 3.5, 3, 3.5, 3, 3, 3, 3))
#George Slater
ratings.concat(generateRatings(players[23].id, nil, 3, 2, 2.5, 2.5, 2.5, 2, 2.5))
#German Boiso
ratings.concat(generateRatings(players[24].id, nil, 5, 5.5, 6, 6, 5, 7, 6))
#Gonchi Caceres
ratings.concat(generateRatings(players[25].id, nil, nil, 4.5, 5, nil, 3.5, nil, 5))
#Gonzalo Garcia
ratings.concat(generateRatings(players[26].id, nil, 4, 4, 4, 4, 4, 4, 5))
#Gonzalo Pivotto
ratings.concat(generateRatings(players[27].id, nil, 2.5, 2, 2.5, 2, 2.5, 3, 3.5))
#Gonzalo Talo Antunes
ratings.concat(generateRatings(players[28].id, nil, 2.5, 2.5, nil, 2, 2.5, 2, 2))
#Greg Symons
ratings.concat(generateRatings(players[29].id, nil, nil, 1.5, 1.5, 2, 1.5, 1.5, 2))
#Gustavo Castellanos
ratings.concat(generateRatings(players[30].id, nil, 3.5, 3, 3.5, 4, 3, nil, 4))
#Hugo Llanos
ratings.concat(generateRatings(players[31].id, nil, 2, 2.5, 2, 2, 2, 2, 2.5))
#Jake Eames
ratings.concat(generateRatings(players[32].id, nil, 2.5, 2, 2.5, 2, 2.5, 2, 2.5))
#James Potts
ratings.concat(generateRatings(players[33].id, nil, 6, 5.5, 6, 6, 5.5, 6, 5.5))
#Jean-Baptiste Moriceau
ratings.concat(generateRatings(players[34].id, nil, nil, 4, 4, 4, 4, 4, 4))
#Jean-Charles Joachim
ratings.concat(generateRatings(players[35].id, nil, 3, 3.5, 3.5, 3, 3.5, 3, 3.5))
#Jenny Douch
ratings.concat(generateRatings(players[36].id, nil, 4, 5, 4.5, 4.5, 4.5, 4, 4.5))
#Jock McGlinchey
ratings.concat(generateRatings(players[37].id, nil, 3, 2.5, 3, 3, 3, nil, 3.5))
#Joshua Anderson
ratings.concat(generateRatings(players[38].id, nil, 3.5, 3.5, 3.5, 3, 3, 2.5, 3.5))
#JT MVD
ratings.concat(generateRatings(players[39].id, nil, 5, 5.5, 5.5, 6, 5.5, 6, nil))
#Juan Ayala
ratings.concat(generateRatings(players[40].id, nil, 2.5, 3.5, 2.5, 2.5, 2.5, 4, 3.5))
#Juan Manuel Rocha Cocco
ratings.concat(generateRatings(players[41].id, nil, 4, 3, 4, 3.5, 3.5, 3, 4))
#Kailum Gardner
ratings.concat(generateRatings(players[42].id, nil, 4, 4, 4, 4, 3.5, 4, 3.5))
#Ken Cowley
ratings.concat(generateRatings(players[43].id, nil, 1.5, 1.5, 1.5, 1.5, 2, 2, 2))
#Lau T
ratings.concat(generateRatings(players[44].id, nil, 5, 4.5, 5, 5, 4.5, 5, 4.5))
#Luis Davyt
ratings.concat(generateRatings(players[45].id, nil, 2.5, 2.5, 2.5, 2.5, 2, nil, 3))
#Luis Piedrabuena
ratings.concat(generateRatings(players[46].id, nil, 2, 1.5, nil, nil, 1.5, 1.5, nil))
#Luca Delalla
ratings.concat(generateRatings(players[47].id, nil, 3, nil, nil, nil, nil, nil, 2))
#Marcelo Holanda Santos
ratings.concat(generateRatings(players[48].id, nil, 4, 4, 4, 5, 4, 4, 5))
#Marcus Hayden
ratings.concat(generateRatings(players[49].id, nil, 3, 3.5, 4, 3, 3, 3, 3.5))
#Marcus Sabini
ratings.concat(generateRatings(players[50].id, nil, 4.5, 4, 4, 4.5, 3.5, 4, 3.5))
#Martin Cristaldo
ratings.concat(generateRatings(players[51].id, nil, 1.5, 1.5, 1.5, 1.5, 1.5, 1, 2))
#Martin Olivera
ratings.concat(generateRatings(players[52].id, nil, 3.5, 3, 3.5, 3.5, 3.5, 3, 4))
#Matias Baravrian
ratings.concat(generateRatings(players[53].id, nil, 1.5, 1.5, 1.5, nil, 1.5, nil, nil))
#Matias David Cabrera
ratings.concat(generateRatings(players[54].id, nil, 3, 3, 3, 3, 3.5, 2.5, nil))
#Matias Gariazzo
ratings.concat(generateRatings(players[55].id, nil, 4, 3.5, 4, 4.5, 4, 4, 4.5))
#Matias Rodriguez
ratings.concat(generateRatings(players[56].id, nil, 2, 1.5, 1.5, 2, 1.5, 1.5, 1.5))
#Matt Connolly
ratings.concat(generateRatings(players[57].id, nil, 3.5, 3, 4, 4, 3.5, 4, 3.5))
#Mauricio Cardozo Massa
ratings.concat(generateRatings(players[58].id, nil, 5, 4, 4, 4, 4, 5, 5))
#Mauricio Palma Hidalgo
ratings.concat(generateRatings(players[59].id, nil, 2, 2, 1.5, 2.5, 2.5, nil, nil))
#Maxi De Los Santos
ratings.concat(generateRatings(players[60].id, nil, 3, 3, 3, 3, 2.5, 3.5, 3.5))
#Melkior Frapin
ratings.concat(generateRatings(players[61].id, nil, 2, 2, 2.5, 2.5, 2.5, 3, 2.5))
#Miguel Fernandez
ratings.concat(generateRatings(players[62].id, nil, nil, 4, nil, 4.5, 4.5, nil, nil))
#Nano FC
ratings.concat(generateRatings(players[63].id, nil, 1.5, 2, 1.5, 1.5, nil, 1, 1.5))
#Nick Grant
ratings.concat(generateRatings(players[64].id, nil, 3, nil, 3.5, 3, 3, 3, 3))
#Nico Michel
ratings.concat(generateRatings(players[65].id, nil, nil, 2, nil, nil, nil, 3, nil))
#Nicolas Schmid
ratings.concat(generateRatings(players[66].id, nil, nil, 2.5, nil, 2.5, 2.5, nil, nil))
#Nicolas Villazan
ratings.concat(generateRatings(players[67].id, nil, 1, 1, 1, 1, 1, 1, 1.5))
#Osvaldo Leite
ratings.concat(generateRatings(players[68].id, nil, 4, 4.5, 4, 4, 4, 4, 4.5))
#Pablo Marquez
ratings.concat(generateRatings(players[69].id, nil, 3, 3.5, 3, 4, 3.5, 4, nil))
#Rafael Meyer Pirone
ratings.concat(generateRatings(players[70].id, nil, 4, 4.5, 4.5, 4, 4, 5, 4))
#Renzo Marna
ratings.concat(generateRatings(players[71].id, nil, 2, 1.5, 1.5, nil, 1.5, 1.5, 2))
#Rodrigo Almansa Pagani
ratings.concat(generateRatings(players[72].id, nil, 4, 4.5, 3.5, 3.5, 3.5, 3.5, 4))
#Russ Levine
ratings.concat(generateRatings(players[73].id, nil, 2.5, 3, 3, 2.5, 3, 3, 4))
#Santiago RosadoVaz
ratings.concat(generateRatings(players[74].id, nil, 4, 3.5, 4, 3.5, 3.5, 3, 4))
#Sasch Ito
ratings.concat(generateRatings(players[75].id, nil, 4, 4, 4, 4, 4, 4, 4))
#Sasha Mente
ratings.concat(generateRatings(players[76].id, nil, 3, 4, 4, 3.5, 4, 4, 4))
#Sebastian Peraza
ratings.concat(generateRatings(players[77].id, nil, 3.5, 3.5, 3.5, 3.5, 3.5, nil, nil))
#Sebastian Reboredo
ratings.concat(generateRatings(players[78].id, nil, 3.5, 3.5, 3, 3.5, 3.5, nil, nil))
#Sebastian Ruh
ratings.concat(generateRatings(players[79].id, nil, 4, 4, 4, 4, 4, nil, nil))
#Simon Grundy
ratings.concat(generateRatings(players[80].id, nil, 3, 3, 4, 3.5, 4, 3, 3.5))
#Tim Morris
ratings.concat(generateRatings(players[81].id, nil, 3.5, 3, 4, 3.5, 3, 3, 3.5))
#Tommy Ginge
ratings.concat(generateRatings(players[82].id, nil, 3, 4, 4, 3, 3.5, nil, 3.5))
#Toshi Borgia Altamirano
ratings.concat(generateRatings(players[83].id, nil, 1.5, 1, 1, 1.5, 1.5, 1, 1.5))

Rating.create(ratings)


#Rating.create(
#	objs
#)