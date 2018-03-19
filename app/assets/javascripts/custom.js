function socialfn(platform,anchor){
	var socialradio = document.getElementById('social-radio');
	socialradio.name = 'social_medium['+platform+']';
	if (anchor != "")
		socialradio.value = anchor+"";
	else{
		socialradio.value = "";
		socialradio.placeholder = "Enter a new "+platform+" username";
	}
}