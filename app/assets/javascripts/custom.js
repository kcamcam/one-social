/* Edit/Add new social media page js */
function socialfn(platform,anchor){
	var socialradio = document.getElementById('social-radio');
	socialradio.name = 'social_medium['+platform+']';

	// change the placeholder of the input field on click
	if (anchor != "")
		socialradio.value = anchor+"";
	else if (platform == "medium"){
		socialradio.value = "";
		socialradio.placeholder = "Enter a new  medium username (include the @)";
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

/* Copy result to Clipboard */
function copy(username,size) {
  // Create a "hidden" input
  var aux = document.createElement("input");
  // Assign it the value of the specified element
  aux.setAttribute("value", "https://1social.me/"+username);
  // Append it to the body
  document.body.appendChild(aux);
  // Highlight its content
  aux.select();
  // Copy the highlighted text
  document.execCommand("copy");
  // Remove it from the body
  document.body.removeChild(aux);
	//disply the tooltip
	var tooltip = document.getElementById("tooltiptext-"+size+"");
	tooltip.style.visibility = "visible";
	setTimeout(function(){ tooltip.style.visibility = 'hidden'}, 3000);
}
