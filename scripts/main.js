$(document).ready(function () {
	if ($('.smx-product-2 .filter-group').length > 0) {

		let moveFilter = new MappingListener({
			selector: '.smx-product-2 .filter-group',
			desktopWrapper: '.smx-product-2 .sort-bar',
			desktopMethod: 'prependTo',
			mobileWrapper: '.smx-product-2 .sort-bar',
			mobileMethod: 'prependTo',
			breakpoint: 768,
		}).watch()
	}
	if ($('.smx-product-2 .sort-filter').length > 0) {
		let moveFilter2 = new MappingListener({
			selector: '.smx-product-2 .sort-filter',
			desktopWrapper: '.smx-product-2 .filter-group',
			desktopMethod: 'appendTo',
			mobileWrapper: '.smx-product-2 .filter-group',
			mobileMethod: 'appendTo',
			breakpoint: 768,
		}).watch()
	}
	// Active Side menu page Product

	$('.categories-menu .hassub-menu li.active').parent().addClass('active')
	$('.categories-menu .hassub-menu li.active').parent().siblings('.sub-title').addClass('active')

	$('.categories-menu .hassub-menu-child-2 li.active').parents('.hassub').children('.sub-title, .hassub-menu').addClass('active')

	$('.categories-menu .hassub-menu.active').siblings('.sub-title').addClass('active')
	$('.hassub .sub-title.active').parent().addClass('active')




	//
	createNewsSocial1()
	CheckOut2()
	$('[data-toggle="tooltip"]').tooltip({
		template: '<div class="tooltip" role="tooltip"><div class="tooltip-inner"></div></div>'
	})
	$('#infomem').hide()

	$('.Module-198 .form-check-input').change(function () {
		if (!this.checked)
			//  ^
			$('#infomem').show();
		else
			$('#infomem').hide();
	});
	//Toggle Dropdown Menu on Header
	$('.canhcam-header-1 .dropdown-btn').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .dropdown-list').toggleClass('active')
	});
	$('.Module-235 .nav-link').click(function (e) {
		e.preventDefault();
		$(this).toggleClass('rotate-180')
		$('.Module-235 .dropdown-list').toggleClass('active')
	});
	//Toggle Main Menu on Header
	$('.canhcam-header-1 .toggle-menu').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .main-nav').toggleClass('active')
		$('.canhcam-header-1 .overlay').toggleClass('active')
	});

	//Turn on overlay
	$('.canhcam-header-1 .overlay').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .main-nav').removeClass('active')
		$(this).removeClass('active')
	});
	//Button close menu
	$('.canhcam-header-1 .btn-close').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .main-nav').removeClass('active')
		$('.canhcam-header-1 .overlay').removeClass('active')
	});
	//
	$('.account-menu .account-list li').not(':has(a)').hide()

	//Map to
	doMapTo()
	doMapTo_pc()
	//Trigger Filter mobile
	triggerFilter()
	// Toggle dropdown
	$('.categories-wrapper h2').click(function (e) {
		$(this).toggleClass('active')
		$('.categories-menu').toggleClass('active')
	});

	$('.filter-wrapper h2').click(function (e) {
		$(this).toggleClass('active')
		$('.filter-item .hassub-menu').toggleClass('active')
	});

	$('.categories-menu .mdi-menu-down').click(function (e) {
		$(this).toggleClass('active')
		$(this).siblings('.sub-title').toggleClass('active')
		$(this).next().toggleClass('active')
	});

	$('.filter-wrapper .filter-item li').click(function (e) {
		$(this).toggleClass('active')
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
		items: 2,
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
		items: 2,
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
		items: 2,
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
	$('.canhcam-checkout-1 .product-viewed').owlCarousel({
		items: 2,
		mouseDrag: true,
		touchDrag: true,
		dots: false,
		nav: false,
		margin: 2,
		responsive: {
			576: {
				items: 3,
				margin: 30
			},
			768: {
				items: 4,
				margin: 20
			},
			992: {
				items: 6,
				margin: 20
			},
			1200: {
				items: 7,
				margin: 10
			}
		}
	})

	$('.smx-order-1 .brand-slider').owlCarousel({
		items: 1,
		mouseDrag: true,
		touchDrag: true,
		dots: false,
		nav: true,
		margin: 0,
		responsive: {
			576: {
				items: 2,
				margin: 20
			},
			768: {
				items: 3,
				margin: 20
			},
			992: {
				items: 4,
				margin: 36
			},
			1200: {
				items: 5,
				margin: 36
			}
		}
	})


	$('.smx-product-detail-1 .big-thumbnail').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.smx-product-detail-1 .small-thumbnail',
		infinite: false
	});



	$('.smx-product-detail-1 .small-thumbnail').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.smx-product-detail-1 .big-thumbnail',
		dots: false,
		focusOnSelect: true,
		infinite: false,
		prevArrow: '<i class="fas fa-chevron-left"></i>',
		nextArrow: '<i class="fas fa-chevron-right"></i>',
		responsive: [{
			breakpoint: 576,
			settings: {
				slidesToShow: 2,

			},
			breakpoint: 768,
			settings: {
				slidesToShow: 3,
			}
		}]
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

	CheckOut1()

	$('.mobile-arrow').on('click', function () {
		$(this).toggleClass('rotate-180')
		$(this).find('.mega').slideToggle()
		$(this).siblings('.mobile-arrow').find('.mega').slideUp()
		$(this).siblings('.mobile-arrow').removeClass('rotate-180')
	})
	$('.mega-sub').on('click', function (e) {
		e.stopPropagation();
		$(this).toggleClass('rotate-180')
		$(this).children('ul').slideToggle()
		$('.mega-sub').not(this).removeClass('rotate-180')
		$('.mega-sub').not(this).children('ul').slideUp()
	})
}); // End document ready



$(document).on('click', '.cart-toggle', function () {
	event.preventDefault();
	$('.cart-panel').addClass('open')
	console.log('Menu work')
});
$(document).on('click', '.btn-closecart', function () {
	event.preventDefault();
	$('.cart-panel').removeClass('open')
});
$(function () {
	$('.product__item figcaption').matchHeight();
});

$(window).resize(function () {
	// $('.hassub .sub-title').click(function (e) {
	// 	$(this).toggleClass('active')
	// 	$(this).next().toggleClass('active')
	// });
	doMapTo()
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
			$('.sort-bar').toggle()
		})
		$('.btn-trigger-list').click(function (e) {
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

function CheckOut1() {
	$('.canhcam-checkout-1 #quantity input').TouchSpin({
		min: 0,
		max: 100,
		buttondown_class: "btn btn-default",
		buttonup_class: "btn btn-default"
	});
};

function CheckOut2() {
	$('.smx-product-detail-1 .quanlity-wrapper input').TouchSpin({
		min: 0,
		max: 100
	});
};


const cart = new MappingListener({
	selector: '.shopcart',
	mobileWrapper: ".mobile-cart",
	mobileMethod: "appendTo",
	desktopWrapper: ".desktop-cart",
	desktopMethod: "appendTo",
	breakpoint: 992,
}).watch();

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