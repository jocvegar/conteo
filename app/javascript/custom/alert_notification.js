const dismissAlert = () => {
	var fadeTarget = document.getElementById("flash-wrapper");

	if(fadeTarget) {
		setTimeout(function(){
			fadeTarget.parentNode.removeChild(fadeTarget);
		}, 1500);
	}
}

document.addEventListener("turbolinks:load", function () {
	dismissAlert();
});

// export default dismissAlert;
