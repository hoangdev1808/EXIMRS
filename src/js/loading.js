const loaderEl = document.getElementById('loading-container');
document.addEventListener('readystatechange', (event) => {
	const readyState = "complete";
	if(document.readyState == readyState) {
		loaderEl.classList.add('active');
		setTimeout(()=>{
			loaderEl.parentNode.removeChild(loaderEl);
		}, 3000)
	}
});