// Edit/Add new social media page js
function socialfn(platform,anchor){
	var socialradio = document.getElementById('social-radio');
	socialradio.name = 'social_medium['+platform+']';

	// change the placeholder of the input field on click
	if (anchor != "")
		socialradio.value = anchor+"";
	else{
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
;
