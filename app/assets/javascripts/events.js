function generateTeams(){
	
	var numTeams = jQuery('#num-teams').text();
	var maxDifference = jQuery('#max-rating input').val() || 0;
	var ensureGoalies = jQuery('#ensure_goalies').is(':checked');
	var players = new Array();
	var teams = new Array();
	var goalies = 0;

	jQuery('.player-going-table tr:not(:eq(0))').each(function(){

		var $player = $(this).children();

		var player = new Object();
		player.name = $player.eq(0).text();
		player.rating = $player.eq(1).text();
		player.is_goalie = $player.eq(2).text().trim().length > 0;
		if(player.is_goalie) goalies++;
		players.push(player);
	});

	var breakLoop = false;
	var teamSize = players.length / numTeams;
	var maxTries = 100000;
	var index = 0;

	if(ensureGoalies && goalies < numTeams){

		var html = '<div class="alert alert-danger role="alert">';
		html += '<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>';
		html += '&nbsp;Could not ensure one goalie per side as there are not enough goalies playing.';
		jQuery('.alertContainer').html(html);
		ensureGoalies = false;
	}

	while(!breakLoop){

		shuffle(players);
		var teamRatings = new Array();
		var teamPlayers = new Array();

		for(var i = 0; i < numTeams; i++){

			var sum = 0;
			teamPlayers[i] = new Array();

			for(var j = teamSize * i; j < teamSize * (i + 1); j++){

				sum += parseFloat(players[j].rating);
				teamPlayers[i].push(players[j]);
			}

			teamRatings.push(sum);
		}

		if(teamRatings.allValuesSame(maxDifference) === true){

			if(!ensureGoalies || goalieCheck(teamPlayers)){

				breakLoop = true;
				console.log('it took '+index+' tries.');
				console.log('found!'+ JSON.stringify(teamPlayers));
				console.log('team ratings: '+teamRatings);

				var html = '';

				for(var i = 0; i < teamPlayers.length; i++){

					html += '<div class="list-group">';

					html += '<span class="list-group-item active">'+generateRandomName()+'</span>';

					for(var j = 0; j < teamPlayers[i].length; j++){

						html += '<span class="list-group-item">'+teamPlayers[i][j].name+'</span>';
					}

					html += '</div>';
				}

				jQuery('#teams').html(html);
			}
			
		}else{

			index++;

			if(index === maxTries){
				alert('Could not find a suitable team selection.  Try increasing the maximum rating difference.')
				breakLoop = true;
			}
		}		
	}
}

Array.prototype.allValuesSame = function(maxDifference) {

    for(var i = 0; i < this.length; i++)
    {
    	for(var k = 0; k < this.length; k++){
	        if(this[i] - this[k] > maxDifference || this[i] - this[k] < (maxDifference * -1))
	            return false;
	    }
    }

    return true;
}

function shuffle(array) {
  var currentIndex = array.length, temporaryValue, randomIndex;

  // While there remain elements to shuffle...
  while (0 !== currentIndex) {

    // Pick a remaining element...
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    // And swap it with the current element.
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}

function goalieCheck(teamPlayers){
	
	for(var i = 0; i < teamPlayers.length; i++){

		var hasGoalie = false;

		for(var j = 0; j < teamPlayers[i].length; j++){

			 if(teamPlayers[i][j].is_goalie){

			 	hasGoalie = true;
			 }
		}

		if(!hasGoalie) return false;f
	}

	return true;
}

function generateRandomName(){
	
	return 'The '+adjectives[Math.floor(Math.random()* adjectives.length)] + ' ' +noun1[Math.floor(Math.random()* noun1.length)] + ' '+ noun2[Math.floor(Math.random()* noun2.length)] + ' ' +
	noun3[Math.floor(Math.random()* noun3.length)] + 's';
}

var adjectives = ["tossing", "bloody", "shitting", "wanking", "stinky", "raging", "dementing", "dumb", "dipping", "fucking", "instant",
        "dipping", "holy", "maiming", "cocking", "ranting", "twunting", "hairy", "spunking", "flipping", "slapping",
        "sodding", "blooming", "frigging", "sponglicking", "guzzling", "glistering", "cock wielding", "failed", "artist formally known as", "unborn",
        "pulsating", "naked", "throbbing", "lonely", "failed", "stale", "spastic", "senile", "strangely shaped", "virgin",
        "bottled", "twin-headed", "fat", "gigantic", "sticky", "prodigal", "bald", "bearded", "horse-loving", "spotty",
        "spitting", "dandy", "fritzl-admiring", "friend of a", "indeterminable", "overrated", "fingerlicking", "diaper-wearing", "leg-humping",
        "gold-digging", "mong loving", "trout-faced", "cunt rotting", "flip-flopping", "rotting", "inbred", "badly drawn", "undead", "annoying",
        "whoring", "leaking", "dripping", "racist", "slutty", "cross-eyed", "irrelevant", "mental", "rotating", "scurvy looking",
        "rambling", "gag sacking", "cunting", "wrinkled old", "dried out", "sodding", "funky", "silly", "unhuman", "bloated",
        "wanktastic", "bum-banging", "cockmunching", "animal-fondling", "stillborn", "scruffy-looking", "hard-rubbing", "rectal", "glorious", "eye-less",
        "constipated", "bastardized", "utter", "hitler's personal", "irredeemable", "complete", "enormous", "probing", "dangling",
        "go suck a", "fuckfaced", "broadfaced", "titless", "son of a", "demonizing", "pigfaced", "treacherous", "retarded", "twittering",
        "one-balled", "dickless", "long-titted", "unimaginable"];

var noun1 = [ "cock", "tit", "cunt", "wank", "piss", "crap", "shit", "arse", "sperm", "nipple", "anus",
        "colon", "shaft", "dick", "poop", "semen", "slut", "suck", "earwax", "fart",
        "scrotum", "cock-tip", "tea-bag", "jizz", "cockstorm", "bunghole", "food trough", "bum",
        "butt", "shitface", "ass", "nut", "ginger", "llama", "tramp", "fudge", "vomit", "cum", "lard",
        "puke", "sphincter", "nerf", "turd", "cocksplurt", "cockthistle", "dickwhistle", "gloryhole",
        "gaylord", "spazz", "nutsack", "fuck", "spunk", "shitshark", "shitehawk", "fuckwit",
        "dipstick", "asswad", "chesticle", "clusterfuck", "douchewaffle", "retard", "bukkake"];

var noun2 = [ "force", "bottom", "hole", "goatse", "testicle", "balls", "bucket", "biscuit", "stain", "boy",
        "flaps", "erection", "mange", "twat", "twunt", "mong", "spack", "diarrhea", "sod",
        "excrement", "faggot", "pirate", "wipe", "sock", "sack", "barrel", "head", "zombie", "alien",
        "minge", "candle", "torch", "pipe", "bint", "jockey", "udder", "pig", "dog", "cockroach",
        "worm", "MILF", "sample", "infidel", "spunk-bubble", "stack", "handle", "badger", "wagon", "bandit",
        "lord", "bogle", "bollock", "tranny", "knob", "nugget", "king", "hole", "kid", "trailer", "lorry", "whale",
        "rag", "foot", "pile", "waffle", "bait"];

 var noun3 = [ "licker", "raper", "lover", "shiner", "blender", "fucker", "jacker", "butler", "packer", "rider",
        "wanker", "sucker", "felcher", "wiper", "experiment", "bender", "dictator", "basher", "piper", "slapper",
        "fondler", "plonker", "bastard", "handler", "herder", "fan", "amputee", "extractor", "professor", "graduate",
        "voyeur"];
