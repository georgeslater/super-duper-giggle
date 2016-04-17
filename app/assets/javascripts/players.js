function generateRatingCircles(){
	
	var colors = ['lightgreen', 'lightblue', 'orange', 'yellow', 'rose'];

	var canvas = document.getElementById('rating-placeholder');
  	if (canvas.getContext) {
  		var radius = 50;
	    var ctx = canvas.getContext('2d');

	    for(var i = 0; i < ratings.length; i++){

	    	var text = ratings[i].rating;
	    	var x = (i * 120)+75;
		    ctx.fillStyle = colors[i];
		    ctx.beginPath();
		    ctx.arc(x,75,radius,0,Math.PI*2,true); // Outer circle
		    ctx.closePath();
		    ctx.fill();
		    ctx.fillStyle = "black"; // font color to write the text with
	  		var font = "bold " + radius +"px Arial";
	  		ctx.font = font;
	  		ctx.textAlign = 'center';
	  		ctx.fillText(text, x, 95);
	  		ctx.lineWidth = 5;
	  		ctx.strokeStyle = 'black';
	  		ctx.stroke();
	  		var smallFont = "12px Arial";
	  		ctx.font = smallFont;
	  		var userText = ratings[i].ratee;
	  		ctx.fillText(userText, x, 140);
		}
	}
}