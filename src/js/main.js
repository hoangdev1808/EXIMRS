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
		$('.icon > #desktop').appendTo('nav .nav-mobile');
	} else {
		$('.icon > #desktop').appendTo('.main-nav>.nav .icon');
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
document.addEventListener('DOMContentLoaded', () => {
	fullpage();
	toggleMenuMobile();
	moveNavitem();
	EXIMMainBanner();
	checkLayoutBanner();
	checkFooter();
});