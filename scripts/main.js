$(document).ready(function () {
	createNewsSocial1()
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
	doMapTo_pc()
	//Trigger Filter mobile
	triggerFilter()
	// Toggle dropdown
	$('.hassub .sub-title').click(function (e) {
		$(this).toggleClass('active')
		$(this).next().toggleClass('active')
	});

	SliderHome()
	
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

	// Owl Carousel Partner
	$('.canhcam-home-4 .homes-list .list-partners').owlCarousel({
		items: 2,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 3000,
		navText: ['<span class="lnr lnr-chevron-left"></span>', '<span class="lnr lnr-chevron-right"></span>'],
		responsive: {
			768: {
				items: 3
			},
			992: {
				items: 6
			}
		}
	})
	// Owl Carousel Home 5
	$('.canhcam-home-5 .homes-list .products-list').owlCarousel({
		items: 1,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 3000,
		margin: 34,
		navText: ['<span class="lnr lnr-chevron-left"></span>', '<span class="lnr lnr-chevron-right"></span>'],
		responsive: {
			768: {
				items: 3
			},
			992: {
				items: 4,
				stagePadding: 5
			}
		}
	})
	$('.canhcam-home-6 .homes-list .list-promos').owlCarousel({
		items: 1,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 3000,
		margin: 30,
		navText: ['<span class="lnr lnr-chevron-left"></span>', '<span class="lnr lnr-chevron-right"></span>'],
		responsive: {
			768: {
				items: 3
			},
			992: {
				items: 4,
			}
		}
	})

	$('.smx-product-detail-2 .products-list').owlCarousel({
		items: 1,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 3000,
		margin: 34,
		navText: ['<span class="lnr lnr-chevron-left"></span>', '<span class="lnr lnr-chevron-right"></span>'],
		responsive: {
			768: {
				items: 3
			},
			992: {
				items: 4,
				stagePadding: 5
			}
		}
	})


	$('.canhcam-banner-1 .banners-list').owlCarousel({
		items: 1,
		mouseDrag: false,
		touchDrag: false,
		dots: false,
		nav: false,

	})


	$('.smx-product-detail-1 .big-thumbnail').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		asNavFor: '.smx-product-detail-1 .small-thumbnail',
		infinite: false
	});

	$('.smx-product-detail-1 .small-thumbnail').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.smx-product-detail-1 .big-thumbnail',
		dots: true,
		focusOnSelect: true,
		infinite: false,
		prevArrow: '<i class="fas fa-chevron-left"></i>',
		nextArrow: '<i class="fas fa-chevron-right"></i>',
		responsive: [
			{
				breakpoint: 576,
				settings: {
					slidesToShow: 2,

				},
				breakpoint: 768,
				settings: {
					slidesToShow: 3,
				}
			}
		]
	});

	// Remove active class from all thumbnail slides
	$('.smx-product-detail-1 .small-thumbnail .slick-slide').removeClass('slick-active');

	// Set active class to first thumbnail slides
	$('.smx-product-detail-1 .small-thumbnail .slick-slide').eq(0).addClass('slick-active');

	// On before slide change match active thumbnail to current slide
	$('.smx-product-detail-1 .big-thumbnail').on('beforeChange', function (event, slick, currentSlide, nextSlide) {
		var mySlideNumber = nextSlide;
		$('.smx-product-detail-1 .small-thumbnail .slick-slide').removeClass('slick-active');
		$('.smx-product-detail-1 .small-thumbnail .slick-slide').eq(mySlideNumber).addClass('slick-active');
	});

	$(window).scroll(function () {

	});

}); // End document ready
$(function () {
	$('.product__item figcaption').matchHeight();
});

// End document ready
$(window).resize(function () {
	$('.hassub .sub-title').click(function (e) {
		$(this).toggleClass('active')
		$(this).next().toggleClass('active')
	});
	doMapTo()
	triggerFilter()
	doMapTo_pc()
});
// End window resize

$(function () {
	$('.product__item figcaption').matchHeight();
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
const doMapTo_pc = function () {
	if (window.matchMedia('(max-width: 768px)').matches) {
		$("[map-to-pc]").each(function () {
			var n = $(this).attr("map-to-pc");
			$(n).html($(this).clone().removeAttr("map-to-pc").show());
			$(this).hide();
		})
	} else {
		doMapBack_pc()
	}
}
const triggerFilter = function () {
	if (window.matchMedia('(max-width: 768px)').matches) {
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
const doMapBack_pc = function () {
	$("[map-to-pc]").each(function () {
		var n = $(this).attr("map-top-pc");
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


function createNewsSocial1() {
	var newsFullPath = document.URL
	var newsFullPathEncode = encodeURIComponent(document.URL)
	$('.fb-share-button').attr('data-href', newsFullPath)
	$('.fb-share-button .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse')
	$('.twitter-share-button').attr('data-url', newsFullPath)
}
