function generateRatingCircles(){
	
	var canvas = document.getElementById('rating-placeholder');
  	if (canvas.getContext) {
	    var ctx = canvas.getContext('2d');
	    ctx.beginPath();
	    ctx.arc(75,75,50,0,Math.PI*2,true); // Outer circle
	    ctx.stroke();
	}
}