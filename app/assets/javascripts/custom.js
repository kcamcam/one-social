/* Edit/Add new social media page js */
function socialfn(platform,anchor){
	var socialradio = document.getElementById('social-radio');
	socialradio.name = 'social_medium['+platform+']';

	// change the placeholder of the input field on click
	if (anchor != "")
		socialradio.value = anchor+"";
	else if (platform == "website"){
		socialradio.value = "";
		socialradio.placeholder = "Enter a new website (include the http://)";
	}else if (platform == "medium"){
		socialradio.value = "";
		socialradio.placeholder = "Enter a new medium username (include the @)";
	}else if (platform == "email"){
		socialradio.value = "";
		socialradio.placeholder = "Enter a new email";
	}else{
		socialradio.value = "";
		socialradio.placeholder = "Enter a new "+platform+" username";
	}

	// Change the anchor type to @ or / depending on platform
	if(platform == "youtube" || platform == "googleplus" || platform == "linkedin")
		$(".input-group-text").text("/");
	else if (platform == "bitcoin" || platform == "ethereum")
		$(".input-group-text").text("#");
	else
		$(".input-group-text").text("@");
}

/* Show the tooltip */
function showtooltip(size) {
	var tooltip = document.getElementById("tooltiptext-"+size+"");
	tooltip.style.visibility = "visible";
	setTimeout(function(){ tooltip.style.visibility = 'hidden'}, 1750);
}
