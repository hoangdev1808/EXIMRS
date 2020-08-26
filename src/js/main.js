function fullpage() {
	if ($(window).width() >= 1024) {
		$('#pagepiling').pagepiling({
			menu: null,
			direction: 'vertical',
			verticalCentered: true,
			sectionsColor: [],
			anchors: [],
			scrollingSpeed: 900,
			easing: 'swing',
			loopBottom: true,
			loopTop: true,
			css3: true,
			// navigation: {
			// 	'textColor': '#000',
			// 	'bulletsColor': '#000',
			// 	'position': 'right',
			// 	'tooltips': ['section1', 'section2', 'section3', 'section4']
			// },
			normalScrollElements: null,
			normalScrollElementTouchThreshold: 5,
			touchSensitivity: 5,
			keyboardScrolling: true,
			sectionSelector: '.section',
			animateAnchor: true,

			//events
			onLeave: function(index, nextIndex, direction) {},
			afterLoad: function(anchorLink, index) {},
			afterRender: function() {},
		});
	}
}
const toggleMenuMobile = () => {
	$(".toggle-menu").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".main-nav").toggleClass("active");
		$("body").toggleClass("disabled");
	});
}

function moveNavitem() {
	if ($(window).width() <= 1024) {
		$('.icon > #desktop').appendTo('nav .nav-mobile');
	} else {
		$('.icon > #desktop').appendTo('.main-nav>.nav .icon');
	}
}

//Slide banner
function EXIMMainBanner() {
	var swiperhomebanner = new Swiper('.Cr-banner__slide', {
		loop: true,
		speed: 1000,
		grabCursor: true,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
		navigation: {
			nextEl: ".Cr-banner__slide .swiper-button-next",
			prevEl: ".Cr-banner__slide .swiper-button-prev"
		}

	});
}
//Check banner
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const breadcrumb = $('.global-breadcrumb');
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#home-banner");

	if (mainBanner.length < 1) {
		pagesBanner.css('padding-top', heightHeader);
	} else {
		mainBanner.css('padding-top', heightHeader);
	}
};
document.addEventListener('DOMContentLoaded', () => {
	fullpage();
	toggleMenuMobile();
	moveNavitem();
	EXIMMainBanner();
	checkLayoutBanner();
});