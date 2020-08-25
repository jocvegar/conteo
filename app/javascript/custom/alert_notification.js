const dismissAlert = () => {
	var fadeTarget = document.getElementById("flash-wrapper");

	if(fadeTarget) {
		setTimeout(function(){
			fadeTarget.parentNode.removeChild(fadeTarget);
		}, 1500);
	}
}

// export default dismissAlert;
document.addEventListener('turbolinks:load', () => {
  dismissAlert();
})
