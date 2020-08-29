function fullpage() {
	if ($(window).width() > 1024) {
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
			},
			afterLoad: function(anchorLink, index) {
				if (index == 1) {
					$('header').removeClass('active');
				}
			},
			afterRender: function() {
			},
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
	const breadcrumb = $('.global-breadcrumb');
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#home-banner");

	if (mainBanner.length < 1) {
		pagesBanner.css('padding-top', heightHeader);
	} else {
		mainBanner.css('padding-top', heightHeader);
	}
};

function checkFooter(){
	if($('#pagepiling').length == 1){
		$('footer').css('display', 'none')
	}
}

function listSlide(){
	var slidefiled = new Swiper('.h-3__slide .slide-filed', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
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
				spaceBetween: 0,
			}
		},
	});
}


document.addEventListener('DOMContentLoaded', () => {
	fullpage();
	toggleMenuMobile();
	moveNavitem();
	EXIMMainBanner();
	checkLayoutBanner();
	checkFooter();
	listSlide();
	$(window).resize(function(){
		if ($(window).width() <= 1024){
			moveNavitem();
		}
	})
});