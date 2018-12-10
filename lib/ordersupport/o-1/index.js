const mapOrderSupportSideMenuTo = (windowMedia) => {
	let orderSupportSideMenuWrapper = document.getElementById('orderSupportSideMenuWrapper');
	let mapToId = orderSupportSideMenuWrapper.getAttribute('nth-map-to')
	if (windowMedia.matches) {
		let orderSupportSideMenu = orderSupportSideMenuWrapper.innerHTML;
		document.getElementById(mapToId).innerHTML = orderSupportSideMenu
	} else {
		document.getElementById(mapToId).innerHTML = null
	}
}

try {
	const windowMedia = window.matchMedia("(min-width: 992px)");
	mapOrderSupportSideMenuTo(windowMedia);
	windowMedia.addListener(mapOrderSupportSideMenuTo);

} catch (error) {

}
