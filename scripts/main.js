$(document).ready(function () {
	//Toggle Dropdown Menu on Header
	$('.canhcam-header-1 .dropdown-btn').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .dropdown-list').toggleClass('active')
	});
	//Toggle Main Menu on Header
	$('.canhcam-header-1 .toggle-menu').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .main-nav').toggleClass('active')
		$('.canhcam-header-1 .overlay').toggleClass('active')
	});

	$('.canhcam-header-1 .overlay').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .main-nav').removeClass('active')
		$(this).removeClass('active')
	});

	$('.canhcam-header-1 .btn-close').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .main-nav').removeClass('active')
		$('.canhcam-header-1 .overlay').removeClass('active')
	});

	//Map to
	doMapTo()

	// Header fixed
	// $(window).scroll(function () {
	// 	let header = $("header")
	// 	let h = header.outerHeight()
	// 	if ($(window).scrollTop() > h) {
	// 		header.addClass('header-fixed');
	// 	} else {
	// 		header.removeClass('header-fixed');
	// 	}
	// });

	// Hassub trigger
	$('.hassub .sub-title').click(function (e) { 
		$(this).toggleClass('active')
		$(this).next().toggleClass('active')
	});

	// Filter trigger
	triggerFilter()
	
});






$(window).resize(function () {
	doMapTo()
	triggerFilter()
});

const doMapTo = function () {
	if (window.matchMedia('(min-width: 992px)').matches) {
		$("[map-to]").each(function () {
			var n = $(this).attr("map-to");
			$(n).html($(this).clone().removeAttr("map-to").show());
			$(this).hide();
		})
	} else {
		doMapBack()
	}
}
const triggerFilter = function(){
	if (window.matchMedia('(max-width: 992px)').matches) {
		$('.sidemenu').hide()
		$('.btn-trigger-filter').click(function (e) { 
			e.preventDefault();
			$('.sidemenu').toggle()
		})
	} else {
		$('.sidemenu').show()
	}
}
const doMapBack = function () {
	$("[map-to]").each(function () {
		var n = $(this).attr("map-to");
		$(n).html("")
		$(this).show()
	})
}
