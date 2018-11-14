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
	doMapTo()

	if ($(window).scrollTop() >= 1) {
		$(".canhcam-header-1").addClass('header-fixed');
		setHeader($(window).scrollTop());
	}
	SliderHome();
	$('.canhcam-home-2 .part-list').owlCarousel({
		items: 1,
		nav: true,
		dots: false,
		navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
		responsive: {
			768: {
				items: 2,
				margin: 30
			}
		}
	})
});

$($(window)).scroll(function () {
	setHeader($(window).scrollTop());
});

$(window).resize(function () {
	doMapTo()
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

const doMapBack = function () {
	$("[map-to]").each(function () {
		var n = $(this).attr("map-to");
		$(n).html("")
		$(this).show()
	})
}

function setHeader(elm) {
	if (elm >= 1) {
		$("header").addClass('header-fixed');
	} else {
		$("header").removeClass('header-fixed');
	}
}

// Slider banner home
function SliderHome() {
	var interleaveOffset = 0.5;

	var swiperOptions = {
		loop: true,
		speed: 1000,
		grabCursor: true,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		pagination: {
			el: '.canhcam-banner-1 .swiper-pagination'
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: ".canhcam-banner-1 .swiper-button-next",
			prevEl: ".canhcam-banner-1 .swiper-button-prev"
		},
		on: {
			progress: function () {
				var swiper = this;
				for (var i = 0; i < swiper.slides.length; i++) {
					var slideProgress = swiper.slides[i].progress;
					var innerOffset = swiper.width * interleaveOffset;
					var innerTranslate = slideProgress * innerOffset;
					swiper.slides[i].querySelector(".slide-inner").style.transform =
						"translate3d(" + innerTranslate + "px, 0, 0)";
				}
			},
			touchStart: function () {
				var swiper = this;
				for (var i = 0; i < swiper.slides.length; i++) {
					swiper.slides[i].style.transition = "";
				}
			},
			setTransition: function (speed) {
				var swiper = this;
				for (var i = 0; i < swiper.slides.length; i++) {
					swiper.slides[i].style.transition = speed + "ms";
					swiper.slides[i].querySelector(".slide-inner").style.transition =
						speed + "ms";
				}
			}
		}
	};

	var swiper = new Swiper(".canhcam-banner-1 .swiper-container", swiperOptions);
}