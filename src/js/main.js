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
			},
			afterLoad: function(anchorLink, index) {
			},
			afterRender: function() {
			},
		});
	}
	if(('#pagepiling'.length >= 1) && ($(window).width() > 1280)){
		$('body').css('overflow', 'hidden')
	}else{
		$('body').css('overflow', 'auto')
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
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#main-banner");

	if (pagesBanner.length >= 1) {
		$('main').css('padding-top', heightHeader);
	}else{
		$('main').css('padding-top', heightHeader);
	}
	if(mainBanner.length >=1){
		$('main').css('padding-top', 0);
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

function moveBreadcrum(){
	if($('.global-breadcrumb').length >= 1){
		$('main > .global-breadcrumb').appendTo('main #page-banner');
	}
}

function Slidepage(){
	var swiper = new Swiper('.history-slide .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 30,
		speed: 2000,
		loop: true,
		pagination: {
			el: '.history-slide .swiper-pagination',
			clickable: true,
			renderBullet: function (index, className) {
				return '<span class="' + className + '">' +'<h3>' + (index + 2017) +'</h3>' + '</span>';
			},
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
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			}
		},
	});
}

function toolBout(){
	$('#sidebar-wrapper').find('.tool-ctrl').on('click', function(){
		$('#sidebar-wrapper').find('#sideBar').slideToggle()
	})
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
	fullpage();
	toolBout();
	$(window).resize(function(){
		if ($(window).width() <= 1024){
			moveNavitem();
		}
	})
});