<<<<<<< Updated upstream
function fullpage() {
	if (($(window).width() > 1280) && ('#pagepiling'.length >= 1)) {
		$('#pagepiling').pagepiling({
			menu: null,
			direction: 'vertical',
			verticalCentered: true,
			sectionsColor: [],
			anchors: [],
			scrollingSpeed: 900,
			easing: 'swing',
			loopBottom: true,
			loopTop: false,
			css3: true,
			normalScrollElements: null,
			normalScrollElementTouchThreshold: 5,
			touchSensitivity: 5,
			keyboardScrolling: true,
			sectionSelector: '.section',
			animateAnchor: true,

			//events
			onLeave: function(index, nextIndex, direction) {
				if (direction == 'down') {
					$('header').addClass('active')
				}
				if(direction == 'down' && nextIndex >= 2){
					AOS.init({
						disable: "mobile",
						duration: 1300,
						offset: 300
					});
				}
			},
			afterLoad: function(anchorLink, index) {
				if (index == 1) {
					$('header').removeClass('active')
				}
				
			},

			afterRender: function() {

			},
		});
	}
	if (('#pagepiling'.length >= 1) && ($(window).width() > 1280)) {
		$('body').css('overflow', 'hidden')
	} else {
		$('body').css('overflow', 'auto')
	}
}
=======
import Loading from './loading'
>>>>>>> Stashed changes
const toggleMenuMobile = () => {
	$(".toggle-menu").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".main-nav").toggleClass("active");
		$("body").toggleClass("disabled");
	});
}

function moveNavitem() {
	if ($(window).width() <= 1024) {
		$('.top-nav > #desktop').appendTo('nav .nav-mobile, .main-nav #mobile');
	} else {
		$('.top-nav > #desktop').appendTo('.main-nav .top-nav');
	}
}

//Slide banner
function EXIMMainBanner() {
	var swiperhomebanner = new Swiper('.home-banner', {
		loop: true,
		speed: 1500,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
	});
}

//Check banner
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#main-banner");

	if (pagesBanner.length >= 1) {
		$('main').css('padding-top', heightHeader);
	} else {
		$('main').css('padding-top', heightHeader);
	}
	if (mainBanner.length >= 1) {
		$('main').css('padding-top', 0);
	}
};

function checkFooter() {
	if ($('.full-page').length == 1) {
		$('footer').css('display', 'none')
	}
}

function listSlide() {
	var slidefiled = new Swiper('.h-3__slide .slide-filed', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.h-3__slide .swiper-button-next',
			prevEl: '.h-3__slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			600: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	});
}

function moveBreadcrum() {
	if ($('.global-breadcrumb').length >= 1) {
		$('main > .global-breadcrumb').appendTo('main #page-banner');
	}
}

function Slidepage() {
	var swiper = new Swiper('.history-slide .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 30,
		speed: 2000,
		loop: true,
		pagination: {
			el: '.history-slide .swiper-pagination',
			clickable: true,
			renderBullet: function(index, className) {
				return '<span class="' + className + '">' + '<h3>' + (index + 2017) + '</h3>' + '</span>';
			},
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			}
		},
	});
	// Slider projectdetail
	var galleryThumbs = new Swiper('.slide .gallery-thumbs', {
		navigation: {
			nextEl: '.slide .swiper-button-next',
			prevEl: '.slide .swiper-button-prev',
		},
		spaceBetween: 10,
		slidesPerView: 5,
		loop: true,
		loopedSlides: 5,
		slideToClickedSlide: true,
		breakpoints: {
			1280: {
				slidesPerView: 5,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
		},
	});
	var galleryTop = new Swiper('.slide .gallery-top', {
		spaceBetween: 30,
		loop: true,
		navigation: {
			nextEl: '.slide .swiper-button-next',
			prevEl: '.slide .swiper-button-prev',
		},
		thumbs: {
			swiper: galleryThumbs,
		},
	});
	galleryTop.params.control = galleryThumbs
	galleryThumbs.params.control = galleryTop

	// Slider tiện ích
	var projectother = new Swiper('.slide .slide-utilities', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.slide .swiper-button-next',
			prevEl: '.slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			}
		},
	});
	var $bottomSlide = null;
	var $bottomSlideContent = null;
	var slideimages = new Swiper(".slider .slider-images", {
		spaceBetween: 0,
		slidesPerView: 2,
		centeredSlides: true,
		roundLengths: true,
		loop: true,
		speed: 2000,
		clickable: true,
		navigation: {
			nextEl: ".slider .swiper-button-next",
			prevEl: ".slider .swiper-button-prev"
		},

	});

	// Slider news other
	var newsother = new Swiper('.slider .news-list', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.slider .swiper-button-next',
			prevEl: '.slider .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	});
}

function toolBout() {
	$('#sidebar-wrapper').find('.tool-ctrl').on('click', function() {
		$('#sidebar-wrapper').find('#sideBar').slideToggle()
	})
}

//Tabs detail
function tabsDescription() {
	$('.tabs > li').on('click', function() {
		var $panel = $(this).closest('.tab-panels');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').fadeOut(300, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).fadeIn(300, function() {
				$(this).addClass('active').fadeIn(300);
			});
		};
	});

}

function scrollSidebar() {
	if ($('#sidebar-wrapper').find('li').click()) {
		$(window).scroll(function() {
			var heightHeader = $('header').outerHeight(),
				scroll = $(window).scrollTop(),
				heightbanner = $('#page-banner').outerHeight();
			if ($('#page-banner').length >= 1) {
				if ((scroll > (heightHeader + heightbanner) - 80)) {
					$('#sidebar-wrapper').addClass('fixed').css('top', heightHeader)
				} else if ($(window).width() > 1199) {
					$('#sidebar-wrapper').removeClass('fixed').css('top', 0)
				} else {
					$('#sidebar-wrapper').removeClass('fixed').css('top', (heightHeader + heightbanner) - 70)
				}
			} else if ((scroll > heightHeader - 80)) {
				$('#sidebar-wrapper').addClass('fixed').css('top', heightHeader)
			} else {
				$('#sidebar-wrapper').removeClass('fixed').css('top', 0)
			}
		})
	}
}


function coutingNumber() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({
			countNum: $this.text() + "<sup>+</sup>"
		}).animate({
			countNum: countTo
		}, {
			duration: 5000,
			easing: 'linear',
			step: function() {
				$this.text(Math.floor(this.countNum));
			},
			complete: function() {
				$this.text(this.countNum) + "<sup>+</sup>";
				//alert('finished');
			}

		});
	});
}

function ListnavCetalogry() {
	if ($(window).width() <= 991.98) {
		$('.project-nav .show-nav').on('click', function() {
			$('.project-nav .list-nav').slideToggle()
		})
	}
}

function FilterNav() {
	$('.project-nav .filter-nav').addClass('active')
	$('.project-nav .list-nav').find('#button-filter').on('click', function() {
		$('.project-nav .filter-nav').slideToggle()
	})
}
<<<<<<< Updated upstream

function changePlaceholder() {
	$('.contact-page .wrap-form .frm-captcha-input input').attr('placeholder', 'Mã hiển thị')
	$('footer .subscribe-form .frm-captcha .frm-captcha-input input').attr('placeholder', 'Mã hiển thị')
	$('footer .subscribe-form .frm-btn input.frm-btn-submit').attr('onclick', 'atag("send", "conversion")')
}

document.addEventListener('DOMContentLoaded', () => {
	toggleMenuMobile();
	moveNavitem();
	EXIMMainBanner();
	checkLayoutBanner();
	checkFooter();
	listSlide();
	moveBreadcrum();
	Slidepage();
	toolBout();
	tabsDescription();
	scrollSidebar();
	coutingNumber();
	ListnavCetalogry();
	FilterNav();
	fullpage();
=======
if ($(document).ready(function () {
	new Vivus("logo", {
		// type: "oneByOne",
		duration: 150,
		start: "autostart",
		forceRender: !1,
		dashGap: 0,
		selfDestroy: !0
	}, function () {
		window.console && ($(".cls-1").css("fill", "#1b75bc"), $(".cls-2").css("fill", "#1b75bc"), $("path").attr("stroke-width", "0"),
			$('.loading-circle-wrapper').delay(1000).queue(function (next) {
				$(this).css({
					"opacity": "0",
					"z-index": "-1"
				});
				next();
			})
		)
	});
}));
document.addEventListener('DOMContentLoaded', (e) => {
		toggleMenuMobile();
		moveNavitem();
		EXIMMainBanner();
		checkLayoutBanner();
		checkFooter();
		listSlide();
		moveBreadcrum();
		Slidepage();
		toolBout();
		tabsDescription();
		scrollSidebar();
		coutingNumber();
		ListnavCetalogry();
		FilterNav();
>>>>>>> Stashed changes
});